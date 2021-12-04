Install K8s
===========

Contents
--------
- [Install kubectl](#install-kubectl)
- [Install kubectl auto-completion](#install-kubectl-auto-completion)
- [Install minikube](#install-minikube)

Install kubectl
---------------
- Follow the steps [here](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/).

Install kubectl auto-completion
-------------------------------
- Follow the steps [here](https://kubernetes.io/docs/tasks/tools/included/optional-kubectl-configs-zsh/).

Install minikube
----------------
- Follow the steps [here](https://minikube.sigs.k8s.io/docs/start/).
- Troubleshooting
    - Error : `system validation failed - Following Cgroup subsystem not mounted: [memory]`
        1. Add `cgroup_enable=memory` in `/boot/firmware/cmdline.txt`.
        2. Reboot.
