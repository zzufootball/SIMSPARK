# RoboCup3D平台安装 

## 一、搭建环境
**Ubuntu (目前测试成功版本16.04、18.04、20.04 LTS)**<br>
**rcsserver3d 0.7.3**<br>
**simspark 0.3.2**<br>
****
*仿真平台搭建环境比较严格，目前只在LTS(long term system)长期支持版本测试成功*

## 二、安装依赖
```javascript
apt-get install g++
apt-get install git
apt-get install cmake
apt-get install libfreetype6-dev
apt-get install libode-dev
apt-get install libsdl-dev
apt-get install ruby
apt-get install ruby-dev
apt-get install libdevil-dev
apt-get install libboost-dev
apt-get install libboost-thread-dev
apt-get install libboost-regex-dev
apt-get install libboost-system-dev
apt-get install qt5-default
```

## 三、配置GitHub(非第一次用，请忽略)
### 创建SSH Key(`youremail@example.com`换成注册`GitHub`的邮箱)
```javascript
ssh-keygen -t rsa -C "youremail@example.com"
```
将`.ssh`路径下的`id_rsa.pub`文件中的密钥添加到 GitHub 上（在GitHub中点击右上角头像 -> Settings，选择 SSH and GPG keys，新建一个ssh keys，复制文件中的密钥进行粘贴）
### 检查是否绑定成功
```javascript
ssh -T git@github.com
```
### 配置用户名和地址
```javascript
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

## 四、clone[源码包](https://gitlab.com/robocup-sim/SimSpark)
```javascript
git clone git@github.com:zzufootball/SIMSPARK.git
```
## 五、Install
打开主目录下的SIMSPARK文件夹，右键打开终端，执行命令：
```javascript
./build.sh
```
## 六、Run
在桌面Ctrl+Alt+T打开终端输入命令：
(平台打开则安装成功)
```javascript
rcsoccersim3d
```
## 七、更换[监视器](https://github.com/magmaOffenburg/RoboViz)
### 1、安装JDK 1.8
打开终端输入命令：
```javascript
sudo apt-cache search jdk
sudo apt-get install openjdk-8-jdk
```
### 2、clone源码包
```javascript
git clone https://github.com/magmaOffenburg/RoboViz.git
```
*若VM虚拟机网速过慢可以先安装VMware Tools，在Windows系统下载[源码包](https://github.com/magmaOffenburg/RoboViz)再复制到Linux系统中进行解压*
### 3、安装
打开解压过的Roboviz-master文件夹中的scripts目录，右键打开终端，输入命令：
```javascript
./build.sh
```
### 4、更改配置文件
继续输入命令`sudo gedit /usr/local/bin/rcsoccersim3d`，打开一个记事本，找到第27行，修改路径将`MON`路径换成`/home/用户名/Roboviz-master/bin/roboviz.sh`，接着在第二行加一句`cd /home/用户名/Roboviz-master/bin`，这里路径中的文件名都要以最新的文件名为标准灵活修改<br>

### 5、Run
(重新执行步骤六，这时监视器已换成`Roboviz`)
```javascript
rcsoccersim3d
```

## 更换模式
### 切换到优化模式
```javascript
./scripts/simspark_optimize_mode.sh
```
### 切换到正常模式
```javascript
./scripts/simspark_normal_mode.sh  
```
****
* [magmaOffenburg](https://github.com/magmaOffenburg)
* [utaustinvilla3d](https://github.com/LARG/utaustinvilla3d)
