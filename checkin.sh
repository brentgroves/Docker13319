#!/bin/zsh
# https://scriptingosx.com/zsh/
emulate -LR zsh # reset zsh options
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

function CheckIn() {
    cd ${1}
    git add -A
    git commit -m "added/changed source"
    git push -u origin main
}

CheckIn ./docker13319
CheckIn ../eng13319
CheckIn ../eng13319api
CheckIn ../tool13319
CheckIn ../tool13319api
CheckIn ../prod13319
CheckIn ../prod13319api
CheckIn ../gm13319
CheckIn ../gm13319api
CheckIn ../mailer13319
CheckIn ../issue13319
CheckIn ../alarms13319



