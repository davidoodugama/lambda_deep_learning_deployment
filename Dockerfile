# init a base image (Alpine is small Linux distro)
FROM amazon/aws-lambda-python:3.9

ENV aws_access_key_id=AKIAZHUZ3LI3XW6WKKWL 
ENV aws_secret_access_key=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
ENV service_name=s3,
ENV region_name=us-east-1

RUN yum -y install libgtk2.0-dev\
    libgl1-mesa-glx\
    libjpeg-devel \
    make \
    rh-python36 \
    rh-python36-python-virtualenv \
    && yum clean all

RUN python3 -m pip install --upgrade pip
COPY requirements.txt ./
RUN pip3.9 install -r requirements.txt
COPY myfunction2.py ./

CMD ["myfunction2.lambda_handler"]

