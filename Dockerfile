FROM emirozbir/devopsturkey:latest
ADD . $GOPATH/src/terratest/tests/
WORKDIR $GOPATH/src/terratest/tests/
RUN dep ensure