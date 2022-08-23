local apps = require("../constants/apps")
local inputEnglish = "com.apple.keylayout.ABC"

-- 입력이 영어가 아닌 경우 입력을 영어로 변경
local function changeInputToEnglish()
    local inputSource = hs.keycodes.currentSourceID()
    if not (inputSource == inputEnglish) then
        hs.keycodes.currentSourceID(inputEnglish)
    end
    hs.eventtap.keyStroke({}, 'escape')
end

-- CTRL + [ 가 한영 전환하도록 매핑
hs.hotkey.bind({'control'}, 33, changeInputToEnglish)
