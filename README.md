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

>creds.bat
>packer build example.json

Make sure to remove created images to avoid bills!


ToDO:
Work out what the avialble Rackspace images are (Downloaded http://developer.rackspace.com/blog/powerclient-rackspace-cloud-api-powershell-client.html to help get image ids, but doesn't seem to work.)
Parameterise/switch to multiple templates to cater for different OSes
Build a Windows box.
Configure basice puppet prerequisites with a shell script.
Perform further confiuration with puppet.


