import QtQuick
import QtQuick.Window
import QtQuick.Controls.Basic
import QtQuick.Layouts

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        spacing: 10
        anchors.centerIn: parent

        PrefsButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            iconOnly: true
            text: qsTr("Button")
        }

        PrefsButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Button")
        }

        PrefsButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            enabled: false
            text: qsTr("Button")
        }

        PrefsButton {
            palette.windowText: enabled ? "#FFFFFF" : "#97A1AF"
            palette.brightText: enabled ? "#FFFFFF" : "#97A1AF"
            palette.buttonText: enabled ? "#FFFFFF" : "#97A1AF"
            palette.button: enabled ? "#0166FF" : "#E4E7EC"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Button")
        }

        PrefsButton {
            palette.windowText: enabled ? "#0166FF" : "#97A1AF"
            palette.brightText: enabled ? "#0166FF" : "#97A1AF"
            palette.buttonText: enabled ? "#0166FF" : "#97A1AF"
            palette.button: enabled ? alphaColor("#0166FF",0.15) : "#E4E7EC"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Button")
        }

        PrefsButton {
            palette.windowText: enabled ? "#141C25" : "#97A1AF"
            palette.brightText: enabled ? "#141C25" : "#97A1AF"
            palette.buttonText: enabled ? "#141C25" : "#97A1AF"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.underline: true
            background: null
            text: qsTr("Button")
        }

        PrefsButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            enabled: false
            font.underline: true
            background: null
            text: qsTr("Button")
        }
    }
}
