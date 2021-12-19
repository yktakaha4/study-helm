# study-helm

https://www.amazon.co.jp/dp/B07TQT6SVY

## Usage

```
$ helm repo add study-helm https://yktakaha4.github.io/study-helm/
$ helm repo update

$ helm search repo study-helm
NAME                    CHART VERSION   APP VERSION     DESCRIPTION
study-helm/happyhelm    1.0.0           1.0.0           Echo Happy Helming.

$ helm install happyhelm study-helm/happyhelm
```

## Install

```
# minikubeで利用する場合
$ minikube tunnel
$ helm test happyhelm

# 実行
$ k get svc happyhelm
NAME        TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)        AGE
happyhelm   LoadBalancer   10.107.142.51   10.107.142.51   80:32047/TCP   2m23s
$ curl 10.107.142.51/hoge
Happy Helming, hoge!%
```
