# Imagen base con Java
FROM eclipse-temurin:21-jdk

# Carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Dar permisos al mvnw
RUN chmod +x mvnw

# Compilar el proyecto
RUN ./mvnw clean package -DskipTests

# Exponer el puerto
EXPOSE 8080

# Ejecutar el jar
CMD ["java", "-jar", "target/ProyectoModelo-0.0.1-SNAPSHOT.jar"]