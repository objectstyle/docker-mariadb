# ObjectStyle MariaDB Docker Image
This is a MariaDB Docker image for ObjectStyle [site](http://www.objectstyle.com/). Built on top of [centos:centos7](https://hub.docker.com/_/centos/) image.

## Usage

`docker pull objectstyle/mariadb`

Or, if you prefer to build it on your own:  
`docker build -t objectstyle/mariadb .`

Run the image as daemon and bind it to port 3306:  
`docker run -d --name mariadb --net=osllc -p $DOCKER_IP:3306:3306 -v $MYSQL_ROOT:/var/oc/mysql objectstyle/mariadb`