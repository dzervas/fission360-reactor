#include "nubase10.h"
#include "nsbase10.h"

#include <QApplication>
#include <QLabel>

int main(int argc, char *argv[])
{
    printf("\n\n========\n\n");

    auto workspaceMgr = Nu::WorkspaceMgr::get();
    printf("workspaceMgr: %p\n", workspaceMgr);

    auto serviceMgr = Ns::Services::ServiceMgr::get();
    printf("service2Mgr: %p\n", serviceMgr);

    // int result;
    // auto versionInfo = Ns::SoftwareVersion::currentSoftwareVersionInfo(&result);
    // printf("\n\nCurrent Version: %s - %d\n\n", versionInfo.versionString().c_str(), result);

    // QApplication app(argc, argv);

    // Create a label
    // QLabel label("Test Label");
    // label.show();

    // auto splash = Nu::SplashScreen::get();
    // printf("splash: %p\n", splash);

    printf("\n\n========\n\n");
    // return app.exec();
}
