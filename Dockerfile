FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/hackerworldyt/Tianabot.git /root/Tianabot
#working directory 
WORKDIR /root/Tianabot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Tianabot/bin:$PATH"

CMD ["python3","-m","Tianabot"]
