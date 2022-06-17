# Jenkins SSH slave Docker image with Maven & Node.js

[![Docker](https://github.com/vassilis-karapatakis/jenkins-ssh-maven-node-slave/actions/workflows/docker.yml/badge.svg)](https://github.com/vassilis-karapatakis/jenkins-ssh-maven-node-slave/actions/workflows/docker.yml)

[![CodeFactor](https://www.codefactor.io/repository/github/vassilis-karapatakis/jenkins-ssh-maven-node-slave/badge)](https://www.codefactor.io/repository/github/vassilis-karapatakis/jenkins-ssh-maven-node-slave)

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/853af5b201f142ef94dcb5eb89020996)](https://www.codacy.com/gh/vassilis-karapatakis/jenkins-ssh-maven-node-slave/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=vassilis-karapatakis/jenkins-ssh-maven-node-slave&amp;utm_campaign=Badge_Grade)

Extend the [Jenkins SSH slave Docker image](https://hub.docker.com/r/jenkins/ssh-slave/) with [Apache Maven](https://maven.apache.org) and [Node.js](https://nodejs.org).

A [Jenkins](https://jenkins.io) slave using SSH to establish connection.

See [Jenkins Distributed builds](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) for more info.

## Running

To run a Docker container:

```shell
docker run vkarapatakis/jenkins-ssh-maven-node-slave "<public key>"
```

You'll then be able to connect this slave using ssh-slaves-plugin as "jenkins" with the matching private key.

### How to use this image with Docker Plugin

To use this image with [Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin), you need to
pass the public SSH key using environment variable `JENKINS_SLAVE_SSH_PUBKEY` and not as a startup argument.

In _Environment_ field of the Docker Template (advanced section), just add:

```text
JENKINS_SLAVE_SSH_PUBKEY=<YOUR PUBLIC SSH KEY HERE>
```

Don't put quotes around the public key. You should be all set.
