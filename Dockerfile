# Base image
FROM python:3.6

# Updating repository sources
RUN apt-get update

# install some important ubuntu packages
RUN apt-get install -y wget curl nano

# Copying requirements.txt file
COPY requirements.txt requirements.txt

# upgrade pip
RUN pip3 install --upgrade pip

# pip install 
RUN pip3 install --no-cache -r requirements.txt

# create notebook folder and set as work directory
RUN mkdir notebooks
WORKDIR /notebooks

# Exposing ports
EXPOSE 8888

# Running jupyter notebook
# --NotebookApp.token ='demo' is the password
CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='demo'"]