FROM ubuntu:latest

RUN apt-get update && apt-get -y install sudo

COPY wisecow.sh .
RUN sudo apt install fortune-mod cowsay -y && chmod +x wisecow.sh
EXPOSE 4499
CMD ["sh", "wisecow.sh"]
