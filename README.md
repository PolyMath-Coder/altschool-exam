# AltSchool Second Semester Exam Project Solution



## Demonstration/Documentation of Project Solution

    The choice virtualization tool used in executing this project is majorly
-  AWS EC2 Instance - which simulates a plain computer and provides/enables virtualization.


## Procedure

### Step 1
The following were taken as first steps towards provision a linux server.
After creating an AWS Free tier account, navigate to the AWS Management console and take the following steps.

- To launch an EC2 instance,
 1. Click Launch Instance

 2. Choose an Amazon Machine Image (AMI):
    Select Ubuntu Server 22.04 LTS or another preferred Linux distribution

 3. Choose an Amazon Machine Image (AMI):
    Select Ubuntu Server 22.04 LTS or your preferred Linux distribution.

 4. Choose an Instance Type:
    Select t2.micro (free tier eligible).

 5. Configure Key Pair
    - Create or select a key pair for SSH access.
    - Download the key file (.pem).
 
 6. Configure Security Groups:
    - Configure the server to allow HTTP traffic (port 80) as stated in the requirements.
Allow HTTP (port 80) and SSH (port 22).

 7.   Launch configured instance
    - Click Launch Instance and wait for the instance to start.


###  Step 2: Connection to Instance
   ## Procedure
   The following steps were taken to establishing connection to newly created instance.
1. Open a terminal and run:

   ```
   $ ssh -i altschool-key.pem ubuntu@34.203.10.129

   ```

   This way, we SSH into the server and it gives the output seen below.

   SSH Connection Output
   ![Connection Instance](/assets/ssh-photo.jpeg)


 ### Step 3: Install & Upgrade all needful Packages

    ```
   $ sudo apt update && sudo apt upgrade -y

   ```

 ### Step 4:Install NGINX

 ```
   $ sudo apt install nginx -y
 ```
  






















<!-- The choice virtualization tool used in executing this project include
1. Virtual Box - which simulates a plain computer and provides/enables virtualization.
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


4. Add an index.html File: Create html/index.html and add your static HTML content. Also nginx is inputted in the Vagrant which serves as web server.

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

![VagrantSSH](/assets/img-3.jpeg) -->
