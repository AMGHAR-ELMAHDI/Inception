<h1 align="center">
   Inception
</h1>

## Project Overview

**Inception** This project is designed to enhance your understanding of system administration through the use of Docker. The objective is to set up an infrastructure composed of different services within a personal virtual machine.

## For a more visual and extensive view visit:

https://www.tldraw.com/v/6XpfKApTKpY6gRjIjb_Xs?viewport=6387,-12571,25150,16790&page=page:page

## Key Features About Docker:

### Docker

Docker is an open-source platform that automates the deployment, scaling, and management of applications within lightweight, portable containers. Containers package an application and its dependencies together, ensuring that it runs reliably across different computing environments.

### Docker Compose

Docker Compose is a tool that simplifies the management of multi-container Docker applications. It allows users to define and run applications with multiple services using a single YAML file, known as docker-compose.yml. This file outlines the services, networks, and volumes that comprise the application, making it easier to configure and manage complex setups.

### Docker Engine and Docker Daemon

Docker Engine, also known as Docker Daemon, is the core component of the Docker platform. It is responsible for running and managing Docker containers. Docker Engine provides the runtime environment and tools necessary to create, deploy, and manage containerized applications.

### PID 1

PID1, also known as Process ID 1, refers to the first process that is executed in an operating system. In most Unix-like systems, including Linux, PID1 is typically the parent process of all other processes in the system. PID1 has a unique role and responsibilities that differentiate it from other processes.

### Containerd

Containerd is an open-source container runtime that provides a high-level interface and infrastructure for managing containers. It is designed to be lightweight, efficient, and extensible, and it is used as the underlying container runtime in popular container platforms like Docker and Kubernetes.

### Namespaces

Linux namespaces provide process-level isolation by creating separate instances of global system resources for each container. Namespaces allow containers to have their own isolated view of system resources such as process IDs, network interfaces, file systems, inter-process communication, and more. Essentially, namespaces create a boundary that separates containers from one another and from the host system, preventing them from interfering with each other.

### Cgroups

Control groups allow fine-grained resource allocation and management by limiting and prioritizing resource usage for processes. With groups, system resources such as CPU, memory, disk I/0, and network bandwidth can be allocated and controlled for containers. This ensures that containers have predictable and controlled access to resources, preventing one container from monopolizing resources and affecting others.

## Setup Instructions

To set up the project locally, follow these steps:

1. **Clone the Repository**:

   ```bash
   git clone git@github.com:AMGHAR-ELMAHDI/Inception.git
   ```

2. **Run the project the Project**:

   ```bash
   make
   ```

3. **To Visit the Wordpress website**:
   ```
   https://localhost:443
   ```

4. **To Visit the adminer website and view the database**:
   ```
   http://localhost:8080
   ```

5. **To Visit the Portainer website**:
   ```
   http://localhost:9443
   ```

## Technologies Used

- **Docker**
- **Nginx**
- **MariaDB**
- **Wordpress**
- **FTP**
- **Redis**
- **Adminer**
- **Portainer**
