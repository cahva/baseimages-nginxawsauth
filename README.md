# Baseimage for nginx with s3
Running this image will let you turn nginx as a proxy for s3 bucket. Usually you will use this to setup your nginx server with cache so you won't have to fetch files from s3 all the time.

## Whats included
- nginx
- nginx aws auth module (https://github.com/anomalizer/ngx_aws_auth.git)
- tini (you can use this as your entrypoint in your own Dockerfile)

## How to use
Checkout the example folder. It contains nginx conf template and start script. `start.sh` script replaces s3 tags from your nginx template and runs nginx in no-daemon mode. Your S3 credentials should be set in the env when running that image.

*in the example folder*

### Build it
```
docker build -t my-nginx-s3 .
```

### Run it
```
docker run -it --rm \
-e AWS_BUCKET=[aws-bucket] \
-e AWS_ACCESS_KEY=[aws-accesskey] \
-e AWS_SECRET_KEY=[aws-secretkey] \
-v `pwd`/nginx.conf.tmpl:/tmp/nginx.conf.tmpl \
-p 8000:80 --name running-nginx my-nginx-s3
```

## Versioning
`[tag]` will be versioned with v1, v2 and so on.. "latest" is the master branch.