# AWS Cloud Migration Project

## Project Overview
This project demonstrates the migration of a company's legacy system to AWS. The goal is to modernize the infrastructure by moving applications and databases from an outdated on-premises system to AWS EC2, making it easier to manage, more secure, and capable of handling more traffic.

## Architecture
- AWS EC2 instance (Ubuntu) provisioned with Terraform
- Apache web server
- PHP
- MySQL database
- WordPress CMS
- Security Group allowing SSH (22), HTTP (80) and HTTPS (443) traffic

## Infrastructure as Code
The EC2 instance and Security Group were provisioned using Terraform following best practices for infrastructure automation.

## Steps Completed

### 1. EC2 Instance Creation
Used Terraform to automatically provision an Ubuntu EC2 instance with the appropriate Security Group.

### 2. System Update
Updated the Ubuntu system with the latest security patches using apt update and apt upgrade.

### 3. Apache Installation
Installed Apache web server to allow the EC2 instance to host web applications.

### 4. PHP Installation
Installed PHP as a dependency required for WordPress to function.

### 5. MySQL Installation
Installed MySQL database server to store WordPress data.

### 6. Services Configuration
Started and enabled Apache and MySQL services to ensure they automatically restart on server reboot.

### 7. MySQL Security
Secured the MySQL installation by removing anonymous users, disabling remote root login and removing test databases.

### 8. WordPress Installation
Downloaded and extracted WordPress files and moved them to the Apache web server directory.

### 9. File Permissions
Set appropriate file permissions to allow Apache to read and write WordPress files properly.

### 10. Database Configuration
Created a dedicated WordPress database and user in MySQL with appropriate privileges.

### 11. WordPress Configuration
Configured wp-config.php to connect WordPress to the MySQL database.

### 12. WordPress Deployment
Successfully deployed WordPress and accessed it through the EC2 public IP address.

## Key Concepts Learned
- Cloud migration from on-premises to AWS
- Front-end vs back-end architecture
- Web server configuration with Apache
- Database management with MySQL
- WordPress deployment and configuration
- Infrastructure as Code with Terraform
- Linux system administration

## Technologies Used
- AWS EC2 (Ubuntu)
- Terraform
- Apache2
- PHP
- MySQL
- WordPress
- Linux CLI

## Screenshots
All screenshots are available in the screenshots folder.
