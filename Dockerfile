# set base image (host OS)
FROM python:3.9-buster

LABEL maintainer="Shahnawaz Hossan <s.pabon93@gmail.com>"

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies without using the cache
RUN pip install --no-cache-dir -r requirements.txt

# copy project
COPY . .

# Produce an output when container runs
ENV name Shahnawaz Hossan
ENTRYPOINT ["/bin/bash", "-c", "echo Hello, $name"]
