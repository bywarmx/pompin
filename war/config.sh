#!/bin/sh

# Configurar MAC
echo "Aplicando configuracion..."
atc AT^PHYNUM=MAC,1CB796E515DD,0 > /dev/null 2>&1

# Forzar guardado de configuración
atc AT^INFORBU > /dev/null 2>&1

# Verificar si se aplicó la MAC (opcional - si el comando AT lo soporta)
if atc AT^PHYNUM? | grep -q "1CB796E515DD"; then
    echo "Config aplicada correctamente"
else
    echo "Configuracion fallo"
fi

exit 0