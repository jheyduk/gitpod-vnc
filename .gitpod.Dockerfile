FROM gitpod/workspace-full-vnc
RUN bash -c "source .sdkman/bin/sdkman-init.sh && \
  sdk install java 8.0.292.hs-adpt && \
  sdk use java 8.0.292.hs-adpt && \
  curl -u read:reader -o estudio.zip https://nexus.scc.smartcommerce.se/repository/distributions/com/intershop/estudio/4.9.0/estudio-4.9.0.zip && \
  sudo mkdir -p /opt/intershop && \
  sudo chown gitpod:gitpod /opt/intershop && \
  ( cd /opt/intershop && unzip /home/gitpod/estudio.zip )"
  
