#!/bin/bash
# Try pipe

echo ls -l | sh

cat *.sh | sort | uniq

ls | tr 'a-z' 'A-Z'

touppercase () {
	tr 'a-z' 'A-Z'
}

ls -l | touppercase 

# pipe runs as a child process, and therefore cannot alter script variables


