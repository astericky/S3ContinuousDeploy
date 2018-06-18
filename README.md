# Cirlce CI Continuous Deployment with Docker and AWS

1. create `.circleci/config.yml` in root folder

## Set up S3 Bucket

1. log into [aws console](https://console.aws.amazon.com)
2. click on Services dropdown
3. click on S3
4. click Create Bucket
5. fill out bucket name
6. set the region you want to use
7. set properties and set permissions
8. click create bucket

## Set up IAM Users and Roles

1. click on Services dropdown
2. click on IAM
3. click on Users
4. click on Add User
5. enter User name
6. set Access type to programmatic
7. click Next: Permissions
8. click Attach Existing Policies Directly
9. search and select AmazonEC2ContainerRegistryFullAccess
10. search and select AmazonS3FullAccess
11. search and select AWSElasticBeanstalkFullAccess
12. click Next: Review
13. click Create user
14. <!— You may need to manually add manual IAM permissions see: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-ecr.html —>
15. click Roles (located on the left sidebar)
16. click aws-elasticbeanstalk-ec2-role
17. click Attach Policy

## Set up Elastic Beanstalk

24. click on Services dropdown
25. click Elastic Beanstalk
26. click create new application
27. fill in application name and optional description
28. if you aren’t already there navigate to Elastic Beanstalk
29. click the Actions button next to the name of your application
30. click create environment
31. click web server environment
32. click select
33. fill out Environment name
34. fill out domain (just a name for the url of your environment)
35. select Platform (Multi-container Docker)
36. select Upload your code
37. click Upload
38. select Source code origin Public S3 URL
39. click Upload
40. click Create Environment