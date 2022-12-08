
FROM python:3.9-slim

EXPOSE 8501

WORKDIR /app
COPY app.py /app
CMD ls
#RUN apt-get update && apt-get install -y \
#    build-essential \
#    software-properties-common \
#    git \
#    && rm -rf /var/lib/apt/lists/*

RUN pip3 install streamlit
RUN pip3 install pandas
RUN pip3 install numpy


ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]


#docker  build .
#docker run -it -p 8501:8501