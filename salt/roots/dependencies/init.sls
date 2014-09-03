# dependencies/init.sls

include:
  - postgres

python3-pip:
  pkg:
    - installed

install-requirements:
  cmd:
    - run
    - name: pip3 install -r /home/vagrant/app/requirements.txt
    - requires:
        - pkg: python3-pip

install-psycopg2:
  cmd:
    - run
    - name: pip3 install psycopg2
    - requires:
        - cmd: install-requirements
        - pkg: postgresql-server-dev-9.3
