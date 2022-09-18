FROM lMl10l/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/jmthonar/sbb_b0.git /root/sbb_b 
#working directory 
WORKDIR /root/sbb_b

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","sbb_b"]
