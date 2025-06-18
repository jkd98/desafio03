# Usa Node.js base
FROM node:22

# Crea directorio de trabajo
WORKDIR /app

# Copia los archivos de configuración
COPY package.json package-lock.json ./

# Instala dependencias
RUN npm install

# Copia el resto de la app
COPY . .

# Establece el puerto en el que se ejecutará React
ENV PORT=5001

# Expón ese puerto dentro del contenedor (documentación)
EXPOSE 5001

# Ejecuta la app en desarrollo
CMD ["npm", "start"]
