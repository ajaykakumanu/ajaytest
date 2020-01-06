FROM node
LABEL org.label-schema.version=v1.1
ENV NODE_ENV="ajay"
ENV MOCA_NAME="ajay"
ENV MCS_NAME="ajay"
ENV SAL_NAME="ajay"
ENV REPORT_NAME="ajay"
RUN mkdir -p /var/node
ADD src/ /var/node/
WORKDIR /var/node
RUN npm install
EXPOSE 3000
CMD ./bin/www
