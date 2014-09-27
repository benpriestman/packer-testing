%packer-testing
==============

Packer is a tool for building VM images. See http://www.packer.io/

Install:
Download from http://www.packer.io/downloads.html
Extract files to %imwops_tools$\HashiCorp\Vagrant

Testing with example.json from the Packer online docs.
Expanding to a Rackspace provider (see https://github.com/mitchellh/packer/pull/1260 for initial issues with 6.0.0)

Created (gitignored) batch file to populate the following settings:

REM AWS creds
set AWS_ACCESS_KEY_ID=*********************************
set AWS_SECRET_ACCESS_KEY=*********************************

REM Rackspace settings
set SDK_USERNAME=*********************************
set SDK_API_KEY=*********************************

To get details of available Rackspace images, use: rumm (http://rackspace.github.io/rumm/). For details of AWS images, use the aws cli, or web portal.

To build:

>creds.bat
>packer build templates\debian_7_base.json
or
>packer build templates\centos_6_base.json

The boot command passed to iso-based builds differs for different systems and relies on variables that don't exist in advance of the builders running, so cannot be easily paramterised away. Hence the OS-specific files.

Make sure to remove created images to avoid bills!


ToDO:
Amalgamate centos and debian builds.
Look at authentication to vbox builds
serialise vbox builds?
Configure basice puppet prerequisites with a shell script.
Build a Windows box.
Perform further configuration with puppet.


