# Overview
- docker template for ctf

# Available tools
## crypto
Available in `crypto` branch.
- python
  - pycryptodome
  - gmpy2
- sagemath

## rev, pwn
Available in `master` branch.
- gdb(gdb-peda)
- gdbserver
- checksec
- one_gadget
- Pwngdb
- objdump
- readelf
- hexdump
- etc..

# Usage

```
$ docker-compose up -d --build
$ docker-compose exec dev /bin/bash # log in to container
```
