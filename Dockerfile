FROM centos:7

EXPOSE 80

RUN yum -y install epel-release
RUN yum -y install nginx

ADD index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
