# OpenVPN Docker image

Fill your configuration file on myconfig.ovpn with your username ,password and content of your certificate file. \
Make OpenVPN image with this Dockerfile with this command. \

```bash
Docker build . -t openvpn:v1
```
And finally Run a container with this command. \

```bash
docker run -it --rm --cap-add=NET_ADMIN --device /dev/net/tun -p   -v $PWD:$PWD 
```
