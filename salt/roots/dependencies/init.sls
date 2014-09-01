python3-pip:
  pkg:
    - installed

install-requirements:
  cmd:
    - run
    - name: pip3 install -r /home/vagrant/app/requirements.txt
    - requires:
        - python3-pip
