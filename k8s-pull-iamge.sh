#!/bin/bash
K8S_VERSION=v1.14.1
ETCD_VERSION=3.3.10
FLANNEL_VERSION=v0.11.0-amd64
DNS_VERSION=1.3.1
PAUSE_VERSION=3.1

docker pull mirrorgooglecontainers/kube-apiserver-amd64:$K8S_VERSION
docker pull mirrorgooglecontainers/kube-controller-manager-amd64:$K8S_VERSION
docker pull mirrorgooglecontainers/kube-proxy-amd64:$K8S_VERSION
docker pull mirrorgooglecontainers/kube-scheduler-amd64:$K8S_VERSION
docker pull mirrorgooglecontainers/etcd-amd64:$ETCD_VERSION
docker pull mirrorgooglecontainers/pause:$PAUSE_VERSION
docker pull coredns/coredns:$DNS_VERSION
docker pull quay.io/coreos/flannel:$FLANNEL_VERSION

docker tag mirrorgooglecontainers/kube-apiserveramd64:$K8S_VERSION k8s.gcr.io/kube-apiserver-amd64:$K8S_VERSION
docker tag mirrorgooglecontainers/kube-controller-manageramd64:$K8S_VERSION k8s.gcr.io/kube-controller-manager-amd64:$K8S_VERSION
docker tag mirrorgooglecontainers/kube-scheduleramd64:$K8S_VERSION k8s.gcr.io/kube-scheduler-amd64:$K8S_VERSION
docker tag mirrorgooglecontainers/kube-proxyamd64:$K8S_VERSION k8s.gcr.io/kube-proxy-amd64:$K8S_VERSION
docker tag mirrorgooglecontainers/etcd-amd64:$ETCD_VERSION k8s.gcr.io/etcd-amd64:$ETCD_VERSION
docker tag mirrorgooglecontainers/pause:$PAUSE_VERSION k8s.gcr.io/pause:$PAUSE_VERSION
docker tag coredns/coredns:$DNS_VERSION k8s.gcr.io/coredns:$DNS_VERSION


docker rmi mirrorgooglecontainers/kube-apiserver-amd64:$K8S_VERSION
docker rmi mirrorgooglecontainers/kube-controller-manager-amd64:$K8S_VERSION
docker rmi mirrorgooglecontainers/kube-scheduler-amd64:$K8S_VERSION
docker rmi mirrorgooglecontainers/kube-proxy-amd64:$K8S_VERSION
docker rmi mirrorgooglecontainers/etcd-amd64:$ETCD_VERSION
docker rmi mirrorgooglecontainers/pause:$PAUSE_VERSION
docker rmi coredns/coredns:$DNS_VERSION
