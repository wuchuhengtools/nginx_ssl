
##
# @inof      nginx自动化配置ssh证书
# @author    wuchuheng
# @email     wuchuheng@163.com
#
##
FROM nginx:1.15
RUN echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list \
    # 安装 ssl证书生成工具 https://certbot.eff.org 
    && apt-get update \
    && apt-get install -y python-certbot-nginx -t stretch-backports ;
