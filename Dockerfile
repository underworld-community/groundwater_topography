FROM underworldcode/uwgeodynamics:v2.8.5

# ARGS for following setup
ARG NB_USER=jovyan
ARG NB_UID=1000
ARG NB_SPACE=${NB_WORK}/userspace

# copy files into ${NB_SPACE}, unfortunately must be root to COPY
USER root
RUN mkdir -p ${NB_SPACE}
COPY . ${NB_SPACE}
RUN chown -R ${NB_UID}:users ${NB_SPACE}

# nominate ${NB_SPACE} as a volume
VOLUME ${NB_SPACE}

# switch to $NB_USER
USER ${NB_USER}
