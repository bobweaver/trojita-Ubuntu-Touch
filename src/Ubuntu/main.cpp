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
//#include"qtquick2applicationviewer/qtquick2applicationviewer.pri"
#include <QApplication>
#include <QtGui/QGuiApplication>
#include <QQmlContext>
#include<QDebug>
#include <QSettings>
#include "qtquick2applicationviewer/qtquick2applicationviewer.h"
#include "AppVersion/SetCoreApplication.h"
#include "Common/Application.h"
#include "Common/MetaTypes.h"
#include "Imap/Model/ImapAccess.h"
#include "config.h"
static QString fullPath(const QString &fileName)
{
    QString result;
    QString appPath = QCoreApplication::applicationDirPath();
    if (appPath == UBUNTU_BINDIR) {
        result = QString(UBUNTU_INSTALL_DATADIR) + fileName;
    } else {
        result = QString(UBUNTU_DEV_DATADIR) + fileName;
        qDebug() << result;
    }
    return result;
}
int main(int argc, char *argv[])
{
    Common::registerMetaTypes();
    QApplication app(argc, argv);
    Common::Application::name = QString::fromLatin1("trojita-tp");
    AppVersion::setGitVersion();
    AppVersion::setCoreApplicationData();
    QtQuick2ApplicationViewer viewer;

    QSettings s;
    Imap::ImapAccess imapAccess(0, &s, QLatin1String("defaultAccount"));
    QQmlContext *ctxt = viewer.rootContext();
    ctxt->setContextProperty(QLatin1String("imapAccess"), &imapAccess);
    //FixME for QWindow
    //    viewer.setOrientation(QtQuick2ApplicationViewer::ScreenOrientationAuto);
    viewer.setTitle("Trojita");
    viewer.setMainQmlFile(fullPath("/qml/trojita/main.qml"));
    viewer.showExpanded();
    return app.exec();
}
