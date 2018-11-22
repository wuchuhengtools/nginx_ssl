#!/bin/bash;
sudo docker run -itd -v $PWD/hexo/_config.yml:/hexo/_config.yml -v $PWD/hexo/source/:/hexo/source/ -v $PWD/hexo/themes/:/hexo/themes/ -v $PWD/webroot/:/hexo/public/ --name wuchuheng.com -p 40001:4000 hexo:0.1 /bin/bash;
