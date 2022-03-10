<p align="center">
    <a href="https://github.com/grbnb/jd_sms_login"><img src="https://img.shields.io/pypi/l/dailycheckin?style=popout-square" alt="license"></a>
    <a href="https://github.com/grbnb/jd_sms_login"><img src="https://img.shields.io/github/stars/grbnb/jd_sms_login.svg?style=popout-square" alt="GitHub stars"></a>
    <a href="https://github.com/grbnb/jd_sms_loginx"><img src="https://img.shields.io/github/forks/grbnb/jd_sms_login.svg?style=popout-square" alt="GitHub forks"></a>
    <a href="https://hub.docker.com/r/grbhq/jd_sms_login"><img src="https://img.shields.io/docker/pulls/grbhq/jd_sms_login?style=popout-square" alt="Docker Pulls"></a>
    <a href="https://hub.docker.com/r/grbhq/jd_sms_login/"><img src="https://img.shields.io/docker/image-size/grbhq/jd_sms_login?style=popout-square" alt="Docker Size"></a>
    <a href="https://hub.docker.com/r/grbhq/jd_sms_login/"><img src="https://img.shields.io/docker/stars/grbhq/jd_sms_login?style=popout-square" alt="Docker Stars"></a>
</p>

<img src = 'https://s3.bmp.ovh/imgs/2022/03/f590b219225ad98a.png' />


### 容器安装：
```
docker run -d --name jd_sms -p 6789:6789 grbhq/jd_sms_login:latest
```


# 主分支 [master](https://github.com/grbnb/jd_sms_login/tree/master) 用于同步更新源仓库

# 通过reposync方式进行代码同步到主分支


### 申请PAT

[点此来生成一个 token](https://github.com/settings/tokens/new) ，把 `repo`和`workflow` 两部分勾上，然后点击最下面的创建按钮。

### 填写PAT到Secrets

申请完毕后，在分支中点击`Settings`-`Secrets`-`New secret`

`name`填`PAT`，`Value`填入上方申请到的PAT,保存即可

### 手动触发一次代码同步

点击`Actions`,点击右上角的star运行所有脚本

等待两分钟左右,能够发现代码全部同步过来

## Enjoy

操作到这一步,表示您已经全部完成了

剩下的去actions就好啦
