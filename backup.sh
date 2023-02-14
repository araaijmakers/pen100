#!/usr/bin/bash

echo "#include <stdlib.h>" > backup.c
echo "int main(int argc, char *argv[]) {" >> backup.c
echo 'system("tar -czvf /var/backups/backup.tar.gz /etc/shadow");' >> backup.c
echo "return 0;" >> backup.c
echo "}" >> backup.c
gcc backup.c -o backup
