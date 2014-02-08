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
import Ubuntu.Components.ListItems 0.1 as ListItems

Flickable {
    property alias imapServer: imapServerInput.text
    property alias imapPort: imapPortInput.text
    property alias imapUserName: imapUserNameInput.text
    property alias imapPassword: imapPasswordInput.text
    property string imapSslMode: dialogView.model.get(dialogView.currentIndex).name
    property int  imapSslModelIndex: dialogView.currentIndex.toInt

    id: flickable
    anchors.fill: parent
    flickableDirection: Flickable.VerticalFlick

    Column {
        id: col
        spacing: 10
        anchors.fill: parent
        Label {
            text: qsTr("Username")
        }
        TextField {
            id: imapUserNameInput
            anchors {
                left: col.left;
                right: col.right;
            }
            inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhEmailCharactersOnly | Qt.ImhNoPredictiveText
        }

        Label {
            text: qsTr("Password")
        }
        TextField {
            id: imapPasswordInput
            inputMethodHints: Qt.ImhHiddenText | Qt.ImhNoAutoUppercase | Qt.ImhNoPredictiveText
            echoMode: TextInput.Password
            anchors {
                left: parent.left;
                right: parent.right;
            }
        }

        Label {
            text: qsTr("Server address")
        }
        TextField {
            id: imapServerInput
            inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhUrlCharactersOnly | Qt.ImhNoPredictiveText
            anchors {
                left: col.left
                right: col.right
            }
        }

        Button {
            id: encryptionMethodBtn
            anchors {left: col.left; right: col.right;}
            text: qsTr("common ports")
//                dialogView.model.get(dialogView.currentIndex).port + ": " + dialogView.model.get(dialogView.selectedIndex).name
            onClicked: {
                pageStack.push(encryptionMethodPage)
            }
        }
        Label {
            text: qsTr("Port")
        }
        TextField {
            id: imapPortInput
            text: "143"
            inputMethodHints: Qt.ImhDigitsOnly
            validator: IntValidator { bottom: 1; top: 65535 }
            anchors {
                left: col.left
                right: col.right
            }
        }
    }

    Page {
        id: encryptionMethodPage
        title: qsTr("Secure connection")
        visible: false
        ListView {
            id:dialogView
            width: parent.width
            height: parent.height
            model: PortModel{}
            delegate: ListItems.Subtitled{
                id: itmDel
                text: name
                subText: port
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        imapPortInput.text = port
                        console.log(port)
                        pageStack.pop()
                    }
                }
            }
        }
    }
}
