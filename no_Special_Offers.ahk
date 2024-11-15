#Requires AutoHotkey v2

SetTimer(CheckAndCloseSpecialOffers, 500)

CheckAndCloseSpecialOffers() {
    for win in WinGetList("Special Offers") {
        if WinExist("ahk_id " win) { ; Check if the window still exists
            WinClose("ahk_id " win) ; Close the window
        }
    }
}