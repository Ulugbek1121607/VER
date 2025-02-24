# Node.js'ning so'nggi LTS versiyasidan foydalanamiz
FROM node:18

# Ishchi katalogni o'rnatamiz
WORKDIR /app

# package.json va package-lock.json fayllarini nusxalaymiz
COPY package*.json ./

# Bog'liqliklarni o'rnatamiz
RUN npm install

# Ilova kodini nusxalaymiz
COPY . .

# Fly.io 8080-portdan foydalanadi
ENV PORT=8080

# Serverni ishga tushiramiz
CMD ["node", "server.js"]
