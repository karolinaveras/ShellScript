!#/bin/bash

##Definir regras de admins

echo '%mydomain\\linuxadmins ALL=(ALL:ALL) ALL' >> /etc/sudoers
echo '%mydomain\\linuxdevs ALL=(ALL:ALL) ALL' >> /etc/sudoers

##Corrigir tela de login

if [ -f "/usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf" ];then
echo 'allow-guest=false
greeter-show-remote-login=false
greeter-show-manual-login=true' >> /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf
fi

shutdown now -r
