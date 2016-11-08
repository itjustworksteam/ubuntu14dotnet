FROM therickys93/ubuntu14
ADD . /dotnet
WORKDIR /dotnet
RUN bash install.sh
