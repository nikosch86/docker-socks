# docker-socks
minimal docker image to create a portable ssh server inside a docker container.  
this can be used for proxying, pivoting or just harnessing a shell in any way on a remote system.  

a user account `user` is added, a random password is generated and will be displayed on stdout.  
The variable `SSH_PUBLIC_KEY` can be used to inject your public key
