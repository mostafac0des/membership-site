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
# RUN pip install pipenv
# COPY Pipfile /code/Pipfile
# COPY Pipfile.lock /code/Pipfile.lock
# RUN pipenv install --deploy --system --skip-lock --dev

# Copy project
COPY ./site /code/
