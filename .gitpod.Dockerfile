RUN curl -s "https://get.sdkman.io" | bash
RUN bash -c "source /home/gitpod/.sdkman/bin/sdkmaninit.sh"
FROM gitpod/workspace-full

# Install Graphviz
RUN sudo apt-get update \
&& sudo apt-get -y install graphviz

# Install Java
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkmaninit.sh && \
sdk install java 17.0.8-tem && \
sdk default java 17.0.8-tem"