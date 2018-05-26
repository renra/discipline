FROM renra/phoenix:1.3.2_elx1.6_erlang19

ENV dir /usr/src/app

RUN mkdir -p ${dir}
WORKDIR ${dir}

COPY . ${dir}
