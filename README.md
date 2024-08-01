# Package-Manager
BC Brands Package Manager

BC Brands Package Manager allows you to download BC Brands software and any dependencies they may require.

## Packages
The packages available through the package manager is controlled by the BC Brands Software Centre.
The current list of packages can be found here: https://host.bcwd.site/downloads/.

## Mirrors
Only the following are official "Pool" servers. You should not use any other mirrors.
 - https://uk2.host.bcwd.site/downloads/
 - https://host.bcwd.site/downloads/package/

*This is now configured for you automatically, and you should not attempt to change this.*

# Installation
```
sudo apt install git
git clone https://github.com/BC-Brands/Package-Manager
cd Package-Manager
chmod 755 INSTALL.sh
./INSTALL.sh
```

## Getting Started
`bcpackage install [name]`
`bcpackage update [name]`
`bcpackage remove [name]`

## Contact
You can get in contact with us by emailing packages@bcwd.site.
For queries relating to the software, please contact software@bcwd.site

## Disclaimer
Note that whilst our Package Manager does its best to ensure that packages are legitimate and to minimise the risk of transmitting software viruses, it is ultimately your responsibility to carry out your own checks on any downloaded software. We do not accept liability for any errors, omissions in the contents of the software or loss and damage caused by software viruses.
The software downloaded through the package manager tool will have different licences, which you should check before using any software.
