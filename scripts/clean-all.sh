#!/bin/bash

XARGS=xargs
type -p gxargs >/dev/null && XARGS=gxargs

T="pvc build rc dc is bc pod route service template"

for t in ${T};do
    oc delete ${t} --all
done
