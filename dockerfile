FROM node:16
WORKDIR /app

# install packages
# RUN apt update && \
# 	apt install -y nodejs && \
# 	rm -rf /var/lib/apt/lists/*

# install dependencies
COPY package.json ./
RUN npm install && \
	  chown -R node:node node_modules/

# copy source code
COPY . .
RUN chown -R node:node .

# exec application
USER node
CMD ["sh", "entrypoint.sh"]
