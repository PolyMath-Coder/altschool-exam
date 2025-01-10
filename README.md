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

 ### Step 4: Install NGINX

    ```
    $ sudo apt install nginx -y

    ```
  
Navigate to the NGINX web root directory and Replace the default HTML file in the NGINX Web root directory i.e. /var/www/html




















7. Open the browser and visit

```
http://34.203.10.129

```
This then appears on the browser.

![VagrantSSH](/assets/img-3.jpeg) 
