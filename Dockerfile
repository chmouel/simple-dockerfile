FROM openshift3/python-33-rhel7
EXPOSE 8000
CMD  python -m SimpleHTTPServer 8000
