!#/bin/bash

##executar como sudo

MY_DOMAIN="mydomain.local"

/opt/pbis/bin/domainjoin-cli join $MY_DOMAIN administrator@$MY_DOMAIN

shutdown now -r
