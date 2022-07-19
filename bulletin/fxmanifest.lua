fx_version 'adamant'

game 'gta5'

description 'bulletin'

author 'Karl Saunders (Mobius1)'

version '1.1.6'

client_scripts {
    'config.lua',
    'bulletin.lua'
}

ui_page 'ui/ui.html'

files {
    'ui/ui.html',
    'ui/images/*',
    'ui/icons/*',
    'ui/audio/*.ogg',
    'ui/audio/*.mp3',
    'ui/audio/*.wav',
    'ui/fonts/*.ttf',
    'ui/css/*.css',
    'ui/js/*.js'
}

exports {
    'Send',
    'SendAdvanced',
    'SendSuccess',
    'SendInfo',
    'SendWarning',
    'SendError',
    'SendPinned',
    'Unpin'
}