Ce projet permet de générer des images systèmes identiques pour le développement et la production, ceci afin de minimiser les impacts fonctionnels lors des mises en production.

## A faire

* Debian 7.4
* Centos 6.5
* Oracle Enterprise Linux 6.5

## Pré-requis

* packer (voir http://www.packer.io)
* virtualbox (voir http://www.virtualbox.org)
* ruby/ruby-dev ```sudo apt-get install ruby ruby-dev```
* rake ```sudo gem install rake```
* rainbow ```sudo gem install rainbow```

Si vous voulez créer des images spécifiques aux plateformes VMWARE ou KVM, il vous faudra, en plus, installer :

* vmware-workstation (voir http://www.vmware.com)
* kvm ```sudo apt-get install qemu-kvm```

## Utilisation

Merci de vérifier ce que vous tapez, ces procédures sont valides vu le nombre incalculable de fois qu'elles sont été lancé ^^"

### Développement

Les systèmes de développement sont des images utilisables par Vagrant.

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

### Déploiement

Une procédure de déploiement a été écrite et est utilisable de la manière suivante :

```
rake deploy
```

Il vous faudra un compte sur le serveur permettant le déploiement des images systèmes. Une fois le déploiement effectué, les images sont disponibles sur ce site : http://repository.srv.gov.pf/os.

## Listes des images générés disponibles

### Développement

* [ubuntu12.04-dev-virtualbox.box](http://repository.srv.gov.pf/os/ubuntu-12.04-dev-virtualbox.box)
* [ubuntu12.04-dev-vmware.box](http://repository.srv.gov.pf/os/ubuntu-12.04-dev-vmware.box)
* [ubuntu12.04-dev-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu12.04-dev-kvm.qcow2)
* [ubuntu14.04-dev-virtualbox.box](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-virtualbox.box)
* [ubuntu14.04-dev-vmware.box](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-vmware.box)
* [ubuntu14.04-dev-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-kvm.qcow2)
* [debian7.5-dev-virtualbox.box](http://repository.srv.gov.pf/os/debian-7.5-dev-virtualbox.box)
* [debian7.5-dev-vmware.box](http://repository.srv.gov.pf/os/debian-7.5-dev-vmware.box)

### Production

* [ubuntu12.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-vmware.ova) (Vsphere)
* [ubuntu14.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-vmware.ova) (Vsphere)
* [debian7.5-prod-vmware.ova](http://repository.srv.gov.pf/os/debian-7.5-prod-vmware.ova) (Vsphere)
* [ubuntu12.04-prod-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-kvm.qcow2) (Openstack)
* [ubuntu14.04-prod-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-kvm.qcow2) (Openstack)

## Participer aux développements de ce projet

Vous pouvez participer à ce projet en le forkant et en soumettant des PR (Pull Request).
