# node-dev-docker
Repositorio Docker Node.js para ejecutar aplicaciones Node backend en ambiente de desarrollo.

## Node.js
Este contenedor está construido utilizando la imagen oficial `httpd:alpine` la cual está basada en la distribución [Alpine Linux](https://alpinelinux.org/). Esto hace que sea más pequeño y más eficiente en recursos que las distribuciones tradicionales de GNU/Linux.

#### Docker Store Oficial Node.js
Ver [node](https://store.docker.com/images/node)

# Configuración App Node

Dentro del directorio `/app/` debe existir junto con los archivos del proyecto Node el archivo `package.json` con la especificiación de las dependencias del proyecto Node, el archivo `package.json` debe contener la instrucción `"start": "node app.js"`.

# Instalación

Antes de realizar la instalación del contenedor, se debe copiar los archivos del proyecto Node dentro del directorio `/app/` el cual se encuentra en el directorio de especificación del contenedor en Docker `node-dev-docker`.

Desde el directorio de especificación del contenedor en Docker `node-dev-docker` donde se encuentra el archivo `Dockerfile` ejecutar las siguientes instrucciones:

```sh
# Construir imagen Docker
docker build -t node-dev .
# Ejecutar contenedor Docker
docker run --rm -p 88:8888 --name node-dev node-dev
# Ejecutar contenedor Docker en Segundo Plano
docker run --rm -d -p 88:8888 --name node-dev node-dev
```

Licencia
----

MIT [LICENSE](https://github.com/sebaxtian/node-dev-docker/blob/master/LICENSE)
