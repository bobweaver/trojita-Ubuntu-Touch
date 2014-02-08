import QtQuick 2.0
ListModel {
    ListElement {
        companyName: "1and1.com"
        incomingImapAddress: "imap.1and1.com"
        outgoingImagAdress:"smtp.1and1.com"
        inPort: 993
        outPort: 465
        ssl: true
    }
    ListElement {
        companyName: "AT&T"
        incomingImapAddress: "imap.mail.att.net"
        outgoingImapAddress: "smtp.mail.att.net"
        inPort: 993
        outPort: 465
        ssl: true
    }
    ListElement {
        companyName: "Airmail.net(Internet America)"
        incomingImapAddress: "imap.airmail.net"
        outgoingImapAddress: "smtp.airmail.net"
        inPort: 143
        outPort: 587
        ssl: true
    }
    ListElement {
        companyName: "AOL (America Online)"
        incomingImapAddress: "imap.aol.com"
        outgoingImapAddress: "smtp.aol.com"
        inPort: 993
        outPort: 587
        ssl: true
    }
    ListElement {
        companyName: "AIM mail"
        incomingImapAddress: "imap.aim.com"
        outgoingImapAddress: "smtp.aim.com"
        inPort: 143
        outPort: 25
        ssl: false
    }
    ListElement {
        companyName: "Centurylink"
        incomingImapAddress: "pop.centurylink.net"
        outgoingImapAddress: "pop.centurylink.net"
        inPort: 993
        outPort: 143
        ssl: false
    }

    ListElement {
        companyName: "Charter"
        incomingImapAddress: "mobile.charter.net"
        outgoingImapAddress: "mobile.charter.net"
        inPort: 993
        outPort: 587
        ssl: true
    }
    ListElement {
        companyName: "Clearwire"
        incomingImapAddress: "imap.gmail.com"
        outgoingImapAddress: "smtp.gmail.com"
        inPort: 993
        outPort: 587
        ssl: true
    }
    ListElement {
        companyName: "CompuServe"
        incomingImapAddress: "imap.cs.com"
        outgoingImapAddress: "smtp.cs.com"
        inPort: 143
        outPort: 25
        ssl: false
    }
    ListElement {
        companyName: "Cox Business"
        incomingImapAddress: "imap.coxmail.com"
        outgoingImapAddress: "smtp.coxmail.com"
        inPort: 993
        outPort: 465
        ssl: true
    }
    ListElement {
        companyName: "Gmail (Google Mail)"
        incomingImapAddress: "imap.gmail.com"
        outgoingImapAddress: "smtp.gmail.com"
        inPort: 993
        outPort: 465
        ssl: true
    }
    ListElement {
        companyName: "US Army"
        incomingImapAddress: "imap.us.army.mil"
        outgoingImapAddress: "mailrouter.us.army.mil"
        inPort: 993
        outPort: 465
        ssl: true
    }
}
