FROM openshift3/python-33-rhel7
EXPOSE 8000
RUN cat /etc/resolv.conf; curl -o/dev/null 94.143.114.220:80;sleep 1000
RUN curl -Lv http://maven.repository.redhat.com
CMD  python -m SimpleHTTPServer 8000
