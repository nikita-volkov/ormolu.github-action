FROM ubuntu:25.04

RUN apt-get update
RUN apt-get install wget unzip -y
RUN \
  mkdir /tmp/ormolu && \
  cd /tmp/ormolu && \
  wget -q https://github.com/tweag/ormolu/releases/download/0.7.7.0/ormolu-x86_64-linux.zip && \
  unzip ormolu-x86_64-linux.zip && \
  rm ormolu-x86_64-linux.zip && \
  chmod +x ormolu && \
  mv ormolu /usr/local/bin/

COPY entrypoint.bash /usr/local/bin/

ENTRYPOINT ["entrypoint.bash"]
