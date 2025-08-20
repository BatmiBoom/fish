# Archivo principal de configuración

# Los archivos en conf.d/ se cargan automáticamente
# Las funciones en functions/ se cargan automáticamente

# Configuraciones específicas de sesión interactiva
if status is-interactive
    set fish_greeting ""  # Desactivar saludo de Fish

    # Configuraciones específicas para sesiones interactivas
    set -g fish_autosuggestion_enabled 1
end
