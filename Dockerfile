FROM openjdk:11
COPY ./target/SPE_miniproject-1.0-SNAPSHOT-jar-with-dependencies.jar ./
WORKDIR ./
CMD ["java", "-jar", "SPE_miniproject-1.0-SNAPSHOT-jar-with-dependencies.jar"]
