# Cirlce CI Continuous Deployment with Docker and AWS

1. create `.circleci/config.yml` in root folder

## Set up S3 Bucket

1. log into [aws console](https://console.aws.amazon.com)
1. click on Services dropdown
1. click on S3
1. click Create Bucket
1. fill out bucket name
1. set the region you want to use
1. set properties and set permissions
1. click create bucket

## Set up IAM Users and Roles

1. click on Services dropdown
1. click on IAM
1. click on Users
1. click on Add User
1. enter User name
1. set Access type to programmatic
1. click Next: Permissions
1. click Attach Existing Policies Directly
1. search and select AmazonEC2ContainerRegistryFullAccess
1. search and select AmazonS3FullAccess
1. search and select AWSElasticBeanstalkFullAccess
1. click Next: Review
1. click Create user
1. <!— You may need to manually add manual IAM permissions see: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-ecr.html —>
1. click Roles (located on the left sidebar)
1. click aws-elasticbeanstalk-ec2-role
1. click Attach Policy
1. search for and select the following options
    * AmazonEC2ContainerServiceforEC2Role
    * AWSElasticBeanstalkWebTier
    * AWSElasticBeanstalkMulticontainerDocker
    * AWSElasticBeanstalkWorkerTier

## Set up Elastic Beanstalk

1. click on Services dropdown
1. click Elastic Beanstalk
1. click create new application
1. fill in application name and optional description
1. if you aren’t already there navigate to Elastic Beanstalk
1. click the Actions button next to the name of your application
1. click create environment
1. click web server environment
1. click select
1. fill out Environment name
1. fill out domain (just a name for the url of your environment)
1. select Platform (Multi-container Docker)
1. select Upload your code
1. click Upload
1. select Source code origin Public S3 URL
1. click Upload
1. click Create Environment