postgresql:
  pkg:
    - name: postgresql-9.3
    - installed
  service:
    - running
    - enable: True
    - reload: True
    - requires:
        - pkg: postgres

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
