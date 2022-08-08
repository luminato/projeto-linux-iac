#!/bin/bash

echo 'Criando diretórios...'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo 'Criando grupos de usuarios...'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo 'Criando  usuarios...'

useradd carlos -c "ADM carlos" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
passwd -e carlos

useradd maria -c "ADM Maria" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
passwd -e maria

useradd joao -c "ADM João" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
passwd -e joao

useradd debora -c "VEN Debora" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
passwd -e debora

useradd sebastiana -c "VEN Sebastiana" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
passwd -e sebastiana

useradd roberto -c "VEN Roberto" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
passwd -e roberto

useradd josefina -c "SEC Josefina" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
passwd -e josefina

useradd amanda -c "SEC Amanda" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
passwd -e amanda

useradd rogerio -c "SEC Rogerio" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
passwd -e rogerio


echo 'modificando permissões de pasta...'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo 'processo finalizado!'

