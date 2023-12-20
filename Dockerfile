FROM sylvestor88/dockerhub:remote-dev

RUN apt-get update && apt-get install -y build-essential libssl-dev python3 pip gnupg2
RUN mkdir /pip_requirements
COPY ./requirements.txt /pip_requirements
RUN pip install -r /pip_requirements/requirements.txt --break-system-packages
