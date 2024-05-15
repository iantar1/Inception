# Inception
This project aims to broaden your knowledge of system administration by using Docker.


**In the Ops section** of the apter you downloaded a Doer image, launed a container from it, logged into the
container, executed a command inside of it, and then stopped and deleted the container.

**In the Dev section**, you containerized a simple application by pulling some source code from GitHub and building
it into an image using instructions in a Doerfile. You then ran the containerized app.

-> Te Docker engine is the core soware that runs and manages containers.

-> At the time of writing, the major components that make up the Doer engine are; the Doer daemon, containerd, runc, and various plugins su as networking and storage. Together, these create and run containers.

**Namespaces** are a feature of the Linux kernel that partition kernel resources such that one set of processes sees one set of resources,  while another set of processes sees a different set of resources.