function readlinkf() {
    python -c 'import os,sys;print os.path.realpath(sys.argv[1])' $1
}
cd "$(dirname $(readlinkf $0/../))/fragments"


oc exec -p $(oc get pod|grep Running|grep -E 'simple-test-[0-9]'|awk '{print $1}') -i -t -- bash -il
