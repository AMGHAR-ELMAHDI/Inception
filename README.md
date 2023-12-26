# Inception

PID1:

PID 1 refers to the process identifier (PID) assigned to the first process started by the operating system during the boot process. In most Linux-based systems, the process with PID 1 is typically a special process known as the init process or the system initialization process.
The init process has a unique role in the operating system. It is responsible for starting and managing other processes, services, and daemons. It is the ancestor process of all other processes in the system, forming a process hierarchy or process tree.
Traditionally, the init process was implemented using a program called init, but modern Linux distributions often use alternatives such as systemd, SysVinit, or Upstart.
The init process, or its equivalent, is started directly by the kernel during the boot process and has certain privileges and responsibilities. It performs essential system initialization tasks, such as mounting filesystems, setting up network interfaces, and launching system services.
PID 1 has unique characteristics compared to other processes. It cannot be terminated like regular processes, as doing so would result in a system shutdown or restart. Additionally, PID 1 is often the recipient of certain signals that have system-wide effects, such as the SIGTERM signal for system shutdown.
In summary, PID 1 refers to the process identifier assigned to the init process or system initialization process. It is a special process responsible for managing other processes and performing critical system initialization tasks.

PHP-FPM:

PHP-FPM (FastCGI Process Manager) is a PHP FastCGI implementation that provides a high-performance alternative to the traditional PHP CGI interface. It is commonly used in conjunction with web servers like NGINX or Apache to handle PHP requests.
PHP-FPM works by managing a pool of PHP worker processes that handle incoming PHP requests. This approach is more efficient compared to starting a new PHP process for each request, as PHP-FPM keeps the worker processes alive and ready to handle multiple requests.


NGINX with TLSv1.2:

NGINX is a popular web server and reverse proxy server that supports TLS (Transport Layer Security) for secure communications over the internet. By default, NGINX supports TLS 1.2 and higher versions, which are considered more secure than older versions.
To configure NGINX to use TLS 1.2, you need to make sure that your NGINX installation is built with OpenSSL version 1.0.1 or higher, as TLS 1.2 support depends on the underlying OpenSSL library.

Here's an example configuration snippet for NGINX to enable TLS 1.2:

server {
    listen 443 ssl;
    server_name example.com;

    ssl_protocols TLSv1.2;
    ssl_ciphers HIGH:!aNULL:!MD5;

    ssl_certificate /path/to/ssl_certificate.crt;
    ssl_certificate_key /path/to/ssl_certificate.key;

    # ... other NGINX configuration directives ...
}

In the above configuration:

listen 443 ssl; specifies that NGINX should listen on port 443 for HTTPS connections.
ssl_protocols TLSv1.2; sets the supported protocols to TLS 1.2 only.
ssl_ciphers HIGH:!aNULL:!MD5; defines the allowed ciphers for the TLS connection. This example disables weak ciphers like NULL and MD5.
ssl_certificate and ssl_certificate_key specify the paths to your SSL/TLS certificate and private key files respectively.
Make sure to replace example.com, /path/to/ssl_certificate.crt, and /path/to/ssl_certificate.key with the appropriate values for your setup.

After updating the NGINX configuration, you'll need to restart or reload NGINX for the changes to take effect.

