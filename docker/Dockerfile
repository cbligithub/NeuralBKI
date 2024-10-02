#FROM nvidia/cuda:12.6.1-cudnn-devel-ubuntu22.04
FROM osrf/ros:humble-desktop-full

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends vim git tmux software-properties-common

RUN apt-get install -y --no-install-recommends ros-humble-gazebo-* ros-humble-cartographer ros-humble-cartographer-ros ros-humble-navigation2 ros-humble-nav2-bringup ros-humble-dynamixel-sdk ros-humble-turtlebot3* ros-humble-moveit ros-humble-ur

RUN apt-get install -y --no-install-recommends python3-dev libsparsehash-dev python3-pip python3.10-venv 

#RUN pip3 install pyyaml typeguard
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu # for cpu
RUN pip3 install torch torchvision torchaudio
RUN pip3 install torch-scatter
RUN pip3 install scikit-learn
RUN pip3 install tensorboard
RUN pip3 install git+https://github.com/mit-han-lab/torchsparse.git

RUN apt-get clean

RUN rm -rf /tmp/* /var/tmp/*
