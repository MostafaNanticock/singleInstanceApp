include($$PWD/QtSingleApplication/qtsingleapplication.pri)
QT += quick

CONFIG += c++11

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

INCLUDEPATH += $$PWD/QtSingleApplication
DEPENDPATH += $$PWD/QtSingleApplication
