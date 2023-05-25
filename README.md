Purpose: Create EC2, IAM role so that it can be managed by System Manager

- Create EC2 instance
  - Create SG that allow to SSH
  - Create new key pair with private key copy at your local machine
  - user data script to run custom command
- Create IAM role to attach AmazonSSMManagedInstanceCore
