# Inception

PID1:

PID 1 refers to the process identifier (PID) assigned to the first process started by the operating system during the boot process. In most Linux-based systems, the process with PID 1 is typically a special process known as the init process or the system initialization process.
The init process has a unique role in the operating system. It is responsible for starting and managing other processes, services, and daemons. It is the ancestor process of all other processes in the system, forming a process hierarchy or process tree.
Traditionally, the init process was implemented using a program called init, but modern Linux distributions often use alternatives such as systemd, SysVinit, or Upstart.
The init process, or its equivalent, is started directly by the kernel during the boot process and has certain privileges and responsibilities. It performs essential system initialization tasks, such as mounting filesystems, setting up network interfaces, and launching system services.
PID 1 has unique characteristics compared to other processes. It cannot be terminated like regular processes, as doing so would result in a system shutdown or restart. Additionally, PID 1 is often the recipient of certain signals that have system-wide effects, such as the SIGTERM signal for system shutdown.
In summary, PID 1 refers to the process identifier assigned to the init process or system initialization process. It is a special process responsible for managing other processes and performing critical system initialization tasks.
----------------------------------------------------------------------------------------
PHP-FPM:

PHP-FPM (FastCGI Process Manager) is a PHP FastCGI implementation that provides a high-performance alternative to the traditional PHP CGI interface. It is commonly used in conjunction with web servers like NGINX or Apache to handle PHP requests.
PHP-FPM works by managing a pool of PHP worker processes that handle incoming PHP requests. This approach is more efficient compared to starting a new PHP process for each request, as PHP-FPM keeps the worker processes alive and ready to handle multiple requests.
----------------------------------------------------------------------------------------


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
----------------------------------------------------------------------------------------


CMD ["nginx", "-g", "daemon off;"]

The line you provided appears to be a Docker command that is typically used in a Dockerfile to specify the command to run when the Docker container starts. In this case, it is running the NGINX web server with the arguments "-g" and "daemon off;".

To break it down:

CMD is a Docker instruction that specifies the command to run when the container starts.
"nginx" is the command being executed, which starts the NGINX web server.
"-g" is an argument for the NGINX command.
"daemon off;" is another argument for the NGINX command. It is used to prevent NGINX from running in the background as a daemon, allowing it to run in the foreground so that Docker can manage the container.
----------------------------------------------------------------------------------------

docker build . -t nginx:1.0

The command is used to build a Docker image using a Dockerfile and tag it with the name "nginx" and version "1.0". Here's a breakdown of the command:

docker build: This is the command to build a Docker image.
.: The dot represents the build context, which is the current directory containing the Dockerfile and any other files required during the build process. In this case, it implies that the Dockerfile is located in the current directory.
-t nginx:1.0: The -t flag is used to specify a name and optionally a tag for the Docker image. In this case, the image will be tagged as "nginx" with the version "1.0". The format is name:tag.
When you run this command, Docker will search for a Dockerfile in the current directory and use it as a blueprint to build the image. It will execute the instructions in the Dockerfile, including any additional steps such as copying files, installing dependencies, and configuring the NGINX server.

After the build process completes successfully, you will have a Docker image named "nginx" with the version "1.0". You can then use this image to create and run containers based on it using the docker run command.
----------------------------------------------------------------------------------------

sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf

The command using the sed utility to modify a configuration file for MariaDB/MySQL. Specifically, it replaces the line bind-address = 127.0.0.1 with bind-address = 0.0.0.0 in the file located at /etc/mysql/mariadb.conf.d/50-server.cnf.

Breakdown of the command:

sed: The command-line utility used for text manipulation.

-i: This option tells sed to edit the file in-place, meaning the changes will be made directly to the file instead of printing the modified output to the console.

"s|bind-address = 127.0.0.1|bind-address = 0.0.0.0|g": The string enclosed in double-quotes is the sed expression. It consists of three parts separated by the | character:

s: The substitute command in sed for replacing text.
bind-address = 127.0.0.1: The original text to be replaced.
bind-address = 0.0.0.0: The new text that will replace the original text.
g: This is a flag indicating that the substitution should be performed globally (i.e., replace all occurrences in the file, not just the first one).
/etc/mysql/mariadb.conf.d/50-server.cnf: The path to the configuration file that will be modified.
->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
The change we made with the sed command modifies the bind-address setting in the MariaDB/MySQL configuration file.

By default, the bind-address is set to 127.0.0.1, which means the database server listens only on the loopback interface, allowing connections only from the local machine.

When we replace bind-address = 127.0.0.1 with bind-address = 0.0.0.0, it changes the configuration to make the database server listen on all available network interfaces. In other words, it allows incoming connections from any IP address, including remote machines.

This change can be useful if we want to access the MariaDB/MySQL server from other computers on the network or allow remote connections. However, it also introduces potential security risks, as it exposes the database server to external connections. It's important to consider the security implications and take appropriate measures, such as setting up a firewall or configuring access controls, to protect our database server from unauthorized access.
----------------------------------------------------------------------------------------


docker build . -t mariadb:1.0
docker run -d mariadb:1.0
docker exec -it 359 mysql -u root -p -e "SHOW DATABASES;"

docker system prune -a