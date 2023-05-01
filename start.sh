#!/bin/bash
# -l reemplaza el proceso actual en lugar de iniciar un nuevo proceso
# -c Ejecuta el comando indicado a continuación
# $* recupera todos los parámetros recibidos al ejecutar `start.sh`
/bin/bash -l -c "$*"