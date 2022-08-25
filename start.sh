# 为 ArtalkGo 创建一个目录
mkdir ArtalkGo
cd ArtalkGo

# 拉取 docker 镜像
docker pull artalk/artalk-go

# 生成配置文件
docker run -it -v $(pwd)/data:/data --rm artalk/artalk-go gen config data/artalk-go.yml

# 编辑配置文件
vim data/artalk-go.yml

# 运行 docker 容器
docker run -d \
  --name artalk-go \
  -p 0.0.0.0:8080:23366 \
  -v $(pwd)/data:/data \
  artalk/artalk-go
