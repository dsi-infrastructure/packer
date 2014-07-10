Ce projet permet de générer des images systèmes identiques pour le développement et la production, ceci afin de minimiser les impacts fonctionnels lors des mises en production.

## Listes des images systèmes disponibles

### Développement

#### Ubuntu LTS
* [ubuntu12.04-dev-virtualbox.box](http://repository.srv.gov.pf/os/ubuntu-12.04-dev-virtualbox.box) (Virtualbox + Vagrant)
* [ubuntu12.04-dev-vmware.box](http://repository.srv.gov.pf/os/ubuntu-12.04-dev-vmware.box) (Vmware Fusion/Vmware workstation + Vagrant)
* [ubuntu12.04-dev-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu12.04-dev-kvm.qcow2) (Qemu-kvm/virt-manager)
* [ubuntu14.04-dev-virtualbox.box](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-virtualbox.box) (Virtualbox + Vagrant)
* [ubuntu14.04-dev-vmware.box](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-vmware.box) (Vmware Fusion/Vmware workstation + Vagrant)
* [ubuntu14.04-dev-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-kvm.qcow2) (Qemu-kvm/virt-manager)

#### Debian 7.5
* [debian7.5-dev-virtualbox.box](http://repository.srv.gov.pf/os/debian-7.5-dev-virtualbox.box) (Virtualbox + Vagrant)
* [debian7.5-dev-vmware.box](http://repository.srv.gov.pf/os/debian-7.5-dev-vmware.box) (Vmware Fusion/Vmware workstation + Vagrant)

#### Centos 6.5
* [centos6.5-dev-virtualbox.box](http://repository.srv.gov.pf/os/centos-6.5-dev-virtualbox.box) (Virtualbox + Vagrant)

### Production

#### Ubuntu LST
* [ubuntu12.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-vmware.ova) (Vsphere)
* [ubuntu14.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-vmware.ova) (Vsphere)
* [ubuntu12.04-prod-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-kvm.qcow2) (Openstack)
* [ubuntu14.04-prod-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-kvm.qcow2) (Openstack)

#### debian 7.5
* [debian7.5-prod-vmware.ova](http://repository.srv.gov.pf/os/debian-7.5-prod-vmware.ova) (Vsphere)


## Construire les images systèmes

Pour construire les images systèmes, il vous faut installer les pré-requis suivant :

* packer (voir http://www.packer.io)
* virtualbox (voir http://www.virtualbox.org)
* ruby/ruby-dev

```sudo apt-get install ruby ruby-dev```

* rake

```sudo gem install rake```

* rainbow

```sudo gem install rainbow```

Si vous voulez créer des images spécifiques aux plateformes VMWARE ou KVM (notamment pour Openstack), il vous faudra installer, en plus :

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

* Centos 6.5 pour virtualbox (DEV)

```
rake dev:build systeme=centos hypervisor=virtualbox version=6.5
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

## Participer aux développements de ce projet

Vous pouvez participer à ce projet en le forkant et en soumettant des PR (Pull Request).

### A faire

* Centos 6.5
* Oracle Enterprise Linux 6.5