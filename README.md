# Simple cross-platform C++ project development, testing and deployment template

## first you need to generate the docker image
```bash
# to build the docker image
docker build -t temp .

# to run the container
docker run -it --rm -v `pwd`:/work temp
```

## then to build the project you can either use cmake or makefile
```bash
# to build the project
cmake -B ./build && cmake --build ./build

# to run the program
./build/temp
```
