* Uninstall git with all unused dependencies
```
sudo yum autoremove git -y
```

* Check installed git 
```
sudo yum --showduplicates list git
```
* Find previous available git version
```
sudo yum list git
```

* Install previous available git version
```
sudo yum install git 2.14.3-2
```

* Check installed git version

```
git --version
```
* Update git to the latest version
```
sudo yum update git -y
```

* Check installed git version
```
git --version
```