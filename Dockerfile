FROM emirozbir/devopsturkey:latest
RUN wget https://releases.hashicorp.com/packer/1.4.2/packer_1.4.2_linux_amd64.zip && unzip -d /tmp/packer/ packer_1.4.2_linux_amd64.zip && mv /tmp/packer/packer /usr/local/bin
ADD . $GOPATH/src/terratest/tests/
WORKDIR $GOPATH/src/terratest/tests/
RUN dep ensure