# vagrant-cite

A vagrant VM configuration for  for VirtualBox, setting up a working system for scholarly projects working with the CITE architecture.  It includes everything needed to work through my *Brief Notes on Fundamentals of Digital Humanities* 
(LINK TO BE ADDED).

The project currently includes one build, for Ubuntu 13.10 (saucy) in the ubuntu-saucy directory.

For details about the virtual machine, see [the project wiki](https://github.com/neelsmith/vagrant-cite/wiki).
=======
# hmt-vm

A virtual machine for editorial work on Homer Multitext project.

## Prerequisites ##

- vagrant: <http://www.vagrantup.com>
- virtualbox: <https://www.virtualbox.org/>

## Initial build ##

    vagrant up
    vagrant plugin install vagrant-vbguest

## Regular usage

ssh to the virtual machine 

    vagrant ssh

Then update all HMT repositories in the virtual machine:

    sh /vagrant/refresh-hmt.sh
