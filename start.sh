# 拉取代码
git pull git@github.com:wangchaoqunqq/hello-world01.git

# 安装依赖和打包
npm install --registry=https://registry.npm.taobao.org/ && npm run build

# 删除容器
docker rm -f demo1 &> /dev/null

#启动容器
docker run -d --restart=on-failure:5\
    -p 8080:80 \
    -v $PWD/dist:/usr/share/nginx/html \
    --name demo1 nginx


