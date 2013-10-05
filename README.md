## Asheville VM Templates

These are Packer templates and associated provisioning scripts for
various Asheville services.

Currently, there is only one "type" of service, API, which configures your VM for:

- Python 2.7, virtualenv and pip
- Postgres

It is currently not intended to build images for production use, but
in the future, will build Amazon AMI's or other Packer-compatible cloud
images.

## Making Changes

If you make changes to the provisioning scripts, you can test them with:

    $ vagrant provision SERVICE_NAME
    ...

If you are happy with the result, you can then build new images:

    $ packer build SERVICE_NAME-template.json

That's it. Packer will build images and output them in the `boxes/`
directory.

## Development Dependencies

- [Packer](http://www.packer.io/)
- [Vagrant](http://www.vagrantup.com/)
- [Vagrant VMware Plugin](http://www.vagrantup.com/vmware)
- [VMware Fusion](http://www.vmware.com/products/fusion/)
- [VirtualBox](https://www.virtualbox.org/)

Technically you could run packer with `packer build -only=virtualbox template.json`
and not need to use VMware.
