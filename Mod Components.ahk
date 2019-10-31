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
    ; 確認是否要進入 PVP
    Click, 831, 840, 0
    Sleep 500
    PixelGetColor, color, 831, 840, RGB
    red := (color >> 16) & 0xFF
    green := (color >> 8) & 0xFF
    blue := color & 0xFF
    if ((0xD5 <= red && red <= 0xDB) && (0xD5 <= green && green <= 0xDB) && (0xD5 <= blue && blue <= 0xDB)) {
        ; 開啟導航
        Click, 960, 868, 0
        Sleep, 100
        Click, 960, 868 Left, Down
        Sleep, 100
        Click, 960, 868 Left, Up
        Sleep, 3000
        ; 開PVP
        Click, 1204, 821, 0
        Sleep, 100
        Click, 1204, 821 Left, Down
        Sleep, 100
        Click, 1204, 821 Left, Up
        Sleep, 3000
        ; 點混戰
        Click, 472, 409, 0
        Sleep, 100
        Click, 472, 409 Left, Down
        Sleep, 100
        Click, 472, 409 Left, Up
        Sleep, 3000
        ; 點開始
        Click, 1583, 896, 0
        Sleep, 100
        Click, 1583, 896 Left, Down
        Sleep, 100
        Click, 1583, 896 Left, Up
        Sleep, 10000
    }
    ; 左右移動
    Send, {a Down}
    Sleep, 700
    Send, {a Up}
    Sleep, 100
    Send, {d Down}
    Sleep, 700
    Send, {d Up}
    Sleep, 100
}
Return

F6::
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    ; 確認是否要進入 PVP
    Click, 831, 840, 0
    Sleep 500
    PixelGetColor, color, 831, 840, RGB
    red := (color >> 16) & 0xFF
    green := (color >> 8) & 0xFF
    blue := color & 0xFF
    MsgBox color = %color%, red = %red%, green = %green%, blue = %blue%.
    Return

F12::Reload
