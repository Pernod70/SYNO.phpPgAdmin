#!/bin/sh

chown -R root:root desktop etc phpPgAdmin ui
chmod -R 444 *
chmod -R a+X *
chmod -R u+rw *
tar -czf package.tgz -X exclude.txt desktop etc phpPgAdmin ui

chown -R root:root scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG
chmod -R 755 *
tar -cvf ../spk/phpPgAdmin-5.1.0-002.spk -X exclude.txt scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG

exit 0