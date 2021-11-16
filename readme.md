# RoboCup3D平台安装 
(具体请参照[SimSpark wiki](https://gitlab.com/robocup-sim/SimSpark/-/wikis/Installation-on-Linux))
### [平台所有的手册](https://gitlab.com/robocup-sim/SimSpark/-/wikis/pages)
(遇到问题？[RTFM](https://en.wikipedia.org/wiki/RTFM))
## 环境
`Ubuntu (18.04及以上)`<br>
`rcsserver3d 0.7.3`(若使用[releases](https://gitlab.com/robocup-sim/SimSpark/-/releases)版本,安装qt4)<br>
`simspark 0.3.2`<br>
([平台仓库](https://gitlab.com/robocup-sim))

## 安装依赖
(自行搜索合适的国内源，并更换)<br>
第一次使用GNU/Linux？<br>
墙裂推荐[The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)(而且还有中文版本，[B站](https://space.bilibili.com/1010983811?spm_id_from=333.788.b_765f7570696e666f.1)也有中译)
```
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

### 配置GitHub(非第一次用，请忽略)
* 创建SSH Key(`youremail@example.com`换成注册`GitHub`的邮箱)
```
ssh-keygen -t rsa -C "youremail@example.com"
```
将`.ssh`    下的`id_rsa.pub`中的添加到`GitHub`上(不懂怎么做？[STFW](https://en.wikipedia.org/wiki/RTFM))
* 检查是否绑定成功
```
ssh -T git@github.com
```
* 配置用户名和地址
```
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

## clone[源码](https://gitlab.com/robocup-sim/SimSpark)
```
git clone git@github.com:zzufootball/SIMSPARK.git
```
## Install
```
./build.sh
```
## Run
(平台打开则安装成功)
```
rcsoccersim3d
```
## 更换[监视器](https://github.com/magmaOffenburg/RoboViz)
### clone源码
(需要Java 1.8)
```
git clone https://github.com/magmaOffenburg/RoboViz.git
```
### 安装
```
./scripts/build.sh
```
### 更改配置文件
将`/usr/local/bin/rcsoccersim3d`中的`MON`路径换成`/bin/roboviz.sh`<br>
(需要使用绝对路径，提示`pwd`)

### Run
(这时监视器已换成`Roboviz`)
```
rcsoccersim3d
```

### 更换模式
* 切换到优化模式
```
./scripts/simspark_optimize_mode.sh
```
* 切换到正常模式
```
./scripts/simspark_normal_mode.sh  
```

* [magmaOffenburg](https://github.com/magmaOffenburg)
* [utaustinvilla3d](https://github.com/LARG/utaustinvilla3d)