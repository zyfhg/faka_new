# 使用官方的 Python 3.8 slim 镜像作为基础
FROM python:3.8-slim

# 设置作者标签
LABEL maintainer="佰阅 <2894049053@qq.com>"

# 设置环境变量，方便后续修改
# 备选数据库Sqlite \Mysql \ PostgreSQL
ENV DB_TYPE='Sqlite'
ENV DB_HOST='127.0.0.1'
ENV DB_PORT='3306'
ENV DB_USER='KAMIFKA'
ENV DB_PASSWORD='PASSWORD'
ENV DB_DATABASE='KAMIFKA'

# 设置工作目录
WORKDIR /usr/src/app

# 复制依赖清单文件
COPY requirements.txt ./

# --- 核心修正步骤 ---
# 在安装依赖前，使用 sed 命令动态修正 requirements.txt 文件
# 1. 将导致底层错误的 python-alipay-sdk 替换为代码实际需要的 alipay-python-sdk
# 2. 解除 flask_jwt_extended 的版本锁定，以兼容新版 Flask
#RUN sed -i 's/python-alipay-sdk==2.1.1/alipay-python-sdk/' requirements.txt && \
 #   sed -i 's/flask_jwt_extended==3.25.1/flask_jwt_extended/' requirements.txt

# 使用修正后的依赖清单安装所有包
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.org/simple


# 复制项目所有文件到工作目录
COPY . .

# 赋予入口脚本执行权限
RUN chmod +x docker-entrypoint.sh

# 声明容器对外暴露的端口
EXPOSE 8000

# 定义容器启动时执行的命令
ENTRYPOINT ["/usr/src/app/docker-entrypoint.sh"]

