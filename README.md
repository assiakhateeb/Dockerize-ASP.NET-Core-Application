## Commands:
* dotnet new - Creates a new project, configuration file, or solution based on the specified template.
```
dotnet new mvc --name hrapp --output dockerhrapp
```
* The docker build command builds Docker images from a Dockerfile 
```
docker build --tag dockerhrapp .
```
* Run a command in a new container
```
docker run -d -p 8080:80 --name hrapp dockerhrapp
```
//After modifing in Index.cshtml 
```
dotnet build
docker build --tag dockerhrapp .
docker container rm -f hrapp  //to stop the current running app, then run the new builded app
docker run -d -p 8080:80 --name hrapp dockerhrapp
```
## Output:

![2021-10-14 (2)](https://user-images.githubusercontent.com/39053503/137366108-6084bab5-cd0a-412a-b3e6-44ca32cc2c2c.png)
