# Running P4Vasp through Docker 

This guide assumes you are working on a UNIX system. 

* Git clone the repository
* First, install [Docker](https://docs.docker.com/engine/install/).
* OPTIONAL For MacOS users, you'll also need [XQuartz](https://www.xquartz.org/) as a X11 server is mandatory.
* `xhost +localhost`
* `cd` into this repository, then run `docker build -t p4vasp-weld .`. Wait for compilation process to finish.
* Execute the following command,

```
docker run -it --rm \                                                           
    --env="DISPLAY=host.docker.internal:0" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/files:/files \
    p4vasp-weld
```

Once done, browse files using p4v. The `files/` directory on your machine and on p4v are kinda "linked" ; it's your only way to discuss with the software.
