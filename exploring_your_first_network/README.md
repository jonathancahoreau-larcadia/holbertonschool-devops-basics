======================================================================
EXPLORING YOUR FIRST NETWORK
======================================================================

DESCRIPTION
-----------
Ce projet vous plonge dans l’observation directe du fonctionnement réseau
d’un système Linux.
Dans un environnement classique, une machine :

    - choisit une interface réseau,
    - obtient des adresses IPv4/IPv6,
    - résout des noms via DNS ou NSS,
    - consulte sa table de routage,
    - communique avec des voisins (ARP / ND),
    - ouvre ou écoute sur des sockets TCP/UDP,

…sans que l’utilisateur ne voie ces opérations.

Ce projet vous demande d’écrire de petits scripts Bash permettant
d’inspecter ces mécanismes en temps réel, en utilisant les outils réseau
natifs de Linux.

Chaque tâche demande un résultat observable, mais **ne dicte pas la commande
exacte** : vous devez choisir l’outil adapté, tester, et vérifier que la
sortie correspond aux exigences.

----------------------------------------------------------------------
OBJECTIFS PÉDAGOGIQUES
-----------------------
À la fin de ce projet, vous devez être capable de :

Identify network interfaces and interpret their operational state and assigned addresses
    Comprendre les interfaces, leur état (UP/DOWN), leurs adresses IPv4/IPv6.

Distinguish link-layer information from IPv4 and IPv6 addressing information
    Différencier MAC, IPv4, IPv6.

Test the IPv4 loopback interface with a fixed number of ICMP echo requests
    Utiliser ping pour tester 127.0.0.1.

Identify the configured default IPv4 route without assuming a specific gateway or interface
    Inspecter la table de routage sans valeurs codées en dur.

Query the operating system's configured hostname-resolution mechanism
    Utiliser getent et comprendre le Name Service Switch (NSS).

Inspect the current IPv4 neighbor table
    Observer les entrées ARP.

Identify listening TCP sockets using numeric addresses and ports
    Utiliser ss pour inspecter les sockets en écoute.

Select suitable Linux networking utilities and options from official documentation
    ip, ss, ping, getent, etc.

Explain the roles of loopback, private addressing, IPv6, default routes, hostname resolution, neighbor discovery, and listening sockets
    Comprendre les concepts fondamentaux du réseau Linux.

----------------------------------------------------------------------
RESOURCES
---------
Required:
    - What is an IP address?
    - What is DNS?
    - IPv6 Addresses Explained
    - Linux ip manual page
    - Linux ss manual page
    - Linux ping manual page
    - Linux getent manual page
    - GNU System Databases and Name Service Switch

----------------------------------------------------------------------
GENERAL REQUIREMENTS
--------------------
You may use any repository.
Place all project files inside a directory named **exploring_your_first_network**.

Every script must :
    - commencer par : #!/usr/bin/env bash
    - être exécutable
    - utiliser l’encodage UTF‑8
    - se terminer par une nouvelle ligne
    - fonctionner sans privilèges root

You may use :
    - conditionnels Bash
    - paramètres positionnels
    - pipelines
    - utilitaires de traitement de texte simples

Prefer native output :
    - ne pas ajouter de labels, titres, décorations
    - ne pas reformater inutilement

Do NOT :
    - hardcoder interface names, IPs, MACs, gateways, hostnames, ports…
    - modifier la configuration réseau
    - installer des packages
    - contacter des APIs externes

The correction environment may contain :
    - zéro, une ou plusieurs routes par défaut
    - zéro ou plusieurs voisins
    - IPv6 ou non
    - sockets en écoute variables

Les scripts doivent inspecter **l’état réel du système**, pas des valeurs fixes.

----------------------------------------------------------------------
OBJECTIF GLOBAL
---------------
Ce projet vous apprend à :
    - utiliser les outils réseau Linux comme un administrateur système,
    - comprendre les mécanismes internes du réseau,
    - écrire des scripts Bash robustes et non dépendants de valeurs fixes,
    - analyser interfaces, routes, DNS, ARP, sockets,
    - distinguer les couches réseau (link, IPv4, IPv6),
    - diagnostiquer un environnement réseau dynamique.

======================================================================
