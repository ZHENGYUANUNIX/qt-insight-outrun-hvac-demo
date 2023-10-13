/****************************************************************************
**
** Copyright (C) 2022 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Outrun demo.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick

Rectangle {
    id: aC
    width: 312
    height: 60
    color: "transparent"
    radius: 8
    property alias aC1Text: aC1.text
    property alias autoText: auto.text
    property alias syncText: sync.text

    Text {
        id: aC1
        x: 20
        y: 10
        width: 54
        height: 40
        color: "#ffffff"
        text: "A/C"
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Open Sans"
        font.weight: Font.Bold
    }

    Text {
        id: auto
        x: 121
        y: 12
        width: 64
        height: 36
        color: "#ffffff"
        text: "Auto"
        font.pixelSize: 26
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Open Sans"
        font.weight: Font.Bold
    }

    Text {
        id: sync
        x: 232
        y: 12
        width: 61
        height: 36
        color: "#ffffff"
        text: "Sync"
        font.pixelSize: 26
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Open Sans"
        font.weight: Font.Bold
    }
}

/*##^##
Designer {
    D{i:0;height:60;width:312}D{i:1;uuid:"e7fedb1e-9ead-5237-a9e7-d520ccf1989b"}D{i:2;uuid:"f2fbfb8d-e816-59d8-9829-63f56ff79022"}
D{i:3;uuid:"2672b6c6-c6ba-55c1-be3f-3048fcf595aa"}
}
##^##*/

