FROM node

LABEL maintainer=vishal

WORKDIR /code

COPY ./frontend/package.json /code/

COPY ./backend /code/

RUN npm install

WORKDIR /code/frontend/

CMD ["npm", "install"]

ENTRYPOINT ["node", "App.js"]

EXPOSE 8080
