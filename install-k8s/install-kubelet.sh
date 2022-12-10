# 1.更新 apt 包索引并安装使用 Kubernetes apt 仓库所需要的包
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
# 2.下载 Google Cloud 公开签名秘钥
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
# 3.添加 Kubernetes apt 仓库，使用清华源
# echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://mirrors.tuna.tsinghua.edu.cn/kubernetes/apt kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
# 4. 更新 apt 包索引，安装 kubelet、kubeadm 和 kubectl，并锁定其版本
sudo apt-get update
sudo apt-get install -y kubelet=1.25.2-00 kubeadm=1.25.2-00 kubectl=1.25.2-00
sudo apt-mark hold kubelet kubeadm kubect
