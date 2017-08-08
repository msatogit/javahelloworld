FROM java:7
COPY src  /home/root/javahelloworld/src
RUN date
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
WORKDIR /home/root/javahelloworld
ENTRYPOINT ["java","-cp","bin","HelloWorld"]

