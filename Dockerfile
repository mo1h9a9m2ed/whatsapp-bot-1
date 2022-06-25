FROM quay.io/mo1h9a9m2ed/whatsapp-bot-1:multidevice

RUN git clone https://github.com/mo1h9a9m2ed/whatsapp-bot-1 /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
