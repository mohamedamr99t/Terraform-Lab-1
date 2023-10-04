1. **Create VPC (Virtual Private Cloud)**
    - A VPC is a virtual network dedicated to your AWS account. It is logically isolated from other virtual networks in the AWS Cloud.

2. **Create Internet Gateway**
    - The internet gateway allows communication between instances in your VPC and the internet.

3. **Create Public Route Table**
    - A route table contains a set of rules, called routes, that are used to determine where network traffic is directed.

4. **Create Private Route Table**
    - Similar to the public route table but with rules for private subnets.

5. **Create Public Route**
    - A public route in the route table that points all traffic (0.0.0.0/0) to the internet gateway.

6. **Attach Public Route Table to Subnets**
    - This allows subnets to use the public route table for their traffic routing.

7. **Create Security Group which allows SSH from 0.0.0.0/0**
    - Security groups act as a firewall for associated Amazon EC2 instances, controlling both inbound and outbound traffic at the instance level.

8. **Create Security Group that allows SSH and port 3000 from VPC CIDR only**
    - This security group allows SSH and port 3000 access only from IP addresses within the VPC's CIDR range.

9. **Create EC2 (Bastion) in Public Subnet with Security Group from 7**
    - A bastion host is a special-purpose computer on a network specifically designed and configured to withstand attacks.

10. **Create EC2 (Application) Private Subnet with Security Group from 8**
    - This EC2 instance will host the application and will be placed in a private subnet with specific security group rules.

## Create the IaC
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/204b08ae-3752-42da-9f5b-2ad7c82af970)
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/39a5b57c-0a3a-49b3-97a3-b3eaaf292053)
## Created Ec2 Instances
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/2036ff76-0ed2-422b-955f-344322c08789)
## Connecting to Bastion-Instance (which use public subnet) 
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/a81e0e5b-fe9c-4cf2-bf25-100bac23b079)
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/fc235ae8-5197-4409-a4d7-647fdc281bb7)
## Using the generated private key to connect to another instances
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/f594ee71-8c66-472b-851d-a4baa8500389)
## Connecting to Application Instance via Bastion(which use private subnet)
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/81fa418f-281a-49be-aaa7-3525f9cb134e)
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/7c29b7a4-4389-4ed6-b9ea-7995f18db939)
##Destroy the IaC
![image](https://github.com/mohamedamr99t/Terraform-Lab-1/assets/139065575/7cbf2804-79e5-40ce-98f4-8e393b818ec1)
