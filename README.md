# Running P4Vasp through Docker 

This guide assumes you are working on a UNIX system. 

* Clone the repository using Git.
* Install [Docker](https://docs.docker.com/engine/install/).
* OPTIONAL For macOS users, you'll also need [XQuartz](https://www.xquartz.org/) because an X11 server is mandatory.
* Run `xhost +localhost`
* Navigate to this repository by running `cd`, then build the Docker image by executing `docker build -t p4vasp-weld .`. Wait for the compilation process to finish.
* Run the following command,

```
docker run -it --rm \
    --env="DISPLAY=host.docker.internal:0" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/files:/files \
    p4vasp-weld
```

Once done, you can browse files using P4V. The `files/` directory on your machine and the corresponding directory in P4V are “linked,” serving as your only way to exchange data with the software.
