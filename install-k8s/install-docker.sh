# 移除旧版包
apt remove docker docker.io containerd runc

# 安装依赖
apt install ca-certificates curl gnupg lsb-release
apt install software-properties-common

# 添加密钥
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add

# 配置源
add-apt-repository "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

# 更新源
apt -y update

# 安装docker-ce
apt install docker-ce

# 启动
systemctl enable docker
systemctl start docker
