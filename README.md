# Standardisation des systèmes

[![Build
Status](https://travis-ci.org/sitle/packer.svg?branch=master)](https://travis-ci.org/sitle/packer) [![Code Climate](https://codeclimate.com/github/sitle/packer/badges/gpa.svg)](https://codeclimate.com/github/sitle/packer)

[travis]: https://travis-ci.org/sitle/packer

Ce projet permet de générer des images systèmes identiques pour le développement et la production, ceci afin de minimiser les impacts fonctionnels lors des mises en production. Toutes les images systèmes générés prennent 10Go d'espace disques une fois déployées. LVM a été intégré dans les images (à l'exception des images OPENSTACK) afin de simplifier le redimensionnement des disques suivant vos besoins.

Les images systèmes seront mise à jour tout les débuts de mois afin d'intégrer les derniers correctifs.

## Listes des images systèmes disponibles

### Développement

Les systèmes de développement sont des images utilisables par [Vagrant](http://docs.vagrantup.com/v2/why-vagrant/index.html).

#### Ubuntu 12.04 LTS
* Virtualbox ([download](http://bit.ly/1xBqjzJ))
```
vagrant init ubuntu12.04 http://bit.ly/1xBqjzJ
```
* VMware Fusion/Workstation ([download](http://bit.ly/1qBqkyz))
```
vagrant init ubuntu12.04 http://bit.ly/1qBqkyz
```
* Virtualbox avec Chef ([download](http://bit.ly/1uGLQSj))
```
vagrant init ubuntu12.04-chef http://bit.ly/1uGLQSj
```
* VMware Fusion/Workstation avec Chef ([download](http://bit.ly/1qaxsDi))
```
vagrant init ubuntu12.04-chef http://bit.ly/1qaxsDi
```

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

#### Centos 6.5
* [centos6.5-dev-virtualbox.box](http://repository.srv.gov.pf/os/centos-6.5-dev-virtualbox.box) (Virtualbox + Vagrant)
* [centos6.5-dev-vmware.box](http://repository.srv.gov.pf/os/centos-6.5-dev-vmware.box) (Vmware Fusion/Vmware Workstation + Vagrant)
* [centos6.5-dev-virtualbox-cm.box](http://repository.srv.gov.pf/os/centos-6.5-dev-virtualbox.box) (Virtualbox + Vagrant + chef + puppet - soon)
* [centos6.5-dev-vmware-cm.box](http://repository.srv.gov.pf/os/centos-6.5-dev-vmware.box) (Vmware Fusion/Vmware Workstation + Vagrant + chef + puppet - soon)

#### Oracle Linux Enterprise 6.4
* [oel6.4-dev-virtualbox.box](http://repository.srv.gov.pf/os/oel-6.4-dev-virtualbox.box) (Virtualbox + Vagrant)
* [oel6.4-dev-vmware.box](http://repository.srv.gov.pf/os/oel-6.4-dev-vmware.box) (Vmware Fusion/Vmware Workstation + Vagrant)
* [oel6.4-dev-virtualbox.box](http://repository.srv.gov.pf/os/oel-6.4-dev-virtualbox.box) (Virtualbox + Vagrant + chef + puppet - soon)
* [oel6.4-dev-vmware.box](http://repository.srv.gov.pf/os/oel-6.4-dev-vmware.box) (Vmware Fusion/Vmware Workstation + Vagrant + chef + puppet - soon)

### Production

Les images systèmes de production seront disponible directement sous Vsphere ou via Glance pour Openstack. N'oubliez pas de changer le mot de passe du compte sysadmin (changeit).

#### Ubuntu 12.04 LTS
* [ubuntu12.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-vmware.ova) (Vsphere)
* [ubuntu12.04-prod-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-kvm.qcow2) (Openstack)

#### Ubuntu 14.04 LTS
* [ubuntu14.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-vmware.ova) (Vsphere)
* [ubuntu14.04-prod-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-kvm.qcow2) (Openstack)

#### Debian 7.5
* [debian7.5-prod-vmware.ova](http://repository.srv.gov.pf/os/debian-7.5-prod-vmware.ova) (Vsphere)
* [debian7.5-prod-kvm.qcow2](http://repository.srv.gov.pf/os/debian-7.5-prod-kvm.qcow2) (Openstack - very soon)

#### Centos 6.5
* [centos6.5-prod-vmware.ova](http://repository.srv.gov.pf/os/centos-6.5-prod-vmware.ova) (Vsphere)
* [centos6.5-prod-kvm.qcow2](http://repository.srv.gov.pf/os/centos-6.5-prod-kvm.qcow2) (Openstack - soon)

#### Oracle Linux Enterprise 6.4
* [oel6.4-prod-vmware.ova](http://repository.srv.gov.pf/os/oel-6.4-prod-vmware.ova) (Vsphere)
* [oel6.4-prod-kvm.qcow2](http://repository.srv.gov.pf/os/oel-6.4-prod-kvm.qcow2) (Openstack - soon)

## Construire les images systèmes

Pour construire les images systèmes, il vous faut installer les pré-requis suivant :

* packer (voir http://www.packer.io)
* virtualbox (voir http://www.virtualbox.org)
* ruby/ruby-dev

```
sudo apt-get install ruby ruby-dev
```

* rake

```
sudo gem install rake
```

* rainbow

```
sudo gem install rainbow
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

* Ubuntu 12.04 pour virtualbox (DEV)

```
rake dev:build systeme=ubuntu hypervisor=virtualbox version=12.04
```

* Ubuntu 12.04 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:build systeme=ubuntu hypervisor=vmware version=12.04
```

* Ubuntu 12.04 pour kvm (DEV)

```
rake dev:build systeme=ubuntu hypervisor=kvm version=12.04
```

* Ubuntu 14.04 pour virtualbox (DEV)

```
rake dev:build systeme=ubuntu hypervisor=virtualbox version=14.04
```

* Ubuntu 14.04 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:build systeme=ubuntu hypervisor=vmware version=14.04
```

* Ubuntu 14.04 pour kvm (DEV)

```
rake dev:build systeme=ubuntu hypervisor=kvm version=14.04
```

* Debian 7.5 pour virtualbox (DEV)

```
rake dev:build systeme=debian hypervisor=virtualbox version=7.5
```

* Debian 7.5 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:build systeme=debian hypervisor=vmware version=7.5
```

* Centos 6.5 pour virtualbox (DEV)

```
rake dev:build systeme=centos hypervisor=virtualbox version=6.5
```

* Centos 6.5 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:build systeme=centos hypervisor=vmware version=6.5
```

* Oracle Enterprise Linux 6.4 pour virtualbox (DEV)

```
rake dev:build systeme=oel hypervisor=virtualbox version=6.4
```

* Oracle Enterprise Linux 6.4 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:build systeme=oel hypervisor=vmware version=6.4
```

### Production

Les systèmes de production ne contient pas de compte vagrant, celui-ci est remplacé par le compte sysadmin (password: changeit). Ces images seront utilisés par VMWare et Openstack (KVM).

* Ubuntu 12.04 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:build systeme=ubuntu hypervisor=vmware version=12.04
```

* Ubuntu 14.04 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:build systeme=ubuntu hypervisor=vmware version=14.04
```

* Ubuntu 12.04 pour Openstack-kvm QCOW2 (PROD)

```
rake prod:build systeme=ubuntu hypervisor=kvm version=12.04
```

* Ubuntu 14.04 pour Openstack-kvm QCOW2 (PROD)

```
rake prod:build systeme=ubuntu hypervisor=kvm version=14.04
```

* Debian 7.5 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:build systeme=debian hypervisor=vmware version=7.5
```

* Centos 6.5 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:build systeme=centos hypervisor=vmware version=6.5
```

* Oracle Enterprise Linux 6.4 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:build systeme=oel hypervisor=vmware version=6.4
```
### Validation des templates

Une procédure de validation a été écrite et est utilisable de la manière
suivante :

```
rake validate
```

### Déploiement

Une procédure de déploiement a été écrite et est utilisable de la manière suivante :

```
rake deploy
```

Il vous faudra un compte sur le serveur permettant le déploiement des images systèmes. Une fois le déploiement effectué, les images sont disponibles sur ce site : http://repository.srv.gov.pf/os.

## Participer aux développements de ce projet

Vous pouvez participer à ce projet en le forkant et en soumettant des PR (Pull Request).

