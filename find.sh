find . -type f -name '*.tar*' -exec sh -c 'set -x && fp=$(basename "${0}") && echo ${fp}&& cd $( dirname "${0}") && pwd && tar xvf "${fp}"|| /home/admin/pytar.py "${fp}" && rm "${fp}"' {} ";"
mkdir -p /home/admin/nfs/ext_hdd/by-uuid/792f935f-9bdb-46b6-a7c4-df74519c9b08/pron/
find . -maxdepth 3 -mindepth 3 -type d -exec sh -c 'set -x && mv "${0}" ../pron/' {} ";"
mkdir -p /home/admin/nfs/ext_hdd/by-uuid/792f935f-9bdb-46b6-a7c4-df74519c9b08/pron2/
find . -maxdepth 3 -mindepth 3 -type d -exec sh -c 'set -x && mv "${0}" ../pron2/' {} ";"
mkdir -p /home/admin/nfs/ext_hdd/by-uuid/792f935f-9bdb-46b6-a7c4-df74519c9b08/pron-file/
find . -maxdepth 3 -mindepth 3 -type d -exec sh -c 'set -x && mv "${0}" ../pron-file/' {} ";"
