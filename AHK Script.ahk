~1::Hold_Down("1")
~2::Hold_Down("2")
~3::Hold_Down("3")
~4::Hold_Down("4")
~5::Hold_Down("5")
LAlt & e::Alt_Modifier("e")
LAlt & q::Alt_Modifier("q")

;Two examples how to create Ctrl + Shift modifier keybinds
#If, GetKeyState("Ctrl")
LShift & ~3::Ctrl_Shift_Modifier(3) ;Ctrl + Shift + 3

#If, GetKeyState("Ctrl")
LShift & ~3::Ctrl_Shift_Modifier(4) ;Ctrl + Shift + 4

; change this key to whichever you want to toggle on/off
ScrollLock::Suspend, Toggle

Hold_Down(key) {
    loop
    {
      	 send %key%
            Sleep, 10
        GetKeyState, state, %key%, P
        if state = U 
            break
    }
    return
}

Alt_Modifier(key){
    loop{
        send !%key%
            Sleep, 10
        GetKeyState, state, %key%, P
        if state = U
            break
    }
    return
}

Ctrl_Shift_Modifier(key) {
    loop {
        send ^+%key%
            Sleep 10
        GetKeyState, state, %key%, P
        if state = U
            break
    }
    return
}
