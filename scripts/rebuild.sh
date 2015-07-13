function readlinkf() {
    python -c 'import os,sys;print os.path.realpath(sys.argv[1])' $1
}
cd "$(dirname $(readlinkf $0/../))/fragments"

oc delete build --all;
git commit -a -m "MySQL";
git push -f origin with-mysql ;
oc start-build simple-test;
oc build-logs $(oc get build|tail -n1|awk '{print $1}')
