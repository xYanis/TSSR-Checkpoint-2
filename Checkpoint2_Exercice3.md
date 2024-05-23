Q.3.1

Le switch fonctionne en utilisant les adresses MAC pour transférer les données entre les périphériques sur le même réseau local, dans ce cas prècis il fait communiquer les 5 ordinateurs ( PC1/PC2/PC3/PC4/PC5)


Q.3.2

C'est un routeur, il permet de communiquer avec le réseau 10.12.2.0/24 et avec le routeur 2 d'également communiquer avec le réseau 172.16.5.0/24. Il sert de passerelle.

Q.3.3

F0/0 FastEthernetO est une interface pour le switch ( généralement )

g1/0 GigaEthernet n1 est une interface pour le routeur  ( généralement )

Q.3.4 

Le /16 est le masque du réseaux de l'IP sont CIDR qui est 255.255.0.0

Q.3.5

C'est l'adresse passerelle par défault

Q.3.6

| Ordinateur | Adresse réseau    | Première adresse disponible | Dernière adresse disponible | Adresse Broadcast     |
|------------|--------------------|-----------------------------|-----------------------------|-----------------------|
| PC1        | 10.10.0.0/16       | 10.10.0.1               | 10.10.255.254           | 10.10.255.255    |
| PC2        | 10.11.0.0/16      | 10.11.0.1              | 10.11.255.254         | 10.11.255.255     |
| PC5        | 10.10.0.0/15       | 10.10.0.1               | 10.11.255.254           | 10.11.255.255    |

Q.3.7

Ils peuvent tous communiquer entre eux sauf le PC2 qui lui ne peut communiquer qu'avec le PC5 puisque le PC est sur la plage 10.11 est que seul le PC est également sur cette plage 

Q.3.8

PC1,PC3,PC4 et PC5 peuvent y accéder car ils passent par le réseau 10.10.255.254. Le PC2 étant sur un réseau différent ne peut pas.

Q.3.9

 PC2 aura une adresse IP de 10.11.80.2/16, mais sera connecté à un réseau configuré pour 10.10.0.0/16. Donc il ne pourra pas communiquer avec les hotes du réseau 10.10.0.0/16. Ils sont sur des réseaux différent
 PC3 aura une adresse IP de 10.10.80.3/16, mais sera connecté à un réseau configuré pour 10.11.0.0/16. Donc il ne pourra pas communiquer avec les hotes du réseau 10.11.0.0/16. Ils sont sur des réseaux différent
 Des problèmes de routage arriveront sur les deux PC et ils ne pourront plus communiquer avec les autres PC

 Q.3.10

 En passant par un serveur DHCP qui redifinira les adresses IP de chaque PC


Q.3.11

Adresse MAC du matériel initiant la communication (paquet N°5) : 00:50:79:66:68:00
Nom du matériel : PC1 (Adresse IP : 10.10.4.1/16)


Q.3.12

Oui, la communication a réussi.
Le PC1 qui fait des demandes pour le PC4 qui lui a répondu 


Q.3.13

Nom : PC1
Adresse IP : 10.10.4.1
Adresse MAC : 00:50:79:66:68:00
Il fait la demande ( Request )


Nom : PC4
Adresse IP : 10.10.4.2
Adresse MAC : 00:50:79:66:68:03
Il donne la réponse ( Reply )

Q.3.14

C'est le protocole ARP qui est utilisé. Pour déterminer l'adresse MAC associée à l'adresse IP 10.10.4.2.

Q.3.15

Le switch A a relayé les paquets entre les différents PC sur le réseau local. Il a reçu les requêtes ARP et ICMP de PC1 et a transmis ces paquets au destinataire approprié, puis a relayé les réponses de PC4 à PC1.

Le routeur B n'a pas été impliqué directement dans cette communication spécifique, car tous les échanges dans cette capture se sont produits au sein du même sous-réseau (10.10.0.0/16). Le routeur B aurait été nécessaire si la communication devait se faire entre différents sous-réseaux ou avec des réseaux externes.

Q.3.16

10.10.80.3, il s'agit du PC3

Q.3.17

Le protocole ICMP (Internet Control Message Protocol) est un protocole de la couche réseau qui permet de gérer les informations relatives aux erreurs de communication du réseau

Q.3.18

Non, parce que l'hote n'as été trouvé. PC2 et PC3 ne peuvent pas communiquer ensemble. Ils sont sur des réseaux différents 

Q.3.19

Le paquet 2 cherche atteindre la destination 10.10.80.3 depuis la passerelle 10.10.255.254 mais elle n'est pas joignable 

 Q.3.20
Le switch A a permis d'indiquer à PC3 d'etre relié au routeur B 
Le routeur B a reçu un paquet provenant de PC3, mais a indiqué une erreur car PC2 ne se situe pas sur sa table de routage.

Q.3.21
La source est un appareil possédant l'adresse IP 10.10.4.2, 
Il s'agit de PC4 et la destination est l'adresse IP 172.16.5.253, situé sur le réseau 172.16.5.0/24

Q.3.22
L'adresse MAC source est CA:03:9E:EF:00:38 (R2 g2 )
L'adresse MAC destination est CA:01:DA:D2:00:1C (B G1 )
Les deux appareils en communication disposent d'adresses MAC et sont connectées sur les réseaux 10.10.0.0/16 et 172.16.5.0/24

Q.3.23
Cette comunnication a eu lieu entre les deux routeurs B et R2.
