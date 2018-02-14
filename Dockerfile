FROM gitlab/dind

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update; apt-get install -y curl software-properties-common python-software-properties oracle-java8-installer
