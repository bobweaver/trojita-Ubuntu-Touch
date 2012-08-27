import QtQuick 1.1
import com.nokia.meego 1.0
import com.nokia.extras 1.1
import "Utils.js" as Utils

Page {
    id: root
    property alias model: view.model
    property bool _pendingScroll: false

    signal messageSelected(int uid)

    function scrollToBottom() {
        _pendingScroll = true
    }

    tools: commonTools

    Component {
        id: normalMessageItemDelegate

        Item {
            property variant model

            width: view.width
            height: 120

            Column {
                id: col
                anchors.margins: UiConstants.DefaultMargin
                anchors.fill: parent
                visible: ! (model === undefined || model.subject === undefined || !model.isFetched)
                Label {
                    maximumLineCount: 1
                    elide: Text.ElideRight
                    width: parent.width
                    text: !col.visible ? "" : (model.subject.length ? model.subject : qsTr("(No subject)"))
                    color: !col.visible ? platformStyle.textColor :
                                          model.isMarkedRead ?
                                              (model.isMarkedDeleted ? Qt.darker(platformStyle.textColor) : platformStyle.textColor) :
                                              theme.selectionColor
                    font {
                        pixelSize: UiConstants.TitleFont.pixelSize
                        family: UiConstants.TitleFont.family
                        bold: UiConstants.TitleFont.bold
                        italic: col.visible ? !model.subject.length : false
                    }
                    font.strikeout: !col.visible ? false : model.isMarkedDeleted
                }
                Label {
                    font: UiConstants.SubtitleFont
                    maximumLineCount: 1
                    elide: Text.ElideRight
                    width: parent.width
                    text: !col.visible ? "" : Utils.formatMailAddresses(model.from)
                }
                Label {
                    width: parent.width
                    font: UiConstants.BodyTextFont
                    text: !col.visible ? "" : Utils.formatDate(model.date)
                }
            }
            MouseArea {
                anchors.fill: col
                onClicked: {
                    // Do not try to open messages which are still loading, the viewer code doesn't like that and will assert angrily
                    if (model.isFetched) {
                        messageSelected(model.messageUid)
                    }
                }
            }
            Label {
                id: loadingIndicator
                text: qsTr("Message is loading...")
                visible: !col.visible
                anchors.centerIn: parent
                platformStyle: LabelStyle {
                    fontFamily: "Nokia Pure Text Light"
                    fontPixelSize: 40
                    textColor: "#a0a0a0"
                }
            }
        }
    }

    Component {
        id: scrollingMessageDelegate

        Item {
            width: view.width
            height: 120
            anchors.margins: UiConstants.DefaultMargin
            Label {
                text: qsTr("Scrolling...")
                anchors.centerIn: parent
                platformStyle: LabelStyle {
                    fontFamily: "Nokia Pure Text Light"
                    fontPixelSize: 40
                    textColor: "#a0a0a0"
                }
            }
        }
    }

    Component {
        id: messageItemDelegate

        Loader {
            sourceComponent: view.count > 1000 && (view.massiveScrolling || view.verticalVelocity > 2000) ? scrollingMessageDelegate: normalMessageItemDelegate
            Binding { target: item; property: "model"; value: model; when: status == Loader.Ready }
        }
    }

    Item {
        anchors {left: parent.left; right: parent.right; bottom: parent.bottom; top: header.bottom}

        ListView {
            property bool massiveScrolling

            id: view
            anchors.fill: parent
            delegate: messageItemDelegate
            visible: count > 0

            section.property: "fuzzyDate"
            section.delegate: Item {
                width: parent.width
                height: 40
                Label {
                    id: headerLabel
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 8
                    anchors.bottomMargin: 2
                    text: section
                    font.bold: true
                    font.pixelSize: 18
                    color: theme.inverted ? "#4D4D4D" : "#3C3C3C";
                }
                Image {
                    anchors.right: headerLabel.left
                    anchors.left: parent.left
                    anchors.verticalCenter: headerLabel.verticalCenter
                    anchors.rightMargin: 24
                    source: "image://theme/meegotouch-groupheader" + (theme.inverted ? "-inverted" : "") + "-background"
                }
            }

            onVisibleChanged: {
                if (root._pendingScroll && count > 0) {
                    root._pendingScroll = false
                    positionViewAtEnd()
                }
            }

            onCountChanged: {
                if (count == 0 && model && !model.currentMailbox())
                    appWindow.pageStack.pop()
            }
        }

        Label {
            visible: !view.visible
            anchors.fill: parent
            text: (root.model && root.model.itemsValid) ? qsTr("Empty Mailbox") : qsTr("Invalid Mailbox")
            color: "#606060"
            font {bold: true; pixelSize: 90}
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        ScrollDecorator {
            flickableItem: view
        }

        PercentageSectionScroller {
            listView: view
        }
    }

    PageHeader {
        id: header
        text: mailboxListPage.currentMailbox
        anchors {left: parent.left; right: parent.right; top: parent.top}
    }
}
