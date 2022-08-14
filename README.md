# docker-phpunit

## DockerHub

DockerHubから使う場合

```
https://hub.docker.com/repository/docker/mettoboshi/phpunit
```

## ローカルで使う場合

### ダウンロード

```
$ git clone git@github.com:mettoboshi/docker-phpunit.git
```

### Dockerイメージの作成

```
$ docker build -t phpunit .  
```

### 初期化

```
$ docker run -v /Path/to/work/dir:/var/www/html -it phpunit initialize
```

### テストの実施

```
$ docker run -v /Path/to/work/dir:/var/www/html -it phpunit 
```
