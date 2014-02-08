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
import "Utils.js" as Utils

Page {
    id: messageListPage
    property alias model: view.model
    property bool _pendingScroll: false
    property bool indexValid: model ? model.itemsValid : true
    title: qsTr("Messages")
    signal messageSelected(int uid)
    function scrollToBottom() {
        _pendingScroll = true
    }
    onIndexValidChanged: if (!indexValid) appWindow.showHome()
    ListView {
        property bool massiveScrolling
        id: view
        model: messageListPage.model
        width: parent.width
        height:  parent.height
        delegate: ListItems.Subtitled{
            text: subject
            subText: Utils.formatMailAddresses(from) + "  " + date
            onClicked:{
                if (model.isFetched) {
                    messageSelected(model.messageUid)
                }
            }
        }
    }
}


//    tools: ToolbarItems{
//             NetworkPolicyButton {}
//         }
//    Component {
//        id: normalMessageItemDelegate

//        Item {
//            property variant model

//            width: view.width
//            height: 120

//            Column {
//                id: col
////                anchors.margins: UiConstants.DefaultMargin
//                anchors.fill: parent
//                visible: ! (model === undefined || model.subject === undefined || !model.isFetched)
//                Text {
//                    maximumLineCount: 1
//                    elide: Text.ElideRight
//                    width: parent.width
//                    text: !col.visible ? "" : (model.subject.length ? model.subject : qsTr("(No subject)"))
//                    color: !col.visible ? Theme.palette.normal.base :
//                                          model.isMarkedRead ?
//                                              (model.isMarkedDeleted ? Qt.darker(Theme.palette.normal.base) : Theme.palette.normal.base) :
//                                            Theme.palette.normal.overlay
//                    font.strikeout: !col.visible ? false : model.isMarkedDeleted
//                }
//                Label {
//                    maximumLineCount: 1
//                    elide: Text.ElideRight
//                    width: parent.width
//                    text: !col.visible ? "" : Utils.formatMailAddresses(model.from)
//                }
//                Label {
//                    width: parent.width
//                    text: !col.visible ? "" : Utils.formatDate(model.date)
//                }
//            }
//            MouseArea {
//                anchors.fill: col
//                onClicked: {
//                    // Do not try to open messages which are still loading, the viewer code doesn't like that and will assert angrily
//                    if (model.isFetched) {
//                        messageSelected(model.messageUid)
//                    }
//                }
//            }
//            Label {
//                id: loadingIndicator
//                text: qsTr("Message is loading...")
//                visible: !col.visible
//                anchors.centerIn: parent
//                fontSize: "x-large"
////                color: "#a0a0a0"
//            }
//        }
//    }

//    Component {
//        id: scrollingMessageDelegate
//ListItems.Standard{
//}
//        Item {
//            width: view.width
//            height: 120
//            anchors.margins: UiConstants.DefaultMargin
//            Label {
//                text: qsTr("Scrolling...")
//                anchors.centerIn: parent
//                    fontSize: "x-large"
//                    color: "#a0a0a0"
//            }
//        }
//    }

//    Component {
//        id: messageItemDelegate
//        Loader {
//            sourceComponent: view.count > 1000 && (view.massiveScrolling || view.verticalVelocity > 2000) ? scrollingMessageDelegate: normalMessageItemDelegate
//            Binding { target: item; property: "model"; value: model; when: status == Loader.Ready }
//        }
//    }

//    Item {
//        anchors {
//            left: parent.left;
//            right: parent.right;
//            b/ottom: parent.bottom;
//            top: parent.top
//        }

//        ListView {
//            property bool massiveScrolling
//            id: view
//            width: parent.width
//            delegate: messageItemDelegate
//            visible: count > 0
//            section.property: "fuzzyDate"
//            section.delegate: Item {
//                width: parent.width
//                height: 40
//                Label {
//                    id: headerLabel
//                    text: section
//                    anchors{
//                        right: parent.right
//                        bottom: parent.bottom
//                        rightMargin: 8
//                        bottomMargin: 2
//                    }
//                }

////                Image {
////                    anchors.right: headerLabel.left
////                    anchors.left: parent.left
////                    anchors.verticalCenter: headerLabel.verticalCenter
////                    anchors.rightMargin: 24
////                    source: "image://theme/meegotouch-groupheader" + (theme.inverted ? "-inverted" : "") + "-background"
////                }
////            }

//            onVisibleChanged: {
//                if (root._pendingScroll && count > 0) {
//                    root._pendingScroll = false
//                    positionViewAtEnd()
//                }
//            }
//        }

//        Label {
//            visible: !view.visible
//            anchors.fill: parent
//            text: (root.model && root.model.itemsValid) ?
//                      qsTr("Empty Mailbox")
//                    :
//                      qsTr("Invalid Mailbox")
//            color: "#606060"
//            wrapMode: Text.WordWrap
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//        }
//        Scrollbar {
//            flickableItem: view
//        }
////        PercentageSectionScroller {
////            listView: view
////        }
//    }
//        }
//}
//}
