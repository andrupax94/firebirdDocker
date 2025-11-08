# Usa imagen con Firebird 2.5
FROM jacobalberty/firebird:2.5-sc

# Establece la contraseña de SYSDBA
ENV ISC_PASSWORD=masterkey

# Crea carpeta de datos si no existe
RUN mkdir -p /firebird/data

# Expone el puerto estándar de Firebird
EXPOSE 3050

# Comando de inicio (ya definido en la imagen base
CMD ["/usr/local/firebird/run.sh"]
