FROM python:3.8
WORKDIR /social-news-site

COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY . .
ENTRYPOINT ["python"]
CMD ["run.py"]

EXPOSE 5000