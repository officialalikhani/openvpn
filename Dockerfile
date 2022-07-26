FROM ubuntu
COPY ./myconfig.ovpn .
COPY ./pass.txt .
RUN apt-get update && apt-get install -y openvpn 
EXPOSE "Your PortNum"
CMD ["sh", "-c","openvpn --config myconfig.ovpn --auth-user-pass pass.txt"]
