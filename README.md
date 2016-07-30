# powerdns-salt

Salt states to set up powerdns (authoritative, recursor, and dnsdist) on Debian.

## top.sls usage

```
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
```
