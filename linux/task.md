# Task-1 
To write specific word(InService) under first Instance number 

```{
    "AutoScalingInstances": [
        {
            "InstanceId": "i-04c142c8eb316e77c",
            "InstanceType": "t3.medium",
            "AutoScalingGroupName": "eks-78bd1ced-de27-9186-8a19-67f276fab01a",
            "AvailabilityZone": "us-east-1b",
            "LifecycleState": "InService",
            "HealthStatus": "HEALTHY",
            "LaunchTemplate": {
                "LaunchTemplateId": "lt-06b03da8c66b17e3b",
                "LaunchTemplateName": "eks-78bd1ced-de27-9186-8a19-67f276fab01a",
                "Version": "1"
            },
            "ProtectedFromScaleIn": false
        }
        {
            "InstanceId": "i-04jsdksdnksndksds",
            "InstanceType": "t3.medium",
            "AutoScalingGroupName": "eks-78bd1ced-de27-9186-8a19-67f276fab01a",
            "AvailabilityZone": "us-east-1b",
            "LifecycleState": "InService",
            "HealthStatus": "HEALTHY",
            "LaunchTemplate": {
                "LaunchTemplateId": "lt-06b03da8c66b17e3b",
                "LaunchTemplateName": "eks-78bd1ced-de27-9186-8a19-67f276fab01a",
                "Version": "1"
            },
            "ProtectedFromScaleIn": false
        }
    ]
}
```


`grep -A 4 'i-04c142c8eb316e77c' task.txt | cut -d: -f2 | grep InService | tr -d ,| sed s/\"//g InService`

or 

`cat task.txt | grep i-04c142c8eb316e77c -A 5 | grep "LifecycleState" | cut -d '"' -f4`


* Check below web-site for after and before parameter.

[Grep: show lines before and after the match in Linux](https://ma.ttias.be/grep-show-lines-before-and-after-the-match-in-linux/)

# Task-2 

Hi Devops candidates, Could  you please give an access to altinkaynak user for development server who has joined to team. If you have any question, don't hesitate to reach me! :slightly_smiling_face:


[How do I add new user accounts with SSH access to my Amazon EC2 Linux instance?](https://aws.amazon.com/premiumsupport/knowledge-center/new-user-accounts-linux-instance/)

`Solution:` I want to add new user accounts that can connect to my Amazon Elastic Compute Cloud (Amazon EC2) Linux instance using SSH. How do I do that?

* Every Amazon EC2 Linux instance launches with a default system user account with administrative access to the instance. If multiple users require access to the instance, it's a security best practice to use separate accounts for each user.

There are basically two roles here:
* Admin (EC2 defaul system user) and you will give permission to remote users. 
* Remote users.

`Admin should follow below steps.`

```
- Launch an instance

- sudo adduser new_user

- sudo su - new_user

- mkdir .ssh

- chmod 700 .ssh

- touch .ssh/authorized_keys

- chmod 600 .ssh/authorized_keys

```

`At this point  remote user should create a key pair with below commands:`

```
- open Terminal 

- ssh-keygen -t rsa (mac users) 
```
`it will be generated two keys like below`
```
- id_rsa (keep this key (not share with anyone))

- id_rsa.pub (share this public key to admin)
```

* Admin will run the Linux cat command in append mode and will paste the content of :`id_rsa.pub` key as below. 

```
- cat >> .ssh/authorized_keys
```
By doing that, Admin confirms the permission. 

Now, remote user (new_user) will make ssh connection by using `id_rsa`key.

```
ssh -i ~/.ssh/id_dsa new_user@44.193.211.42
```

The new user is connected EC2.