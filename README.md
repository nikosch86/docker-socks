# docker-socks
minimal docker image to create a portable ssh server inside a docker container.  
this can be used for proxying, pivoting or just harnessing a shell in any way on a remote system.  

a user account `user` is added, a random password is generated and will be displayed on stdout.  
The variable `SSH_PUBLIC_KEY` can be used to inject your public key  

`docker run -d -p8022:22 nikosch86/docker-socks`  
where `8022` is the port you want to connect to, the local socks proxy can be started like this:  
`ssh -D1080 -p8022 -fN -luser <public_ip>`  

if you want to use it in proxychains, the config line would look like this:  
`socks5 127.0.0.1 1080`
