Install minikube
================

Install
-------
- Follow the steps [here](https://minikube.sigs.k8s.io/docs/start/).

Troubleshooting
---------------
- Error : `system validation failed - Following Cgroup subsystem not mounted: [memory]`
    1. Add `cgroup_enable=memory` in `/boot/firmware/cmdline.txt`.
    2. Reboot.

Install kubectl
===============

Install
-------
- Follow the steps [here](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/).