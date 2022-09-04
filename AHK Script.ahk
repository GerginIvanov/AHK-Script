;Single button keybind example
~1::Hold_Down("1")
~2::Hold_Down("2")
~3::Hold_Down("3")
~4::Hold_Down("4")
~5::Hold_Down("5")

;Alt + E keybind example
LAlt & e::Alt_Modifier("e")

;Shift + W keybind example
LShift & w::Shift_Modifier("w")

;Ctrl + W keybind example
Ctrl & w::Ctrl_Modifier("w")

;Two examples how to create Ctrl + Shift modifier keybinds

#If, GetKeyState("Ctrl")
LShift & ~3::Ctrl_Shift_Modifier(4) ;Ctrl + Shift + 4

#If, GetKeyState("Ctrl")
LShift & ~5::Ctrl_Shift_Modifier(5) ;Ctrl + Shift + 4


;configure which key to pause the script; currently it's Scroll Lock
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

Shift_Modifier(key) {
    loop {
        send +%key%
            Sleep, 10
        GetKeyState, state, %key%, P
        if state = U
            break
    }
    return
}

Ctrl_Modifier(key) {
    loop{
        send ^%key%
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
