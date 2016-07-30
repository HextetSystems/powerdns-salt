dnsdist.repo:
  pkgrepo.managed:
    - humanname: dnsdist
    - name: deb http://repo.powerdns.com/debian jessie-dnsdist-10 main
    - dist: jessie-dnsdist-10
    - file: /etc/apt/sources.list.d/dnsdist.list
    - keyid: FD380FBB
    - keyserver: keys.gnupg.net
    - refresh_db: true

dnsdist:
  pkg.installed:
    - fromrepo: jessie-dnsdist-10


/etc/apt/preferences.d/dnsdist:
  file:
    - managed
    - source: salt://roles/dnsdist/preferences.d-dnsdist
    - require:
      - pkg: dnsdist
