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
//        Airmail.net(Internet America)	IMAP	imap.airmail.net 	143	No	smtp.airmail.net	587	Yes
        companyName: "Airmail.net(Internet America)"
        incomingImapAddress: "imap.airmail.net"
        outgoingImapAddress: "smtp.airmail.net"
        inPort: 143
        outPort: 587
        ssl: true
    }
    ListElement {
//        AOL (America Online)	IMAP	imap.aol.com	993	Yes	smtp.aol.com	465	Yes
//            IMAP	imap.aol.com	143	Yes	smtp.aol.com	587	Yes
        companyName: "AOL (America Online)"
        incomingImapAddress: "imap.aol.com"
        outgoingImapAddress: "smtp.aol.com"
        inPort: 993
        outPort: 587
        ssl: true
    }
    ListElement {
//        AIM mail	IMAP	imap.aim.com	143	No	smtp.aim.com	25	No
        companyName: "AIM mail"
        incomingImapAddress: "imap.aim.com"
        outgoingImapAddress: "smtp.aim.com"
        inPort: 143
        outPort: 25
        ssl: false
    }
    ListElement {
//        Centurylink	IMAP	pop.centurylink.net	993	Yes	pop.centurylink.net	143	No
        companyName: "Centurylink"
        incomingImapAddress: "pop.centurylink.net"
        outgoingImapAddress: "pop.centurylink.net"
        inPort: 993
        outPort: 143
        ssl: false
    }
//    Charter	IMAP	mobile.charter.net	993	Yes	mobile.charter.net	587	Yes

    ListElement {
        companyName: "Charter"
        incomingImapAddress: "mobile.charter.net"
        outgoingImapAddress: "mobile.charter.net"
        inPort: 993
        outPort: 587
        ssl: true
    }
    ListElement {
//        Clearwire	IMAP	imap.gmail.com	993	Yes	smtp.gmail.com	587	Yes
        companyName: "Clearwire"
        incomingImapAddress: "imap.gmail.com"
        outgoingImapAddress: "smtp.gmail.com"
        inPort: 993
        outPort: 587
        ssl: true
    }
    ListElement {
//        CompuServe	IMAP	imap.cs.com	143	No	smtp.cs.com	25	No
        companyName: "CompuServe"
        incomingImapAddress: "imap.cs.com"
        outgoingImapAddress: "smtp.cs.com"
        inPort: 143
        outPort: 25
        ssl: false
    }
    ListElement {
//        Cox Business	IMAP	imap.coxmail.com	993	Yes	smtp.coxmail.com	465	Yes
        companyName: "Cox Business"
        incomingImapAddress: "imap.coxmail.com"
        outgoingImapAddress: "smtp.coxmail.com"
        inPort: 993
        outPort: 465
        ssl: true
    }
    ListElement {
//        Gmail (Google Mail)	IMAP	imap.gmail.com	993	Yes	smtp.gmail.com	465	Yes
        companyName: "Gmail (Google Mail)"
        incomingImapAddress: "imap.gmail.com"
        outgoingImapAddress: "smtp.gmail.com"
        inPort: 993
        outPort: 465
        ssl: true
    }
    ListElement {
//        US Army	IMAP	imap.us.army.mil	993	Yes	mailrouter.us.army.mil	465	Yes
        companyName: "US Army"
        incomingImapAddress: "imap.us.army.mil"
        outgoingImapAddress: "mailrouter.us.army.mil"
        inPort: 993
        outPort: 465
        ssl: true
    }
}
