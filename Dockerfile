#builder image
FROM python:3.7-slim-stretch


RUN apt update
RUN apt install -y python3-dev gcc
ADD keras_model.h5 model.h5
#install dependencies
ADD requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
ADD app.py app.py
#setting up production image

RUN python app.py

EXPOSE 8008:8008

# Start the server
CMD ["python", "app.py", "serve"]
