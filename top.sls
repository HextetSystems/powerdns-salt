base:
  'G@os:debian and G@roles:pdns-server':
    - match: compound
    - roles.pdns-server

  'G@os:debian and G@roles:pdns-recursor':
    - match: compound
    - roles.pdns-recursor

  'G@os:debian and G@roles:dnsdist':
    - match: compound
    - roles.dnsdist
