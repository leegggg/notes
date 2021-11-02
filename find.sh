find . -type f -name '*.tar*' -exec sh -c 'set -x && fp=$(basename "${0}") && echo ${fp}&& cd $( dirname "${0}") && pwd && tar xvf "${fp}"|| /home/admin/pytar.py "${fp}" && rm "${fp}"' {} ";"
