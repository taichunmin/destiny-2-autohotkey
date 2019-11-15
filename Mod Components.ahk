; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

LeftDownUp(x, y, t1:=200, t2:=200) {
    Click, %x%, %y%, 0
    Sleep, 30
    Click, %x%, %y% Left, Down
    Sleep, t1
    Click, %x%, %y% Left, Up
    Sleep, t2
}

isSimilarColor(x, y, c, delta) {
    PixelSearch px, py, x-1, y-1, x+1, y+1, c, delta, RGB
    if ErrorLevel
        return 0
    else
        return 1
}

KeyDownUp(key, t1:=200, t2:=200) {
    Send, {%key% down}
    Sleep, t1
    Send, {%key% up}
    Sleep, t2
}

printPointColor(x, y) {
    PixelGetColor, color, %x%, %y%, RGB
    MsgBox color = %color%
}

F2::
; 刷模組元件
Loop
{
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    Sleep, 1000
    ; 開啟 F1
    Send, {F1 Down}
    Sleep, 150
    Send, {F1 Up}
    Sleep, 3000
    ; 點選收藏品
    Click, 1335, 60, 0
    Sleep, 30
    Click, 1335, 60 Left, Down
    Sleep, 150
    Click, 1335, 60 Left, Up
    Sleep, 3000
    ; 點選武器
    Click, 695, 387, 0
    Sleep, 30
    Click, 695, 387 Left, Down
    Sleep, 150
    Click, 695, 387 Left, Up
    Sleep, 1500
    ; 點選向右
    Click, 1810, 482, 0
    Sleep, 30
    Click, 1810, 482 Left, Down
    Sleep, 150
    Click, 1810, 482 Left, Up
    Sleep, 3000
    ; 製作獅王之心
    Click, 1192, 468, 0
    Sleep, 30
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    Click, 1192, 468 Left, Down
    Sleep, 3600
    Click, 1192, 468 Left, Up
    Sleep, 300
    ; 離開 F1
    Send, {F1 Down}
    Sleep, 150
    Send, {F1 Up}
    Sleep, 1000
    ; 重開 F1
    Send, {F1 Down}
    Sleep, 150
    Send, {F1 Up}
    Sleep, 3000
    ; 移動到主要武器
    Click, 551, 388, 0
    Sleep, 1000
    ; 移動至欲拆除的物品上
    Click, 433, 401, 0
    Sleep, 1000
    ; 開始拆除
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 1000
    ; 離開 F1
    Send, {F1 Down}
    Sleep, 150
    Send, {F1 Up}
    Sleep, 1000
}
Return

F3::
; 左鍵連點
Loop
{
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    Sleep, 1000
    Click
}
Return

F4::
; 連續拆裝
Loop
{
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    Send, {f Down}
    Sleep, 2000
    Send, {f Up}
    Sleep, 300
}
Return

F5::
; PVP 混戰模式掛機
Loop
{
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    if WinActive("Destiny 2 ahk_class Tiger D3D Window") {
        ; 確認是否要進入 PVP
        Click, 831, 840, 0
        Sleep 500
        if (isSimilarColor(828, 837, 0xECE6DD, 25) || isSimilarColor(828, 837, 0xD7D9DB, 25)) {
            LeftDownUp(960, 868, , 3000) ; 開啟導航
            LeftDownUp(1204, 821, , 3000) ; 開PVP
            LeftDownUp(472, 409, , 1000) ; 點混戰
            LeftDownUp(1583, 896, , 10000) ; 點開始
        }
        ; 施放電弧之魂
        if (isSimilarColor(263, 932, 0x7FABC7, 25) || isSimilarColor(263, 932, 0xAFD8F0, 25)) {
            KeyDownUp("q", 3000)
            Loop, 8 {
                ; 避免被踢下線
                KeyDownUp("a", 700)
                KeyDownUp("d", 700)
            }
            KeyDownUp("v")
        }
        ; 避免被踢下線
        KeyDownUp("a", 700)
        KeyDownUp("d", 700)
        KeyDownUp("c")
        KeyDownUp("space")
    }
    Sleep, 1000
}
Return

F6::
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    printPointColor(263, 932)
    Return

F12::Reload
