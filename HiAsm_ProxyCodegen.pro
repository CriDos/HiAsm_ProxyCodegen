TARGET = CodeGen
TEMPLATE = lib
QT += core
CONFIG += c++14 dll

#ru Путь до пакетов HiAsm
HIASM_PACKAGES = "C:/Users/Admin/AppData/Roaming/HiAsm_AltBuild/Elements"

#DESTDIR += $$HIASM_PACKAGES/CNET
DESTDIR += $$HIASM_PACKAGES/delphi

#ru Подключаем SceneModel
DEFINES += MODEL PROXY_MODEL

#ru Подключаем PROXY_ORIGINAL
#DEFINES += PROXY_ORIGINAL

SOURCES += $$files($$PWD/"entry/*.cpp", true)
HEADERS += $$files($$PWD/"entry/*.h", true)

#Подключаем HiAsm_Interface
include(../HiAsm_Interface/HiAsm_Interface.pri)
