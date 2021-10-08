# set base image (host OS)
FROM python:3.9-buster

# Maintainer Information
LABEL maintainer="Shahnawaz Hossan <s.pabon93@gmail.com>"
LABEL license="MIT"

    # Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1 \
    # Keeps Python from generating .pyc files in the container
    PYTHONDONTWRITEBYTECODE=1

# set the working directory in the container
WORKDIR /app

# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

# Copy poetry.lock* in case it doesn't exist in the repo
COPY ./app/pyproject.toml ./app/poetry.lock* /app/

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies without using the cache
RUN pip install --no-cache-dir -r requirements.txt

# copy project
COPY . .

# expose the port for being accessed by another container
EXPOSE 8002

# Produce an output when container runs
ENV name Shahnawaz Hossan
ENTRYPOINT ["/bin/bash", "-c", "echo Hello, $name"]
