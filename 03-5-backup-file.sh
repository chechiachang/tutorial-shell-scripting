#!/bin/bash
# Back up files

BACKUPFILE=backup-$(date +%m-%d-%Y)
archive=${1:-$BACKUPFILE}

tar cvf - `find . -mtime -l -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archieve file \"$archive.tar.gz\"."

exit 0
