# Usa la imagen oficial de Node.js
FROM node:14-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install --only=production

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto que usará la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "app.js"]
