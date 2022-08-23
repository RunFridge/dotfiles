-- 애플리케이션명 스트링
local apps = require('../constants/apps')

-- 애플리케이션 실행 함수 리턴
local function openAppFn(appName)
    return function ()
        hs.application.launchOrFocus(appName)
    end
end

-- CMD + CTRL 단축키
local CMD_CTRL = {'cmd', 'control'}

-- Development (개발)
hs.hotkey.bind(CMD_CTRL,'T', openAppFn(apps.alacritty))
hs.hotkey.bind(CMD_CTRL,'C', openAppFn(apps.code))
-- Debugging (디버깅)
hs.hotkey.bind(CMD_CTRL,'I', openAppFn(apps.insomnia))
-- Browser (브라우저)
hs.hotkey.bind(CMD_CTRL,'B', openAppFn(apps.brave))
-- Messenger (메신저)
hs.hotkey.bind(CMD_CTRL,'S', openAppFn(apps.slack))
hs.hotkey.bind(CMD_CTRL,'M', openAppFn(apps.mail))
hs.hotkey.bind(CMD_CTRL,'W', openAppFn(apps.naverworks))
-- Datbase (데이터베이스)
hs.hotkey.bind(CMD_CTRL,'D', openAppFn(apps.datagrip))
hs.hotkey.bind(CMD_CTRL,'G', openAppFn(apps.compass))
-- Productivity (생산성)
hs.hotkey.bind(CMD_CTRL,'N', openAppFn(apps.notion))
hs.hotkey.bind(CMD_CTRL,'P', openAppFn(apps.typora))
hs.hotkey.bind(CMD_CTRL,'O', openAppFn(apps.boop))
-- Design (디자인)
hs.hotkey.bind(CMD_CTRL,'F', openAppFn(apps.figma))
hs.hotkey.bind(CMD_CTRL,'Z', openAppFn(apps.zeplin))
hs.hotkey.bind(CMD_CTRL,'X', openAppFn(apps.adobeXD))
-- MacOS (맥 OS 기본 앱)
hs.hotkey.bind(CMD_CTRL,',', openAppFn(apps.preference))
hs.hotkey.bind(CMD_CTRL,'E', openAppFn(apps.finder))
-- Entertainment (엔터테인먼트)
hs.hotkey.bind(CMD_CTRL,'U', openAppFn(apps.youtubeMusic))
hs.hotkey.bind(CMD_CTRL,'Y', openAppFn(apps.youtube))
