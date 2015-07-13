echo mysql -h 127.0.0.1 -uchmouel -pchmouel chmouel
oc port-forward  -p $(oc get pod|grep Running|grep -E 'simple-test-db'|awk '{print $1}') 3306:3306 

