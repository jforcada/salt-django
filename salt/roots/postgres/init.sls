# postgres/init.sls

postgresql:
  pkg:
    - installed
    - name: postgresql-9.3
  service:
    - running
    - enable: True
    - reload: True
    - requires:
        - pkg: postgresql

postgresql-server-dev-9.3:
  pkg:
    - installed
    - requires:
        - pkg: postgresql

create-db-user:
  postgres_user:
    - present
    - name: vagrant
    - createdb: True
    - createroles: True
    - login: True
    - superuser: True
    - password: vagrant
    - requires:
        - service: postgresql

create-db:
  postgres_database:
    - present
    - name: appdb
    - db_user: vagrant
    - db_password: vagrant
    - user: vagrant
    - requires:
        - postgres_user: create-db-user
