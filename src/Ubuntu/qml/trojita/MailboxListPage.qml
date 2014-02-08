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

Page {
    id: mailboxPage
    width: parent.width
    height: parent.height
    title: qsTr("MailBox")
    visible:  false
    signal mailboxSelected(string mailbox)
    property int nestingDepth: 0
    property string viewTitle: isNestedSomewhere() ? currentMailbox : imapAccess.server
    property string currentMailbox
    property string currentMailboxLong
    property QtObject model
    function openParentMailbox() {
        moveListViewRight.start()
        model.setRootOneLevelUp()
        --nestingDepth
        currentMailbox = imapAccess.mailboxListShortMailboxName()
        currentMailboxLong = imapAccess.mailboxListMailboxName()

    }

    function isNestedSomewhere() {
        return nestingDepth > 0
    }

        ListView {
            id: view
            model: imapAccess.mailboxModel
            width: appWindow.width
            height: appWindow.height
            delegate: ListItems.Standard{
                id: titleText
                text:{
                        totalMessageCount + " total, "
                     + unreadMessageCount + " unread"
                }
//                    view.count //totalMessageCount === 0 ? "fobar no 0 " : TotalMessageCount
            onClicked: {
                    view.positionViewAtIndex(model.index, ListView.Visible);
                    if (mailboxIsSelectable) {
                        currentMailbox = shortMailboxName
                        currentMailboxLong = mailboxName
                        mailboxSelected(mailboxName)
                    }
            }
            }
//                Item {
//                anchors {
//                    top: parent.top;
//                    bottom: parent.bottom;
//                    left: parent.left;
//                    right: parent.right
////                    right: moreIndicator.visible ? moreIndicator.left : parent.right
//                    leftMargin: 6
//                    rightMargin: 16
//                }
//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        view.positionViewAtIndex(model.index, ListView.Visible);
//                        if (mailboxIsSelectable) {
//                            currentMailbox = shortMailboxName
//                            currentMailboxLong = mailboxName
//                            mailboxSelected(mailboxName)
//                        }
//                    }
//                }
//                Label {
//                    id: titleText
//                    text: shortMailboxName
//                }
//                Label {
//                    id: messageCountsText
//                    anchors.top: titleText.bottom
////                    visible:
////                        mailboxIsSelectable
////                        && totalMessageCount !== undefined
//                    text: totalMessageCount === 0 ?
//                              "No messages" :
//                              (model.totalMessageCount + " total, " + model.unreadMessageCount + " unread")
//                }
//                Label {
//                    anchors.top: titleText.bottom
////                    visible: mailboxIsSelectable && totalMessageCount === undefined
//                    text: qsTr("Loading...")
//                }


//            Rectangle {
//                id: moreIndicator
////                visible: mailboxHasChildMailboxes
//                anchors {
//                    verticalCenter: parent.verticalCenter;
//                    right: parent.right
//                }
//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        view.positionViewAtIndex(model.index, ListView.Visible);
//                        currentMailbox = shortMailboxName
//                        currentMailboxLong = mailboxName
//                        moveListViewLeft.start()
//                        root.model.setRootItemByOffset(model.index)
//                        ++nestingDepth
//                    }
//                }
//            }
//        }
        }
        Scrollbar {
            flickableItem: view
        }
    }
