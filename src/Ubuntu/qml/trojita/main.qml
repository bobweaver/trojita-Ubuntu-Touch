/* Copyright (C) 2006 - 2014 Jan Kundrát <jkt@flaska.net>

   This file is part of the Trojita Qt IMAP e-mail client,
   http://trojita.flaska.net/

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as
   published by the Free Software Foundation; either version 2 of
   the License or (at your option) version 3 or any later version
   accepted by the membership of KDE e.V. (or its successor approved
   by the membership of KDE e.V.), which shall act as a proxy
   defined in Section 14 of version 3 of the license.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.Popups 0.1

MainView{
    id: appWindow
    objectName: "appWindow"
    applicationName: "trojita"
    automaticOrientation: true
    anchorToKeyboard: true
    width: units.gu(40)
    height: units.gu(70)

    property bool networkOffline: true
    property Item fwdOnePage: null
    function showConnectionError(message) {
        pageStack.clear(passwordDialogComponent)
        connectionErrorBanner.text = message
        connectionErrorBanner.parent = pageStack.currentPage
        connectionErrorBanner.show()
        networkOffline = true
    }

//    change me to be correct notifcations via notify-send ?

//    function showImapAlert(message) {
//        alertBanner.text = message
//        alertBanner.parent = pageStack.currentPage
//        alertBanner.show()
//    }

    function requestingPassword() {
        pageStack.push(passwordDialogPage)
    }

    function authAttemptFailed(message) {
        passwordDialog.authErrorMessage = message
    }

    function connectModels() {
        imapAccess.imapModel.connectionError.connect(showConnectionError)
//        imapAccess.imapModel.alertReceived.connect(showImapAlert)
        imapAccess.imapModel.authRequested.connect(requestingPassword)
        imapAccess.imapModel.authAttemptFailed.connect(authAttemptFailed)
        imapAccess.imapModel.networkPolicyOffline.connect(function() {networkOffline = true})
        imapAccess.imapModel.networkPolicyOnline.connect(function() {networkOffline = false})
        imapAccess.imapModel.networkPolicyExpensive.connect(function() {networkOffline = false})
        imapAccess.checkSslPolicy.connect(function() {pageStack.push(sslSheetPage )})
    }

    function showHome() {
        pageStack.push(mailboxList)
        mailboxList.nestingDepth = 0
        mailboxList.currentMailbox = ""
        mailboxList.currentMailboxLong = ""
        if (mailboxList.model)
            mailboxList.model.setOriginalRoot()
    }

    PageStack{
        id:pageStack
        Component.onCompleted: pageStack.push(sslSheetPage)
            MailboxListPage {
                id: mailboxList
                visible: false
                model: imapAccess.mailboxModel ? imapAccess.mailboxModel : null
                onMailboxSelected: {
                    imapAccess.msgListModel.setMailbox(mailbox)
                    messageList.scrollToBottom()
                    pageStack.push(messageListPage)
                }
                // Looks like this gotta be in this file. If moved to the MailboxListPage.qml,
                // QML engine complains about a binding loop.
                // WTF?
                property bool indexValid: mailboxList.model ? mailboxList.model.itemsValid : true
                onIndexValidChanged:{
                    if (indexValid !== true)
                    return appWindow.showHome()
                    }
                }

            MessageListPage {
                id: messageList
                visible: false
                model: imapAccess.msgListModel ? imapAccess.msgListModel : undefined
                onMessageSelected: {
                    imapAccess.openMessage(mailboxList.currentMailboxLong, uid)
                    pageStack.push(Qt.resolvedUrl("OneMessagePage.qml"),
                               {
                                   mailbox: mailboxList.currentMailboxLong,
                                   url: imapAccess.oneMessageModel.mainPartUrl
                               }
                               )
                }
            }

        Page{
            id:serverSettingsPage
            visible: false
            title: qsTr("Server Settings")
            Item{
                id: serverSettings
                anchors.fill: parent
                ImapSettings {
                    id: imapSettings
                    anchors.fill: parent
                    imapSslModelIndex: 0
                }
                Component.onCompleted: {
                    imapSettings.imapServer = imapAccess.server
                    if (imapAccess.port > 0)
                        imapSettings.imapPort = imapAccess.port
                        imapSettings.imapUserName = imapAccess.username
                    // That's right, we do not load the password
                    if (imapAccess.sslMode === "StartTLS")
                        imapSettings.imapSslModeIndex = 2
                    else if (imapAccess.sslMode === "SSL")
                        imapSettings.imapSslModelIndex = 1
                    else
                        imapSettings.imapSslModelIndex = 0
                }
                Button{
                    id: accessButton
                    text: qsTr("OK")
                    anchors{
                        horizontalCenter: parent.horizontalCenter
                        bottom:parent.bottom
                    }
                    onClicked: {
                        if (imapAccess.imapModel) {
                        // prevent assert failure in
                        // ImapAccess::doConnect due to duplicate calls
                       return ;
                        }
                        if (imapSettings.imapServer !== imapAccess.server || imapSettings.imapUserName !== imapAccess.username)
                            imapAccess.nukeCache()
                        if (imapSettings.imapServer != imapAccess.server)
                            imapAccess.forgetSslCertificate()
                        imapAccess.server = imapSettings.imapServer
                        imapAccess.port = imapSettings.imapPort
                        imapAccess.username = imapSettings.imapUserName
                        if (imapSettings.imapPassword.length)
                            imapAccess.password = imapSettings.imapPassword
                        imapAccess.sslMode = imapSettings.imapSslMode
                        imapAccess.doConnect()
                        appWindow.connectModels()
                    }
                }
            }
        }

        Page{
            id:passwordDialogPage
            visible: false
            title: qsTr("Passwords")
            PasswordInputSheet {
                id: passwordDialog
                onConfirmClicked:  imapAccess.imapModel.imapPassword = password
                onCancelClicked:   imapAccess.imapModel.imapPassword = undefined
            }
        }

        Page{
            id: sslSheetPage
            visible: false
            title: imapAccess.sslInfoTitle
            SslSheet {
                id: sslSheet
                htmlText: imapAccess.sslInfoMessage
                onConfirmClicked: imapAccess.setSslPolicy(true)
                onCancelClicked:  imapAccess.setSslPolicy(false)
            }
        }
    }
}
