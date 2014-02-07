
#include "plugin.h"
#include "qdeclarativewebview_p.h"
#include <qqml.h>

void TrojitaQNAMWebKitQmlPlugin::registerTypes(const char* uri)
{
    // @uri Qt5NAMWebView
    Q_ASSERT(QLatin1String(uri) == QLatin1String("Qt5NAMWebView"));
    qmlRegisterType<TrojitaQNAMDeclarativeWebView>(uri, 1, 0, "QNAMWebView");
    qmlRegisterExtendedType<QNetworkAccessManager, QObject>();
    qmlRegisterType<TrojitaDeclarativeWebSettings>();
}

//Q_EXPORT_PLUGIN2(trojitaqnamwebviewplugin, TrojitaQNAMWebKitQmlPlugin);

