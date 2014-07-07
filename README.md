Ce projet permet de générer des images systèmes identiques pour le développement et la production.

## Pré-requis

* packer
* virtualbox
* ruby/ruby-dev ```sudo apt-get install ruby ruby-dev```
* rake ```sudo gem install rake```
* rainbow ```sudo gem install rainbow```

Si vous voulez créer des images spécifiques aux plateformes VMWARE ou KVM, il vous faudra, en plus, installer :

* vmware-workstation
* kvm ```sudo apt-get install qemu-kvm```

## Utilisation

### Développement

Les systèmes de développement sont des images utilisables par Vagrant.

* Ubuntu 12.04 pour virtualbox (DEV)

```
rake dev:create systeme=ubuntu hypervisor=virtualbox version=12.04
```

* Ubuntu 12.04 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:create systeme=ubuntu hypervisor=vmware version=12.04
```

* Ubuntu 12.04 pour kvm (DEV)

```
rake dev:create systeme=ubuntu hypervisor=kvm version=12.04
```

* Ubuntu 14.04 pour virtualbox (DEV)

```
rake dev:create systeme=ubuntu hypervisor=virtualbox version=14.04
```

* Ubuntu 14.04 pour vmware-workstation/vmware fusion (DEV)

```
rake dev:create systeme=ubuntu hypervisor=vmware version=14.04
```

* Ubuntu 14.04 pour kvm (DEV)

```
rake dev:create systeme=ubuntu hypervisor=kvm version=14.04
```

### Production

Les systèmes de production ne contient pas de compte vagrant, celui-ci est remplacé par le compte sysadmin (password: changeit). Ces images seront utilisés par VMWare et Openstack (KVM).

* Ubuntu 12.04 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:create systeme=ubuntu hypervisor=vmware version=12.04
```

* Ubuntu 14.04 pour vmware-esx/vmware-vsphere <= 5.1 (PROD)

```
rake prod:create systeme=ubuntu hypervisor=vmware version=14.04
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

### Production

* [ubuntu12.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-12.04-prod-vmware.ova)
* [ubuntu14.04-prod-vmware.ova](http://repository.srv.gov.pf/os/ubuntu-14.04-prod-vmware.ova)

