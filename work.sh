

################ 安装anaconda #################
# wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-2019.03-Linux-x86_64.sh
##############################################################################
################ 更改yum源为国内腾讯云 #################
########### 备份
# mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bakeup
########## 下载阿里
# wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
############ 清理缓存
# yum clean all
# yum makecache
# yum update
##############################################################################


################ 软件名 看目录 #################
# rpm -ql tesseract
##############################################################################


################ 、安装nodejs/腾讯云 npm 镜像和 pm2 #################
# yum install nodejs -y 
# npm config set registry http://mirrors.cloud.tencent.com/npm/
# npm install -g pm2
##############################################################################


################ 安装tesseract #################
# yum-config-manager --add-repo https://download.opensuse.org/repositories/home:/Alexander_Pozdnyakov/CentOS_7/
# sudo rpm --import https://build.opensuse.org/projects/home:Alexander_Pozdnyakov/public_key
# yum update
# yum install tesseract -y
# yum install tesseract-langpack-deu -y
########## 下载tessdata
# export TESSDATA_PREFIX=/usr/share/tesseract/4/tessdata/添加到/etc/profile
# wget https://raw.githubusercontent.com/tesseract-ocr/tessdata/master/chi_sim.traineddata
# git clone https://gitee.com/colluslau/tessdata_fast.git
# git clone https://github.com/duanwenhuiIMAU/tessdata
# wget https://raw.githubusercontent.com/duanwenhuiIMAU/tessdata/master/chi_sim_vert.traineddata
# 改/etc/hosts 199.232.68.133 raw.githubusercontent.com
##############################################################################


################ git别名 #################
# git clone https://github.com/duanwenhuiIMAU/baiduOCR
# lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
# git config --global alias.st status
# git config --global alias.co checkout
# git config --global alias.ci commit
# git config --global alias.br branch
##############################################################################

################ 检查一组命令花费的时间 ##########################
# start=$(date +%s)
# tesseract ~/workshop/baiduOCR/img/te.png resec -l chi_sim
# end=$(date +%s)
# difference=$(( end - start ))
# echo $difference seconds.
##############################################################################

