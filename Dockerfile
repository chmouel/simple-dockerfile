FROM openshift3/python-33-rhel7
EXPOSE 8000
RUN cat /etc/resolv.conf;/usr/sbin/ip a;/usr/sbin/r
RUN curl -Lv http://maven.repository.redhat.com
CMD  python -m SimpleHTTPServer 8000
