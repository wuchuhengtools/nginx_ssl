
##
# @inof      nginx自动化配置ssh证书
# @author    wuchuheng
# @email     wuchuheng@163.com
#
##
FROM nginx:1.15
RUN echo "deb http://ftp.debian.org/debian stretch-backports main" >> sources.list \
    # 这里安装好cron不能用
    && echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib" >> sources.list \
    && apt-get update \
    && apt-get install python-certbot-nginx -t stretch-backports \
    && apt-get -y install cron \
    && apt-get -y vim;

CMD ["/usr/sbin/service","nginx","status"]
EXPOSE 80:80
