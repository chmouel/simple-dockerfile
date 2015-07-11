oc exec -p $(oc get pod|grep Running|grep -E 'simple-test-[0-9]'|awk '{print $1}') -i -t -- bash -il
