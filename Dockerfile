# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

# Copy project
COPY ./site /code/

# Entrypoint
COPY ./etc/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod a+x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
