    # ---- Stage 1: Build Environment ----
    FROM configit/v18-linux-net-9.0.102 AS builder
    
    
    # Set working directory
    WORKDIR /app
    
    # Expose application port
    EXPOSE 11111 8888
    
    # Copy application source code
    COPY src/ .

    # Copy and set permissions for entrypoint script
    COPY entrypoint.sh /entrypoint.sh
    RUN chmod +x /entrypoint.sh /app/SocketDemo /app/*.sh
    #RUN /app/startup.sh
    
    # Use a startup script for better control
    ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
