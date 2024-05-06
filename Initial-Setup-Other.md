# Other Installs

- Install Chrome, Vscode, Docker seperately
- copy google-chrome from .config

# Docker
- For docker, use snap. Its latest only.
- Check Linux Post intsall : https://docs.docker.com/engine/install/linux-postinstall/
```
sudo groupadd docker
sudo usermod -aG docker $USER
```
- And restart

# Git
- Setup github creds on local
- https://www.youtube.com/watch?v=bc3_FL9zWWs&t=267s

```
git config --global user.name "vishnukumarkvs"
git config --global user.email "kvsvishnukumar@gmail.com"
git config --list
```

- Git ssh setup
- https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/GitHub-SSH-Key-Setup-Config-Ubuntu-Linux
```
ssh-keygen -o -t rsa -C "kvsvishnukumar@gmail.com"

# id_rsa and id+rsa.pub will be created
# Copy pub key and create new ssh key in github
```