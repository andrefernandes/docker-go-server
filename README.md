docker-go-server
================

CentOS 7 + Go Server (from Thoughtworks)

Based on previous work from "extraordinaire/docker-gocd-server".

This is a basic Go CD Server (Thoughtworks) based on CentOS 7.

The Dockerfile got some improvements in order *not* to run go in
daemon mode (this is Docker after all) and to stay out of "root".

Git and SVN are pre-installed. Git also has a pre-built key pair.
The public key can be obtained from:

    ./runbash.sh cat /var/go/.ssh/id_rsa.pub

TODO:
Declare volumes to permit mounting of persistent data.

