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
    title: qsTr("Mail Box")
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
        width: parent.width
        height: parent.height
        delegate: ListItems.Subtitled{
            id: titleText
            text: shortMailboxName
            subText: totalMessageCount + " total, " + unreadMessageCount + " unread"
            onClicked: {
                view.positionViewAtIndex(model.index, ListView.Visible);
                if (mailboxIsSelectable) {
                    currentMailbox = shortMailboxName
                    currentMailboxLong = mailboxName
                    mailboxSelected(mailboxName)
                }
            }
        }
    }
    Scrollbar {
        flickableItem: view
    }
}
