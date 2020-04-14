# python_job_watch_project

- In this folder I have my Chef Cookbook I had created.

- Provisioned various packages and used bash commands to install requirements plugins.

- Created a TDD to confirm my project executes with no errors.

- Developed a packer.json which in turn creates the AMI on AWS. I then used this AMI to launch 2 EC2 instances called 'Python_App_Master' and 'Slave_Node_Pipeline'.

- Initialised a slave node agent in Jenkins that executes the CI for the project.

- Embedded the Github PULL_REQUEST plugin to allow PULL_REQUEST's to active the slave node.

- Added a GitHub protected branch for master and configured the settings.
