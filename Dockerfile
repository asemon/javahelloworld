FROM java:7

COPY src /home/root/cidocker/src
WORKDIR /home/root/cidocker
RUN mkdir bin
RUN javac -d bin src/Test.java 
ENTRYPOINT ["java", "-cp", "bin", "Test"]
