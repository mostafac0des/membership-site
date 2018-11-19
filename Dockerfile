# Pull base image
FROM python:3.7

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip
RUN pip install pipenv
COPY Pipfile /code/Pipfile
RUN pipenv install --deploy --system --skip-lock --dev

# Run deployment tasks
COPY site/deploy-tasks.sh /code/
RUN chmod +x deploy-tasks.sh
CMD ["/bin/bash", "deploy-tasks.sh"]

# Copy project
COPY ./site /code/
