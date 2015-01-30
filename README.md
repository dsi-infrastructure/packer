# Standardisation des systèmes

[![Build
Status](https://travis-ci.org/dsi-infrastructure/packer.svg?branch=master)](https://travis-ci.org/dsi-infrastructure/packer) [![Gitter
chat](http://img.shields.io/badge/Gitter-dsi--infrastructure%2Fpacker-green.svg)](https://gitter.im/dsi-infrastructure/packer)

Ce projet permet de générer des images systèmes identiques pour le développement et la production, ceci afin de minimiser les impacts fonctionnels lors des mises en production. Toutes les images systèmes générés prennent 10Go d'espace disques une fois déployées. LVM a été intégré dans les images (à l'exception des images OPENSTACK) afin de simplifier le redimensionnement des disques suivant vos besoins.

## Listes des images systèmes disponibles

### Développement

Les systèmes de développement sont des images utilisables par [Vagrant](http://docs.vagrantup.com/v2/why-vagrant/index.html).

#### Ubuntu 14.04 LTS
* Virtualbox ([download](http://bit.ly/1nHCDF6))
```
vagrant init ubuntu14.04 http://bit.ly/1nHCDF6
```
* VMware Fusion/Workstation ([download](http://bit.ly/WJXRuE))
```
vagrant init ubuntu14.04 http://bit.ly/WJXRuE
```
* Virtualbox avec Chef ([download](http://bit.ly/1qBrpXj))
```
vagrant init ubuntu14.04-chef http://bit.ly/1qBrpXj
```
* VMware Fusion/Workstation avec Chef ([download](http://bit.ly/1pK1sQ8))
```
vagrant init ubuntu14.04-chef http://bit.ly/1pK1sQ8
```

#### Debian 7
* Virtualbox ([download](http://bit.ly/1nHCYaN))
```
vagrant init debian-7 http://bit.ly/1nHCYaN
```
* VMware Fusion/Workstation ([download](http://bit.ly/1w9Vu3u))
```
vagrant init debian-7 http://bit.ly/1w9Vu3u
```
* Virtualbox avec Chef ([download](http://bit.ly/1weDdiJ))
```
vagrant init debian-7-chef http://bit.ly/1weDdiJ
```
* VMware Fusion/Workstation avec Chef ([download](http://bit.ly/1tpmh7c))
```
vagrant init debian-7-chef http://bit.ly/1tpmh7c
```

#### Centos 6
* Virtualbox ([download](http://bit.ly/1nHCYaN))
```
vagrant init centos-6 http://bit.ly/1nHCYaN
```
* VMware Fusion/Workstation ([download](http://bit.ly/1w9Vu3u))
```
vagrant init centos-6 http://bit.ly/1w9Vu3u
```
* Virtualbox avec Chef ([download](http://bit.ly/1weDdiJ))
```
vagrant init centos-6-chef http://bit.ly/1weDdiJ
```
* VMware Fusion/Workstation avec Chef ([download](http://bit.ly/1tpmh7c))
```
vagrant init centos-6-chef http://bit.ly/1tpmh7c
```

#### Oracle Linux Enterprise 6
* Virtualbox ([download](http://bit.ly/1nHCYaN))
```
vagrant init oel-6 http://bit.ly/1nHCYaN
```
* VMware Fusion/Workstation ([download](http://bit.ly/1w9Vu3u))
```
vagrant init oel-6 http://bit.ly/1w9Vu3u
```
* Virtualbox avec Chef ([download](http://bit.ly/1weDdiJ))
```
vagrant init oel-6-chef http://bit.ly/1weDdiJ
```
* VMware Fusion/Workstation avec Chef ([download](http://bit.ly/1tpmh7c))
```
vagrant init oel-6-chef http://bit.ly/1tpmh7c
```

#### Redhat Enterprise Linux 5
* Virtualbox avec Chef ([download](http://bit.ly/1weDdiJ))
```
vagrant init redhat-5-chef http://bit.ly/1weDdiJ
```

### Production

Les images systèmes de production seront disponible directement sous Vsphere (ou via Glance pour Openstack). N'oubliez pas de changer le mot de passe du compte sysadmin (par défaut : changeit).

#### Ubuntu 14.04 LTS
* ubuntu14.04-prod-vmware.ova
* ubuntu14.04-prod-kvm.qcow2

#### Debian 7
* debian7-prod-vmware.ova
* debian7-prod-kvm.qcow2

#### Centos 6.5
* centos6-prod-vmware.ova
* centos6-prod-kvm.qcow2

#### Oracle Linux Enterprise 6.4
* oel6-prod-vmware.ova
* oel6-prod-kvm.qcow2

#### Redhat Enterprise 5.4
* redhat-5-prod-vmware.ova

## Construire les images systèmes

Pour construire les images systèmes, il vous faut installer les pré-requis suivant :

* packer (voir http://www.packer.io)
* virtualbox (voir http://www.virtualbox.org)
* ruby/ruby-dev

```
sudo apt-get install ruby ruby-dev
```

* bundler

```
sudo gem install bundler
```

* on installe maintenant les dépendances

```
cd packer
bundle install
```

Si vous voulez créer des images spécifiques aux plateformes VMWARE ou KVM (notamment pour Openstack), il vous faudra installer, en plus :

* vmware-workstation (voir http://www.vmware.com)
* kvm

```
sudo apt-get install qemu-kvm
```

## Utilisation

Merci de vérifier ce que vous tapez, ces procédures sont valides vu le nombre incalculable de fois qu'elles ont été lancés ^^"

### Développement

Les systèmes de développement sont des images utilisables par [Vagrant](http://docs.vagrantup.com/v2/why-vagrant/index.html).

* Ubuntu 14.04 (DEV)

```
rake dev:build systeme=ubuntu hypervisor=virtualbox version=14.04
rake dev:build systeme=ubuntu hypervisor=vmware version=14.04
rake dev:build systeme=ubuntu hypervisor=virtualbox version=14.04 cm=chef
rake dev:build systeme=ubuntu hypervisor=vmware version=14.04 cm=chef
```

* Debian 7 (DEV)

```
rake dev:build systeme=debian hypervisor=virtualbox version=7
rake dev:build systeme=debian hypervisor=vmware version=7
rake dev:build systeme=debian hypervisor=virtualbox version=7 cm=chef
rake dev:build systeme=debian hypervisor=vmware version=7 cm=chef
```

* Centos 6 (DEV)

```
rake dev:build systeme=centos hypervisor=virtualbox version=6
rake dev:build systeme=centos hypervisor=vmware version=6
rake dev:build systeme=centos hypervisor=virtualbox version=6 cm=chef
rake dev:build systeme=centos hypervisor=vmware version=6 cm=chef
```

* Oracle Enterprise Linux 6 (DEV)

```
rake dev:build systeme=oel hypervisor=virtualbox version=6
rake dev:build systeme=oel hypervisor=vmware version=6
rake dev:build systeme=oel hypervisor=virtualbox version=6 cm=chef
rake dev:build systeme=oel hypervisor=vmware version=6 cm=chef
```

* Redhat Enterprise Linux 5 (DEV)

```
rake dev:build systeme=redhat hypervisor=virtualbox version=5 cm=chef
```

### Production

Les systèmes de production ne contient pas de compte vagrant, celui-ci est remplacé par le compte sysadmin (password: changeit). Ces images seront utilisés par VMWare et Openstack (KVM).

* Ubuntu 14.04 (PROD)

```
rake prod:build systeme=ubuntu hypervisor=vmware version=14.04
rake prod:build systeme=ubuntu hypervisor=kvm version=14.04
```

* Debian 7 (PROD)

```
rake prod:build systeme=debian hypervisor=vmware version=7
rake prod:build systeme=debian hypervisor=kvm version=7
```

* Centos 6 (PROD)

```
rake prod:build systeme=centos hypervisor=vmware version=6
rake prod:build systeme=centos hypervisor=kvm version=6
```

* Oracle Enterprise Linux 6 (PROD)

```
rake prod:build systeme=oel hypervisor=vmware version=6
rake prod:build systeme=oel hypervisor=kvm version=6
```

* Redhat Enterprise Linux 5 (PROD)
```
rake prod:build systeme=redhat hypervisor=vmware version=5
```

### Validation des templates

Une procédure de validation a été écrite et est utilisable de la manière
suivante :

```
rake validate
```

## Participer aux développements de ce projet

Vous pouvez participer à ce projet en le forkant et en soumettant des PR (Pull Request).

