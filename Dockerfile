FROM openshift3/python-33-rhel7
EXPOSE 8000
RUN mkdir /opt/openshift/src/code
COPY . /opt/openshift/src/code/
RUN scl enable python33 'virtualenv /opt/openshift/src/venv && \
    /opt/openshift/src/venv/bin/pip install -r /opt/openshift/src/code/requirements.txt' && \
    chmod 666 /opt/openshift/src/code/app.py

USER 1001

CMD scl enable python33 '/opt/openshift/src/venv/bin/python /opt/openshift/src/code/app.py'

