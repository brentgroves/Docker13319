#!/bin/zsh
# https://scriptingosx.com/zsh/
emulate -LR zsh # reset zsh options
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

function cpSecret() {
    src="../"${1}${2}
    secretDir="../secret/${1}"
    dest=${secretDir}
    echo ${src}
    echo ${secretDir}

    rm -rf ${secretDir}
    mkdir ${secretDir} 
    cp ${src} ${secretDir}
  
}

cpSecret task13319 /src/get_user_access_token.js  
cpSecret issue13319 /src/AuthenticationProvider.js  
cpSecret mailer13319 /src/AuthenticationProvider.js  
cpSecret Test13319 /axios/task/get_user_access_token.js  


# function RemoveNodeModules() {
#     # echo "${1}"
#     # DATE=$(date +'20%y-%m-%d')
#     nodeModDir="${1}/node_modules"
#     echo "${nodeModDir}"
#     rm -rf ${nodeModDir}
  
# }

# RemoveNodeModules ../eng13319
# RemoveNodeModules ../tool13319
# RemoveNodeModules ../prod13319
# RemoveNodeModules ../gm13319

# RemoveNodeModules ../eng13319api
# RemoveNodeModules ../tool13319api
# RemoveNodeModules ../prod13319api
# RemoveNodeModules ../gm13319api

# RemoveNodeModules ../mailer13319
# RemoveNodeModules ../issue13319
# RemoveNodeModules ../task13319
# RemoveNodeModules ../alarms13319

# rm -rf ../tool13319/build
# rm -rf ../eng13319/build
# rm -rf ../prod13319/build
# rm -rf ../gm13319/build



