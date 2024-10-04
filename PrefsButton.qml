import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Button {
    id: button
    property bool iconOnly: false
    palette.windowText: enabled ? "#FFFFFF" : "#97A1AF"
    palette.brightText: enabled ? "#FFFFFF" : "#97A1AF"
    palette.buttonText: enabled ? "#FFFFFF" : "#97A1AF"
    palette.button: enabled ? "#141C25" : "#E4E7EC"
    implicitWidth: iconOnly ? 56 : 171
    implicitHeight: 56
    spacing: 5
    font.weight: 500
    font.pixelSize: 16
    font.family: "Inter"
    text: qsTr("Button")
    scale: button.pressed ? 1.05 : 1.0

    NumberAnimation {
        target: button
        property: "scale"
        duration: 500
        easing.type: Easing.InOutQuad
    }

    contentItem: RowLayout {
        anchors.centerIn: parent
        spacing: button.spacing
        Rectangle {
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            width: height
            height: Math.max(button.height / 2,24)
            radius: height /2
            border.width: 2
            color: "#00000000"
            border.color: button.palette.buttonText
        }

        Text {
            visible: !button.iconOnly
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            font: button.font
            text: button.text
            color: button.palette.buttonText
        }

        Rectangle {
            visible: !button.iconOnly
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            width: height
            height: Math.max(button.height / 2,24)
            radius: height /2
            border.width: 2
            color: "#00000000"
            border.color: button.palette.buttonText
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        radius: 12
        color: Color.blend(button.checked || button.highlighted ? button.palette.dark : button.palette.button,
                                                                    button.palette.mid, button.down ? 0.5 : 0.0)
        border.color: button.palette.highlight
        border.width: button.visualFocus ? 2 : 0
    }
    function alphaColor(color, alpha) {
            let actualColor = Qt.darker(color, 1)
            actualColor.a = alpha
            return actualColor
        }
}

