FROM kishor05/orobase-master
USER www-data

# HTTPS or SSH
# If you want to use ssh don't forget to provide ssh key via build arg directive
ARG GIT_URI="https://github.com/kparmar4505/aakroncrm-master.git"
#ARG GIT_URI="https://github.com/orocrm/crm-application.git"

# branch name or tag 
# master - for master branch
# tags/1.9.1 - for 1.9.1 tag 
ARG GIT_REF="tags/latest"

RUN install-application.sh

VOLUME ["/var/www"]

CMD ["/bin/bash", "-c", "while : ; do sleep 2; done"]