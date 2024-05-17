Q.1.1

![2024-05-17 10_32_36-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/712f50db-f9b9-4c92-8730-8314590ba438)

![2024-05-17 10_32_48-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/cbc441c5-47ef-4268-baff-f7f7aa66c247)

Les deux machines sont sur deux réseaux différents 
Le serveur : 172.16.10.0
Le client  : 172.16.100.0

![2024-05-17 10_33_45-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/9a1003b1-85a9-4de9-a07f-696dd9e699fa)

Le ping ne peut donc pas fonctionner 

Voici les modifications pour le ping fonctionne on passe la machine Client en 172.16.10.20 

![2024-05-17 10_57_59-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/91b2c3e5-1900-40b9-9f1e-70f2ce34370c)

PING CLIENT

![2024-05-17 10_58_47-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/4c76dd24-0362-4174-a32d-c87ad5d80948)

PING SERVEUR

![2024-05-17 10_58_57-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/e97403e4-2259-40b9-8630-8a28a7fd8d6d)


Q.1.2

![2024-05-17 11_11_06-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/0a286689-7fb6-4ede-a1a8-b294c66113d2)

J'envoi un paquet du serveur vers le client qui me répond en retour ( pour vérifier que mes machines communiquent bien entre elles )
Le ping est en IPV6

Q.1.3

![2024-05-17 11_06_32-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/98966bd2-d839-44f5-a7dc-a97e826514ca)

![2024-05-17 11_12_30-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/454cafb9-5ea1-4d34-8ca2-9a96b34b1e3d)


Le ping passe par l'IPV4 vu que l'on a désactivé l'IPV6

Q.1.4

Modifs client

![2024-05-17 11_16_55-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/8cb90822-a808-4bd1-bad1-158e6bf77145)

Serveur

![2024-05-17 11_18_40-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/85a2d15b-7932-4519-8f08-256eae5ed0ee)

Résultat Client

![2024-05-17 11_17_51-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/9ded457c-1492-4630-a1b3-b7476cc5eecd)


Q.1.5

Parce que les adresses IP de 1 à 19 sont exclus voir la photo ci dessous 

![2024-05-17 11_33_09-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/99fea9c5-9ab8-489e-9e37-b592cac47339)

![2024-05-17 11_17_51-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/284b0757-ed3b-49c6-af8f-de388a20bdd5)


Q.1.6

![2024-05-17 11_27_15-Checkpoint2-SRVWIN2022  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/36f3d191-ae31-4566-9696-5fd109076875)

![2024-05-17 11_31_31-Checkpoint2-CLIWIN10  En fonction  - Oracle VM VirtualBox](https://github.com/xYanis/TSSR-Checkpoint-2/assets/161461625/d4a3b568-20d4-46f8-9e7a-de09477e3e1f)


Q.1.7 

D'un point de sécurité l'IPV6 est plus sur que l'IPV4 et on peut se passer du DHCP


Q.1.8

Non il n'est pas obselète. 

En intégrant le protocole IPV6 le DHCP est optionnel.






