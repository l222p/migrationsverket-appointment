FROM node:15.5.1-alpine3.10
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install 
COPY . .
ENV SENDER_EMAIL=migrationsweden@outlook.com \
    SENDER_EMAIL_PASS=LisaGuapa \
    RECEIVER_EMAIL=luis_araujocaballero@hotmail.com \
    SEARCH_DAYS=2021-02-10,2021-02-11,2021-02-12 \
    AGENCY_CODE=Z209 \
    APPOINTMENT_TYPE_CODE=2 \
    NUMBER_PEOPLE=1 \
    NODE_ENV=production
EXPOSE 4000
RUN npm run build
CMD ["node", "build/index.js"]