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

F9::
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

F10::
; 左鍵連點
Loop
{
    WinActivate, Destiny 2 ahk_class Tiger D3D Window
    Sleep, 1000
    Click
}
Return

F11::
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

F12::Reload
