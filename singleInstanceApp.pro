include($$PWD/QtSingleApplication/qtsingleapplication.pri)
QT += quick

CONFIG += c++11

SOURCES += \
        InstancesManager.cpp \
        main.cpp

RESOURCES += qml.qrc

INCLUDEPATH += $$PWD/QtSingleApplication
DEPENDPATH += $$PWD/QtSingleApplication

HEADERS += \
    InstancesManager.h
