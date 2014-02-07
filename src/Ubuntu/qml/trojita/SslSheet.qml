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
import Qt5NAMWebView 1.0

ComposerSheet {
    property alias htmlText: htmlView.html
    property alias titleText: title.text
   Item {
        id: item
        anchors.fill: parent
        Flickable {
            id: flick
            anchors.fill: parent
            contentWidth: htmlView.width
            contentHeight: htmlView.height + header.height
            Column {
                Item {
                    id: header
                    width: item.width
                    height: icon.height + icon.anchors.topMargin + icon.anchors.bottomMargin
                    Image {
                        id: icon
                        anchors {
                            margins: UiConstants.DefaultMargin
                            left: parent.left
                            verticalCenter: parent.verticalCenter
                        }
                        source: "icon-m-settings-keychain.svg"
                        width: 64
                        height: 64
                    }

                    Label {
                        id: title
                        text: "Blésmrt Trojitá"
                        anchors {
                            margins: UiConstants.DefaultMargin
                            top: parent.top
                            bottom: parent.bottom
                            left: icon.right
                            right: parent.right
                        }
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter

                    }
                }

                QNAMWebView {
                    id: htmlView
                    preferredWidth: item.width
                    width: item.width
                    preferredHeight: item.height
                    settings.userStyleSheetUrl: "data:text/css;charset=utf-8;base64," +
                                                Qt.btoa("* {color: white; background: black; font-size:  12px; font-family: sans-serif;};")
                }
            }
        }

        Scrollbar{
            flickableItem: flick
        }
    }
}
