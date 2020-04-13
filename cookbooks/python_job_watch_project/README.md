# python_job_watch_project

- In this folder I have my Chef Cookbook I had created.

- I have provisioned various packages and used bash commands to install requirements plugins.

- I have also created a TDD to confirm my project executes with no errors.

- I have also created a packer.json which in turn creates the AMI on aws. I then used this AMI to launch 2 EC2 instances called 'Python_App_Master' and 'Slave_Node_Pipeline'.

- I then created a slave node agent in Jenkins that executes the CD for the project.
