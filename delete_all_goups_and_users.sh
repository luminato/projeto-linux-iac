#!/bin/sh

echo 'Excluindo usuarios ADM...'

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao

echo 'Excluindo usuarios VEN...'

userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto

echo 'Excluindo usuarios SEC...'

userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo 'Excluindo grupos...'

groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC

echo 'Exluindo diretórios...'

rm -Rf /publico
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

echo 'Fim...'
