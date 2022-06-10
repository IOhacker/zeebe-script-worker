# Copyright (C) FINTECHEANDO SA DE CV - Todos los Derechos Reservados
# La copia no autorizada de este archivo, por cualquier medio esta estrictamente prohibido
# Es un Obra Intelectual Propietaria y Confidencial
# Escrito por Victor Manuel Romero Rodriguez <victor.romero@fintecheando.mx>, Enero 2022
# Lea el archivo de LICENSE para mas detalle.

FROM azul/zulu-openjdk-alpine:11 as fineract
RUN mkdir /opt/app
COPY target/zeebe-script-worker-1.1.1-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "/opt/app/zeebe-script-worker-1.1.1-SNAPSHOT.jar"]