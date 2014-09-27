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
>packer templates\debian_7_base.json
or
>packer build templates\centos_6_base.json

The boot command passed to iso-based builds differs for different systems and relies on variables that don't exist in advance of the builders running, so cannot be easily paramterised away. Hence the OS-specific files.

Make sure to remove created images to avoid bills!


ToDO:
Work out what the available Rackspace images are. Need a way of talking to the API for that.
 Downloaded http://developer.rackspace.com/blog/powerclient-rackspace-cloud-api-powershell-client.html to help get image ids, but doesn't support non-us locations
 Can use the openstack nova-client (http://www.rackspace.com/knowledge_center/article/using-python-novaclient-with-the-rackspace-cloud). Gets us into python territory, though. and doesn't help with AWS. Authenticates with username/password combo.
 Trying rumm (http://rackspace.github.io/rumm/). Runs in ruby. Is targetted squarely at rackspace cloud and seems to be targetted towards rails apps. Nice and easy, though.
  Install ruby (http://rubyinstaller.org/downloads/)
  Install devkit (http://rubyinstaller.org/downloads/)
  cd to devkit location
   ruby dk.rb init
   ruby dk.rb install
  gem install rumm
 Trying fog (http://fog.io/), which underlies rumm.
  Install ruby (http://rubyinstaller.org/downloads/)
  gem install fog
   (takes ages to install rdocs!
 
Sort out vbox guest additions. This looks handy https://github.com/osuosl/packer-templates/blob/master/scripts/vbox-additions.sh
Look at authentication to vbox builds
serialise vbox builds?
Configure basice puppet prerequisites with a shell script.
Build a Windows box.
Perform further configuration with puppet.


