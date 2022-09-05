docker run -d \
  --name artalk-go \
  -p 0.0.0.0:8080:23366 \
  -v $(pwd)/data:/data \
  artalk/artalk-go
