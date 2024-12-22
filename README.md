# AltSchool Second Semester Exam Project Solution



## Demonstration/Documentation of Project Solution
The choice virtualization tools used in executing this project include
1. Virtual Box - which simulates a plain computer upon which provides/enables virtualization.
2. Vagrant - which manages virtual machines.


After having installed and configured VirtualBox on the local machine, the virtual computer is spinned
the Vagrant ISO image is also installed locally and duly configured as it should.

The following procedures then follows

1. First, a Vagrant Project is initialized.

A directory is created for the project by running the following scripts.
The above scripts create a vagrant project and also initializes a Vagrantfile using the Ubuntu 20.04 (Focal Fossa) box.

```
$ mkdir my-vagrant
cd my-vagrant
vagrant init ubuntu/focal64
```

2. Edit the Vagrantfile: Open the Vagrantfile and configure the settings. Replace the default content with the following as indicated.

Reconfigured VagrantFile
![VagrantFile](/assets/img-1.jpeg)

3. Forward Port: Maps port 80 inside the VM to port 8080 on the host machine.
Synced Folder: Syncs the ./html directory on your host to /var/www/html in the VM.


4. Add an index.html File: Create html/index.html and add your static HTML content.

5. Bring Up the Virtual Machine by running the script below:

```
vagrant up

```

Vagrant will download the base box, configure the VM, and run the provisioning script.

6. SSH into the Virtual Machine(VM) using the script below

```
vagrant ssh

```
This then appears on the terminal.

![VagrantSSH](/assets/img-2.png)


7. Open your browser and visit

```
http://102.89.22.22/index.html

```
This then appears on the browser.
