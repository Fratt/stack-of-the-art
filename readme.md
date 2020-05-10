Stack of the art
================

A state-of-the-art stack (or is it?).

## Stack
| Role | Technology |
|---|---|
| Front-end | Angular (npm) |
| Back-end | Spring Boot |
| Web server | nginx |
| Database | MariaDB |
| Deployment | Docker, Docker Compose |

## Building
```
make
```

## Starting it
```
make up
```
Front-end can be access through http://localhost/, and backend through http://localhost/api/

## See logs
```
docker logs -f tomcat
docker logs -f mariadb
docker logs -f nginx
```

## Stopping it
```
make down
```

## Commands used to generate it
### Front-end
```
ng new front
```
Routing enabled, stylesheet format: SCSS

### Back-end
Go to https://start.spring.io/
* Project = Maven Project
* Language = Java
* Spring Boot = Latest non-snapshot/RC
* Group = country.you
* Artifact = backend
* Name = backend
* Description = Back-end
* Package name = country.you.backend
* Packaging = Jar
* Java = 11
* Dependencies =
  * Spring Boot Dev Tools
  * Spring Web
  * Rest Repositories
  * JDBC API
  * MariaDB Driver

Then unzip the folder in the root and rename it to "back".

Edit `back/src/main/resources/application.properties` and put
```
spring.datasource.driver-class-name=org.mariadb.jdbc.Driver
spring.datasource.url=jdbc:mariadb://mariadb:3306/setme
spring.datasource.username=root
spring.datasource.password=setme

server.servlet.context-path=/api
```

## Copyright
Inspired by https://github.com/ninrod/angular-springboot-nginx
