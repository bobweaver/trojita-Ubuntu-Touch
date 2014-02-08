import QtQuick 2.0
ListModel {
    id: dialogModel
    ListElement {
        name: "No"
        port: 143
    }
    ListElement {
        name: "SSL"
        port: 993
    }
    ListElement {
        name: "StartTLS"
        port: 143
    }
}
