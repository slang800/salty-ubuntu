# ensure root account is locked
root:
  user.present:
    - password: !

# the default password is core2062
slang:
  user.present:
    - fullname: Sean Lang
    - home: /home/slang
    - shell: /bin/bash
    - password: $6$nAyU0elf$6.KccOIgvX/UFF9kuXZ3gmV/jkrCt8mKuBMoE6.2Q/6gjv9rjgVLHnskAZHv0blZgNy8HErlqpUuZ0Iz4vN0I1
    - groups:
      - sudo
      - www-data

git_email:
  git.config:
    - name: user.email
    - value: slang800@gmail.com
    - user: slang
    - is_global: True

git_name:
  git.config:
    - name: user.name
    - value: Sean Lang
    - user: slang
    - is_global: True

/home/slang/.bashrc:
  file.managed:
    - source: salt://users/.bashrc
    - user: slang
    - group: slang
    - require:
      - user: slang
