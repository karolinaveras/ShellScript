!#/bin/bash

##Executar como Sudo

MY_DOMAIN="mydomain.local"

/opt/pbis/bin/config AssumeDefaultDomain true
/opt/pbis/bin/config UserDomainPrefix $MY_DOMAIN
/opt/pbis/bin/config LoginShellTemplate /bin/bash
/opt/pbis/bin/config HomeDirTemplate %H/%D/%U
/opt/pbis/bin/update-dns
/opt/pbis/bin/ad-cache --delete-all

sed -i "s|session\toptional\tpam_lsass.so|session [success=ok default=ignore] pam_lsass.so|" /etc/pam.d/common-session
