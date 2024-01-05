FROM ubuntu:latest

ENV GIT_PYTHON_REFRESH=quiet

RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    python3 \
    python3-pip \
    git

ARG TERRAFORM_VERSION=1.1.0
RUN curl -fsSL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform.zip && \
    unzip terraform.zip -d /usr/local/bin && \
    rm terraform.zip

RUN terraform --version

RUN pip3 install terraform-compliance

WORKDIR /app

ENV PLUGIN_OPTION=""

COPY script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["/usr/local/bin/script.sh"]
