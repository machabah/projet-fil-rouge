FROM python:3.6-alpine
MAINTAINER mbah (tellyisconsulting@gmail.com)
ENV
 ODOO_URL=https://www.odoo.com
 PGADMIN_URL=https://www.pgadmin.org
#RUN apt update -y && apt install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y
#RUN pip install flask==1.1.2 flask_httpauth==4.1.0 flask_simpleldap python-dotenv==0.14.0
RUN apk update
RUN pip install Flask
RUN apk add git
VOLUME ["/opt"]
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["./app.py"]
