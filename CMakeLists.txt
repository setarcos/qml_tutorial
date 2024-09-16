cmake_minimum_required(VERSION 3.16)
project(Tutorial LANGUAGES CXX)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick)
qt_standard_project_setup()

qt_add_executable(Tutorial
    inc/main_controller.h
    src/main.cpp
    src/main_controller.cpp
)

qt_add_qml_module(Tutorial
    URI Tutorial
    OUTPUT_DIRECTORY qml
    VERSION 1.0
    RESOURCE_PREFIX /qt/qml
    QML_FILES
        qml/MyButton.qml
        qml/Style.qml
        qml/dashboard.qml
        qml/main.qml
        qml/splash.qml
        qml/workspace.qml
)

qt_add_resources(Tutorial_resources main.qrc)
target_sources(Tutorial
    PRIVATE
        ${Tutorial_resources}
)

target_link_libraries(Tutorial
    PRIVATE
        Qt::Core
        Qt::Gui
        Qt::Qml
        Qt::Quick
)
