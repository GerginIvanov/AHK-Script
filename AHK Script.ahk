~1::Hold_Down("1")
~2::Hold_Down("2")
~3::Hold_Down("3")
~4::Hold_Down("4")
~5::Hold_Down("5")
LAlt & e::Alt_Modifier("e")
LAlt & q::Alt_Modifier("q")

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