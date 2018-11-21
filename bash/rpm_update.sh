#!/bin/bash
# Script to update package manager
# Script tested by Christopher Upkes, 6-21-2018
#######################################################

if [ -e /etc/yum.repos.d/neo4j.repo ]; then
	rm /etc/yum.repos.d/neo4j.repo
fi
rpm --import http://debian.neo4j.org/neotechnology.gpg.key
cat <<EOF>  /etc/yum.repos.d/neo4j.repo
[neo4j]
name=Neo4j RPM Repository
baseurl=http://yum.neo4j.org/stable
enabled=1
gpgcheck=1
EOF

