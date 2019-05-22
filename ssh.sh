#!/usr/bin/env bash

mkdir -p ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOU5N6WeXlyqMnCWRe2j/WNlONebWIFjHx+FO3qoNRBWM8SgDpfmBAky+6K7u+nMHxwpwSGqAmMb1GXDL7/ap9gsr6xJVN3Hn+/RsxTJLLozcxD2tvgup4/K+jwtfokdCrQHsQfL2HJeMndoSYuPfHsbJMY1RQQYiY6LoWOP+HPuIrTJVhdgnwqKBvok2XQM/564YIZ8OjR46FjhR5X1nQcuV10JhitsRfMBz/Zt+qQrnPFC3hbNMkm1+JkdvscS0kjc0smgV4OJDyY8DBeCVPsYVUmOLHzmR6jURlWCUt82Mkc775CV1WrHctsf6rCU/9nV+fpSpn2eo5waGVTtXt hiephm@hiephm.com" >> ~/.ssh/authorized_keys
chmod 700 .ssh
chmod 600 .ssh/authorized_keys
