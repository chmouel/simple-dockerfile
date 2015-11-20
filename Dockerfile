FROM registry.access.redhat.com/openshift3/ruby-20-rhel7
EXPOSE 8000
RUN ls /etc/yum.repos.d/
CMD  python -m SimpleHTTPServer 8000
