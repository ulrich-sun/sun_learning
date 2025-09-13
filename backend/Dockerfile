#use slim image (if possible)
FROM maven:3.9.6-eclipse-temurin-17 AS build

#create working directory
WORKDIR /shopease
#copy the code
COPY . /shopease/

#compile the code
RUN mvn clean package -DskipTests

#Second Step
FROM eclipse-temurin:17-jdk-alpine

# Labels for documentation
LABEL maintainer="noumsiulrichsteve@gmail.com"
LABEL version="1.0"
LABEL description="ShopEase Application (Bigup à Pardeep)"

# Install additional tools if needed (optional)
# This command it's an exemple if you want to install somehting inside your image
RUN apk add --no-cache bash

#Create a specific user for launch your shopease
RUN addgroup --system shopeasegroup && adduser --system shopeaseuser --ingroup shopeasegroup 
USER shopeaseuser

#Use the same working directory name ( here you create another one)
WORKDIR /shopease

#Copy your result file
COPY --from=build /shopease/target/*.jar shopease.jar

#Port
EXPOSE 8080

# Add healthcheck (adjust endpoint as needed)
# HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
#     CMD curl -f http://localhost:8080/actuator/health || exit 1

#Command to start your shopease Application
ENTRYPOINT ["java", "-jar", "shopease.jar"]

