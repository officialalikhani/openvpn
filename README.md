# OpenVPN Docker image

Fill your configuration file on myconfig.ovpn with your username ,password and content of your certificate file. \
And use OpenVPN with my openvpn image on my docker repository. \
You should put all these files on a new directory that name /ovpn on your root directory. \

So Run this command on your root directory.
```bash
mkdir ovpn
```
And then , you should get this image 

```bash
docker pull officialalikhani/openvpn
```

And finally Run a container with this command. 

```bash
docker run -it --rm --cap-add=NET_ADMIN --device /dev/net/tun -v /root/ovpn:/root officialalikhani/openvpn
```
