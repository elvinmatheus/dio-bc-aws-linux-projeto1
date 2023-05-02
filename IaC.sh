echo "Iniciando configurações..."

#! bin/bash

mkdir /publico /adm /ven /sec /publico

echo "Pastas criadas"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM

useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC

useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC

echo "Usuários criados"

chown root:root /public/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Donos e grupos estabelecidos em suas respectivas pastas"

chmod 777 /public/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Finalizado!"