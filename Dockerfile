#  ベースイメージの設定
FROM ubuntu:17.10

# Nginx のインストール
RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y install nginx

#  ポート指定
EXPOSE 8080

# Web コンテンツの配置
ADD index.html /var/www/html/

# Nginx の実行
CMD ["nginx", "-g", "daemon off;"]