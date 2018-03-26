FROM gitlab/dind

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get update; apt-get install -y curl software-properties-common python-software-properties unzip
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y oracle-java8-installer curl jq python python-pip
RUN curl https://services.gradle.org/distributions/gradle-4.5.1-bin.zip --output gradle.zip ; unzip -d gradle.zip; rm gradle.zip
RUN gradle -v
RUN pip install awscli