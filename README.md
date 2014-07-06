## Pré-requis

* packer
* virtualbox
* rake
* rainbow ```sudo gem install rainbow```

Si vous voulez créer des images spécifiques aux plateformes VMWARE ou KVM, il vous faudra, en plus, installer :

* vmware-workstation
* kvm


## Utilisation

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

## Sortie

* [ubuntu12.04-dev-virtualbox.box](http://repository.srv.gov.pf/os/ubuntu-12.04-dev-virtualbox.box)
* [ubuntu12.04-dev-vmware.box](http://repository.srv.gov.pf/os/ubuntu-12.04-dev-vmware.box)
* [ubuntu12.04-dev-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu12.04-dev-kvm.qcow2)
* [ubuntu14.04-dev-virtualbox.box](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-virtualbox.box)
* [ubuntu14.04-dev-vmware.box](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-vmware.box)
* [ubuntu14.04-dev-kvm.qcow2](http://repository.srv.gov.pf/os/ubuntu-14.04-dev-kvm.qcow2)

