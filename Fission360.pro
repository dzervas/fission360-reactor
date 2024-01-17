QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp

HEADERS += \
    nsbase10.h \
    nubase10.h

FUSION_PATH = "C:\Users\User\AppData\Local\Autodesk\webdeploy\production\b0c303e70bd97cfdc195adab65922cfeffcb363a"
FUSION_LIBS = NsBase10 NuBase10
GEN_FUSION_LIBS.depends = FORCE
GEN_FUSION_LIBS.target = main.cpp
PRE_TARGETDEPS += main.cpp

LIBS += -L$$OUT_PWD

for (FLIB, FUSION_LIBS) {
    GEN_FUSION_LIBS.commands += $$PWD\\generate_lib.bat $${FUSION_PATH} $${FLIB};
    LIBS += -l$$FLIB
}

QMAKE_EXTRA_TARGETS += GEN_FUSION_LIBS

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32-msvc {
    INCLUDEPATH += "C:\Program Files (x86)\Windows Kits\10\Include\10.0.20348.0\ucrt"
    INCLUDEPATH += "C:\Program Files (x86)\Windows Kits\10\Include\10.0.20348.0\um"
    LIBS += -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.20348.0\ucrt\x64"
    LIBS += -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.20348.0\um\x64"
}

# DISTFILES += \
#     generate_lib.bat
