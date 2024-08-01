#!/bin/bash

# Registered Software #00014 with the BC Brands Software Centre
# Copyright (C) 2024 BC Brands. All rights reserved.

# bcpackage install podcast-apache
if [ $1 = "install" ]
then
    # Install Package
    /etc/bcpackage/download.sh $2
elif [ $1 = "help" ]
then
    echo "Please see https://bcwd.site/bcpk for support."
else   
    echo "Command not found."
fi