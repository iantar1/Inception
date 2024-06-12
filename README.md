# Inception
This project aims to broaden your knowledge of system administration by using Docker.


**In the Ops section** of the apter you downloaded a Doer image, launed a container from it, logged into the
container, executed a command inside of it, and then stopped and deleted the container.

**In the Dev section**, you containerized a simple application by pulling some source code from GitHub and building
it into an image using instructions in a Doerfile. You then ran the containerized app.

-> Te Docker engine is the core soware that runs and manages containers.

-> At the time of writing, the major components that make up the Doer engine are; the Doer daemon, containerd, runc, and various plugins su as networking and storage. Together, these create and run containers.

**Namespaces** are a feature of the Linux kernel that partition kernel resources such that one set of processes sees one set of resources,  while another set of processes sees a different set of resources.

**SSL certificate:** SSL certificates are what enable websites to use HTTPS, which is more secure than HTTP. An SSL certificate is a data file hosted in a website's origin server. SSL certificates make SSL/TLS encryption possible, and they contain the website's public key and the website's identity, along with related information.

what is SSL: 
	Transport Layer Security (TLS) is an encryption protocol that 
	provides secure connections between servers and applications on the internet. 

deamon off; :
	When running Nginx in a containerized environment (such as Docker), it's common practice to run the main process in the foreground. Docker containers are designed to run a single process in the foreground and manage its lifecycle. If the main process exits, the container stops. Using daemon off; ensures Nginx behaves correctly within the container environment.

**Mariadd:**

**steps to folow**
-> understand docker (how it works under the hood) and docker compose.
-> learn about nginx configuratin: https://www.youtube.com/watch?v=C5kMgshNc6g
-> learn about maraiadb (mysql) just the basics
-> learn how to set up wordpress
-> set up wordpress with nginx in your VM  than use containers


**what is docker and ho it works:**
	- Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly.

**what is docker-compose and ho it works:**
	- Docker Compose is a tool that helps you define and share multi-container applications.
**docker networks:**
**docker volumes:**
