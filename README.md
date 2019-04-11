This is a Dockerfile for deploying [DeepMedic][1], a tool for creating 3D 
convolutional neural networks for brain lesion segmentation.

Note that it uses `tensorflow` which runs on CPU-only.  To run on a machine with 
a compatible NVIDA GPU, the [CUDA toolkit][2] and [cuDNN][3] need to be 
installed, followed by the `tensorflow-gpu` python package.  See the DeepMedic 
and tensorflow documentation for more information.

[1]: https://github.com/Kamnitsask/deepmedic
[2]: https://developer.nvidia.com/cuda-toolkit
[3]: https://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html


## Usage

    git clone https://github.com/andrewlkho/docker-deepmedic.git
    cd docker-deepmedic
    docker build -t deepmedic .
    docker run -it --rm deepmedic

Alternatively, on a system without git:

    docker build -t deepmedic https://raw.githubusercontent.com/andrewlkho/docker-deepmedic/master/Dockerfile
    docker run -it --rm deepemdic
