##Step 0 - Installing the Default JRE/JDK

#To install this version, first update the package index:
sudo apt update

#Execute the following command to install the default Java Runtime Environment (JRE), which will install the JRE from OpenJDK 11:
sudo apt install default-jre

#Verify the installation with:
java -version

#You may need the Java Development Kit (JDK) in addition to the JRE in order to compile and run some specific Java-based software. To install the JDK, execute the following command, which will also install the JRE:
sudo apt install default-jdk

#Verify that the JDK is installed by checking the version of javac, the Java compiler:
javac -version

#Step 1 — Installing Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins

#Step 2 — Starting Jenkins

sudo systemctl start jenkins
sudo systemctl status jenkins

#Step 3 — Opening the Firewal
sudo ufw allow 8080

curl -4 icanhazip.com
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
