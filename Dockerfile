# This file is a template, and might need editing before it works on your project.
FROM gradle:7.5.1-jdk17

RUN set -o errexit -o nounset \
    && apt-get update \
    && apt-get install --yes \
        docker.io \
        gnupg2 \
    && rm --recursive --force /var/lib/apt/lists/* \
    && cd /usr/bin \
    && curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
