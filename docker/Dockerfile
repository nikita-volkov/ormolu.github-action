FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install wget unzip -y
RUN \
  mkdir /tmp/ormolu && \
  cd /tmp/ormolu && \
  wget -q https://github.com/tweag/ormolu/releases/download/0.7.4.0/ormolu-Linux.zip && \
  unzip ormolu-Linux.zip && \
  rm ormolu-Linux.zip && \
  chmod +x ormolu && \
  mv ormolu /usr/local/bin/

COPY entrypoint.bash /usr/local/bin/

ENTRYPOINT ["entrypoint.bash"]
