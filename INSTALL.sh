# Install the BC Brands Package Manager

chmod 755 main.sh

mkdir /etc/bcpackage/
mkdir /etc/bcpackage/bin/

mv ./bin/main.sh /etc/bcpackage/bin/bcpackage
mv download.sh /etc/bcpackage/download.sh

COMMAND="export PATH=${PATH}:/etc/bcpackage/bin/"

echo $COMMAND >> ~/.bashrc