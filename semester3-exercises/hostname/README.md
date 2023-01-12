## This project was created to satisy the following instructions, given as a project for Altschool Africa Cloud engineering Semester 3 Christmas holiday challenge


### You are required to perform the following tasks

- Set up 2 EC2 instances on AWS(use the free tier instances).
- Deploy an Nginx web server on these instances(you are free to use Ansible)
- Set up an ALB(Application Load balancer) to route requests to your EC2 instances
- Make sure that each server displays its own Hostname or IP address. You can use any programming language of your choice to display this.

### Important points to note:

- I should not be able to access your web servers through their respective IP addresses. Access must be only via the load balancer
- You should define a logical network on the cloud for your servers.
- Your EC2 instances must be launched in a private network.
- Your Instances should not be assigned public IP addresses.
- You may or may not set up auto scaling(I advice you do for knowledge sake)
- You must submit a custom domain name(from a domain provider e.g. Route53) or the ALB’s domain name.





### I solved this task using two methods:
Firstly, I practiced using Ansible to provision the insfracstructure on AWS then also used ansible to deploy Nginx and my app. Playbook is in my repository
[playbook](https://github.com/EjiroLaurelD/altschool-cloud-exercises/tree/master/semester3-exercises/hostname/AWS-Ansible)   while my app repository is [My-App](https://github.com/EjiroLaurelD/hostname-project)                                               

Second method was using the AWS GUI to manually provison the infrastructure  and created 3 instances, one instance on a public subnet(BASTION-HOST) and 2 instances on the private subnet(INSTANCE A-B)using auto scaling groups. I added the two private instances to a target group in the Load balancer then redirected traffic from the private instance  through the bastion host to the ALB. Next, I deployed the nginx server and my app using ansible then I provisoned Nat gateway to make the site highly available. 

After connecting to the public internet using natgateway, I deleted the natgateway and released the Elastic IP attached to it.

My-App is live and running with ALB url http://project-alb-362817232.us-east-1.elb.amazonaws.com/
 domain-name: ejirolaureld.me
 
### VPC
Name your VPC and include a CIDR block 10.0.0.0/16.
![VPC](../hostname//vpc.png)

### Subnet
 Create your subnets, two subnets each  for public and private subnets in two availability zones. I used us-east-1a and b zones. 
I used the following CIDR blocks for my subnets  
- private-subnet a  10.0.16.0/20
- private subnet b 10.0.32.0/20
- public subnet a 10.0.0.0/24
- public subnet b 10.0.1.0/24


![subnet](../hostname/subnets.png)

### Route table
Create route tables and make sure to attach it to the right VPC, the one created.

Click on edit route tables under actions. Add route with the CIDR 0.0.0.0/0  as your destination, then use your created Internet gateway as your target and save changes. Under actions click on edit subnet associations and add your public subnet to your public route table. 

![routetable](../hostname/route-table.png)


### Internet Gateway
Create an Internet gateway to allow internet access through our instances and attach it to your VPC. To do this, click on the internet gateway, go to actions then click on attach to VPC. Make sure to attach it to the VPC created for your project.

![internetgateway](../hostname/igw.png)


### Application Load-Balancer
![Loadbalancer](../hostname/lb.png)

### Target group
![targetgroup](../hostname/target-group.png)

### Autoscaling
![Autoscaling](../hostname/autoscaling.png)

### EC2
![instance](../hostname/instance.png)

### Security group rules for EC2
![securitygroup](../hostname/sg-in.png)
![securitygroup](../hostname/sg-out.png)





