#! /bin/sh

if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
    /usr/bin/ssh-keygen -A
    PASSWORD=$(pwgen -cnB 16 1)
    echo "user:$PASSWORD" | chpasswd
    echo "Generated password for user 'user': $PASSWORD"
    if [ ! -z "$SSH_PUBLIC_KEY" ]; then
      echo "injecting public key"
      echo "$SSH_PUBLIC_KEY" > /home/user/.ssh/authorized_keys
    else
      rm /home/user/.ssh/authorized_keys
    fi
fi

if [ -f /home/user/.ssh/authorized_keys ]; then
  echo "Content of /home/user/.ssh/authorized_keys:"
  cat /home/user/.ssh/authorized_keys
fi
