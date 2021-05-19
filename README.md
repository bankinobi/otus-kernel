# otus-kernel

Ссылка на готовый образ в Vagrantcloud

https://app.vagrantup.com/bankinobi/boxes/centos-7-7

Ядро собрано из исходников. Скрипт сборки расположен в packer/scripts/stage-1-kernel-update.sh

Для проверки работы VirtualBox Shared Folders папка packer монтируется в /mnt

Для проверки запустить

    vagrant up
    vagrant ssh
