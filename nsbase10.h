#ifndef NSBASE10_H
#define NSBASE10_H

#include <string>

namespace Ns {
    namespace Services {
        class __declspec(dllimport) ApplicationEditionServiceDefault {
        public:
            // static SplashScreen* get();
            // void startSplashScreen();
        };

        class __declspec(dllimport) ServiceMgr {
        public:
            static ServiceMgr* get();
        };
    }

    namespace SoftwareVersion {
        class __declspec(dllimport) VersionInfo {
        public:
            std::basic_string<char,struct std::char_traits<char>,class std::allocator<char>> versionString() const;
        };
        VersionInfo currentSoftwareVersionInfo(int* result);
    }

    class __declspec(dllimport) Application {
    public:
        Application(Application *handle);
        ~Application();
        static Application* get();
    };

}
#endif // NSBASE10_H
