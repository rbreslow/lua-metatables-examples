FROM quay.io/rbreslow/lua:5.3

RUN \
    buildDeps="\
    alpine-sdk \
    lua$LUA_VERSION-dev \
    " && \
    apk add --no-cache $buildDeps && \
    luarocks install inspect 3.0-4 && \
    apk del $buildDeps curl unzip
