oc delete all --all
for i in *yaml;do oc create -f $i;done;oc start-build simple-test
