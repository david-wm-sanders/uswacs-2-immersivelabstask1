FROM ubuntu:18.04

# Update, upgrade and install some early pre-reqs
RUN apt-get update \
&& apt-get upgrade -yq \
&& apt-get install -yq \
net-tools \
vim \
openssh-server \
unzip \
wget \
curl \
git \
apache2 \
&& apt-get -y clean \
&& apt-get autoremove -yq

# This will add a file from your LOCAL machine which is in the same directory as the docker file and add it to the /var/www/html
ADD index.html /var/www/html

# Configure apache2 stuff
# RUN mkdir -p /run/apache2
# RUN export APACHE_RUN_DIR=/var/apachex/rundir

# Configure Linux user which allows you to SSH in once the CMD command has been run.
RUN useradd -ms /bin/bash linux && \
echo 'linux:test12345' | chpasswd

# Set up the sshd directory
RUN mkdir -p /run/sshd

# Configure the workdir and expose ports for apache2
# WORKDIR /var/www/html/
# EXPOSE 80 8080 443

# Command to hold container open
CMD ["/usr/sbin/sshd", "-D"]

# Command to start apache
CMD ["/usr/sbin/apache2ctl", "start"]
