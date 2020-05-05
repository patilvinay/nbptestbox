
FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN apt-get install -y tar cmake make git ssh wget openssh-server python3-pip
WORKDIR /home
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
RUN tar -xvjf gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 
RUN mv /home/gcc-arm-none-eabi-9-2019-q4-major /usr/bin/
RUN rm -f gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
ENV PATH=${PATH}:/usr/bin/gcc-arm-none-eabi-9-2019-q4-major/bin/
# CMD ["/bin/bash", "-c", "while true; do sleep 30; done;"]
