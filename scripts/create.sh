function readlinkf() {
    python -c 'import os,sys;print os.path.realpath(sys.argv[1])' $1
}
cd "$(dirname $(readlinkf $0/../))/fragments"

oc delete all --all
for i in *yaml;do oc create -f $i;done;oc start-build simple-test
