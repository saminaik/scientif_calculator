ROM openjdk:11
COPY ./target/calculator2-1.0-SNAPSHOT-shaded.jar ./
WORKDIR ./
CMD ["java", "-jar", "calculator2-1.0-SNAPSHOT-shaded.jar"]
