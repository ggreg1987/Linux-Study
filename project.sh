#!/bin/bash

echo "Starting script"

mkdir -v public adm ven sec 
chmod -v 777 /public 
chmod -v 770 /adm /ven /sec

groupadd GRP_ADM | groupadd GRP_SEC | groupadd GRP_VEN
echo "groupadd GRP_ADM | groupadd GRP_SEC | groupadd GRP_VEN"

chown root:GRP_ADM /adm | chown root:GRP_SEC /sec | chown root:GRP_VEN /ven
echo "root:GRP_ADM /adm | chown root:GRP_SEC /sec | chown root:GRP_VEN /ven"

useradd -m carlos -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM
echo "useradd -m carlos -c 'Carlos da Silva' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"
useradd -m maria -c "Maria Eduarda" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM
echo "useradd -m maria -c 'Maria Eduarda' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"
useradd -m joao -c "Joao Neto" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM
echo "useradd -m joao -c 'Joao Neto' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"

useradd  -m debora -c "Debora Lima" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_VEN
echo "useradd  -m debora -c 'Debora Lima' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"
useradd  -m sebastiana -c "Sebastiana Genivalda" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_VEN
echo "useradd  -m sebastiana -c 'Sebastiana Genivalda' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"
useradd  -m roberto -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_VEN
echo "useradd  -m roberto -c 'Roberto Carlos' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"


useradd  -m josefina -c "Josefina Palito" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_SEC
echo "useradd  -m josefina -c 'Josefina Palito' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"
useradd -m amanda -c "Amanda Caroline" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_SEC
echo "useradd -m amanda -c 'Amanda Caroline' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"
useradd -m rogerio -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_SEC
echo "useradd -m rogerio -c 'Rogerio' -s /bin/bash -p $(openssl passwd -1 12345) -G GRP_ADM"

echo "changing all password"
passwd -e carlos | passwd -e maria | passwd -e joao | passwd -e debora | passwd -e sebastiana |
passwd -e roberto | passwd -e josefina | passwd -e amanda | passwd -e rogerio  

echo "End script"