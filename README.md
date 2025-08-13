<p align="center">
  <a href="https://github.com/Baiyuetribe/kamiFaka">
    <img src="https://cdn.jsdelivr.net/gh/Baiyuetribe/baiyue_onekey@master/logo.png" alt="baiyue logo" width="90" height="90">
  </a>
</p>

<h1 align="center">New Faka</h1>

<p align="center">
  基于VUE3.0+FLASK构建轻量化发卡系统
</p>

## 💒适用场景：
虚拟电子产品交易平台。



## 🍭功能特色：

- Stisla UI：web界面很漂亮
- 前端使用VUE3.0,毫秒级响应
- 已集成支付宝当面付、微信官方、Payjs、虎皮椒、YunGouOS、易支付、Mugglepay、V免签等十几种支付接口
- 普通用户支持邮箱、短信接收消息
- 管理员支持邮箱、短信、TG、微信、QQ通知
- 支持2~4层批发模式
- 长卡密可导出为txt文本
- 多种主题模式【列表、卡片、宫格】
- 支持自定义背景、logo、联系方式等
- 支持热备份，可一键云端备份、一键导出备份文件到本地
- 数据库可分离，兼容Mysql、PostgreSQL和Sqlite
- 支持移动端唤醒支付宝
- JWT认证
- Limter保障服务器访问频率和次数
- 访客与管理员页面分离，可独立定制

## 🍀部署方法：

### 1. 个人服务器快速安装：
```bash
# 安装命令
docker run --name kmfaka -itd -p 8000:8000 ddhmgws/new_faka:v1.0
```
```bash
# 卸载命令
docker rm -f kmfaka && docker rmi -f ddhmgws/new_faka:v1.0
```


### 🌱2. 服务使用展示：
![](https://cdn.jsdelivr.net/gh/Baiyuetribe/yyycode@dev/img/20/yyycode_comPc端演示.gif)
开源版管理员界面：
![](https://cdn.jsdelivr.net/gh/Baiyuetribe/yyycode@dev/img/20/yyycode_comPc后台端演示.gif)


## 🍳3.访问网址
- 前端访客页面： http://ip:8000
- 后端管理页面：http://ip:8000/admin

开发者咨询邮箱：[ddmgws@gmail.com](mailto:ddmgws@gmail.com)

## 🍰其他自研项目推荐
- [文本对比](https://github.com/zyfhg/DiffCompare)

## 来源项目
- [kamiFaka](https://github.com/Baiyuetribe/kamiFaka)

## License

本程序使用MIT协议，您可以免费使用，复制或修改软件，但是请保留底部作者信息和License许可声明。
