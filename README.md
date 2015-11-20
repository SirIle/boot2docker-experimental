# Creating experimental boot2docker.iso version

This Dockerfile extends the boot2docker.iso build and replaces the docker executable with the newest experimental build. More information can be found from [this blog](http://sirile.github.io/2015/11/20/using-docker-110-experimental-with-docker-machine-and-virtualbox-driver-boot2docker.html).

You can create a Docker instance large enough to be able to compile the image with
```
docker-machine create --driver virtualbox --virtualbox-memory 2048 compile
eval $(docker-machine env compile)
```

Then you can build and export the boot2docker experimental image with
```
docker build -t my-boot2docker-img .
docker run --rm my-boot2docker-img > boot2docker-1.10.iso
```
