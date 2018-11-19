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

# Copy project
COPY ./apps /code/

# Run deployment tasks
RUN chmod +x deploy_tasks.sh
CMD ["/bin/bash", "deploy_tasks.sh"]