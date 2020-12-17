FROM elixir:1.11.1

ARG APPUSER_UID=1000
ARG APPUSER=app
ARG APPUSER_PASSWORD=app
RUN useradd -m --uid ${APPUSER_UID} --groups sudo ${APPUSER} \
  && echo ${APPUSER}:${APPUSER_PASSWORD} | chpasswd

# set work directory
ARG HOME_DIR=/home/app
RUN mkdir -p ${HOME_DIR} \
  && chown -R ${APPUSER}:${APPUSER} ${HOME_DIR}

WORKDIR ${HOME_DIR}

RUN apt-get update -y \ 
    && apt-get install -y \
    postgresql-client-11 \
    inotify-tools \
    nodejs

RUN curl -L https://npmjs.org/install.sh | sh \
    && mix local.hex --force \
    && mix archive.install hex phx_new 1.5.4 --force \
    && mix local.rebar --force


RUN mkdir -p ${HOME_DIR}/scripts
COPY ./scripts/docker-entrypoint.sh ${HOME_DIR}/scripts/docker-entrypoint.sh

USER ${APPUSER}
ENTRYPOINT ["/home/app/scripts/docker-entrypoint.sh"]
