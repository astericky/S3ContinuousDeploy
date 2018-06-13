# S3ContinuousDeploy
Continuous Deploy to AWS S3 


1. create `.circleci/config.yml` in root folder

### Set up S3 Bucket
1. log into aws console https://console.aws.amazon.com
2. click on Services dropdown
3. click on S3
5. click Create Bucket
6. fill out bucket name
7. set the region you want to use
8. set properties and set permissions
9. click create bucket
10. click on Services dropdown
11. click on IAM
12. click on Users
13. click on Add User
14. enter User name
15. set Access type to programmatic
16. click Next: Permissions
17. click Attach Existing Policies Directly
18. search and select AmazonEC2ContainerRegistryFullAccess
19. search and select AmazonS3FullAccess
20. search and select AWSElasticBeanstalkFullAccess
21. click Next: Review
22. click Create user
23. <!— You may need to manually add manual IAM permissions see: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-ecr.html —> 
24. click on Services dropdown
25. click Elastic Beanstalk
26. click create new application
27. fill in application name and optional description
28. if you aren’t  already there navigate to Elastic Beanstalk 
29. click the Actions button next to the name of your application
30. click create environment
31. click web server environment
32. click select,
33. fill out Environment name, 
34. fill out domain (just a name for the url of your environment)
35. select Platform (Multi-container Docker)
36. select Upload your code
37. click Upload
38. select Source code origin Public S3 URL 
39. click Upload
40. click Create Environment