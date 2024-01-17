#ifndef NUBASE10_H
#define NUBASE10_H

namespace Nu {
    class __declspec(dllimport) SplashScreen {
    public:
        static SplashScreen* get();
        void startSplashScreen();
    };

    class __declspec(dllimport) WorkspaceMgr {
    public:
        static WorkspaceMgr* get();
    };
}

#endif // NUBASE10_H
