--[[
    ██╗     ██╗  ██╗██████╗        ██╗███╗   ██╗██████╗ ██╗   ██╗████████╗
    ██║     ╚██╗██╔╝██╔══██╗      ██║████╗  ██║██╔══██╗██║   ██║╚══██╔══╝
    ██║      ╚███╔╝ ██████╔╝█████╗██║██╔██╗ ██║██████╔╝██║   ██║   ██║   
    ██║      ██╔██╗ ██╔══██╗╚════╝██║██║╚██╗██║██╔═══╝ ██║   ██║   ██║   
    ███████╗██╔╝ ██╗██║  ██║      ██║██║ ╚████║██║     ╚██████╔╝   ██║   
    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝      ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝    ╚═╝   

    🐺 LXR-Input — Advanced NUI Input System for RedM

    ═══════════════════════════════════════════════════════════════════════════════
    SERVER INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Server:      The Land of Wolves 🐺
    Developer:   iBoss21 / The Lux Empire
    Website:     https://www.wolves.land
    Discord:     https://discord.gg/CrKcWdfd3A
    GitHub:      https://github.com/iBoss21
    Store:       https://theluxempire.tebex.io

    ═══════════════════════════════════════════════════════════════════════════════

    Version: 1.0.0
    Framework Support:
    - LXR Core (Primary)
    - RSG Core (Compatible)
    - VORP Core (Compatible)
    - Standalone (Fallback)

    ═══════════════════════════════════════════════════════════════════════════════
    CREDITS
    ═══════════════════════════════════════════════════════════════════════════════

    Script Author: iBoss21 / The Lux Empire for The Land of Wolves
    Original Concept: NeroHiro (NH Keyboard)

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

fx_version 'cerulean'
game       'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name        'lxr-input'
author      'iBoss21 / The Lux Empire'
description '🐺 LXR-Input — Advanced NUI Input System | wolves.land'
version     '1.0.0'
url         'https://www.wolves.land'

client_script 'client/main.lua'
ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/img/*.*',
}

lua54 'yes'