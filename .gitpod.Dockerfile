FROM gitpod/workspace-full-vnc
RUN sdk install java 8.0.292.hs-adpt && \
  sdk use java 8.0.292.hs-adpt && \
  curl -u read:reader -o estudio.zip https://nexus.scc.smartcommerce.se/repository/distributions/com/intershop/estudio/4.9.0/estudio-4.9.0.zip && \
  ( mkdir -p /opt/intershop && unzip /home/gitpod/estudio.zip )
  
