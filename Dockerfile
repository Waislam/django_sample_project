#base image
FROM python:3.10.10-alpine
#working directory
WORKDIR /Home/app/webapp

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Install gcc and other dependencies
RUN pip install --upgrade pip

# copy whole project to your docker home directory.
COPY . /Home/app/webapp

#copy and install requirements.txt
COPY ./requirements.txt /Home/app/webapp/requirements.txt
RUN pip install -r requirements.txt

#open port on which django project will run
EXPOSE 8000

# start server
# CMD ["python", "manage.py", "runserver"]
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


