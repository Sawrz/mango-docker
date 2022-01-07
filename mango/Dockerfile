FROM python:3.10

ENV PYTHONBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN apt-get update
RUN apt-get install make

RUN git clone https://gitlab.com/sawrz/mango.git -b admin_interface_overhaul /mango
#RUN mkdir /mango
#COPY mango /mango
WORKDIR /mango

RUN pip install --upgrade pip
RUN pip install -r /mango/requirements.txt

COPY entrypoint.sh /mango/entrypoint.sh
RUN chmod +x /mango/entrypoint.sh
ENTRYPOINT ["/mango/entrypoint.sh"]