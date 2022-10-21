# 
FROM python:3.10
# 
WORKDIR /app
# 
COPY ./requirements.txt /app/requirements.txt
# 
RUN pip install -r requirements.txt
# 
COPY ./app /app
# 
CMD uvicorn app:app --host 0.0.0.0