# top.sls

# To debug provisioning, run in the minion
# $ sudo salt-call -l debug state.highstate

base:
  '*':
    - dependencies
    - nginx
    - uwsgi
    - postgres
