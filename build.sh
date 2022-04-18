mvn clean install
cp opentelemetry-javaagent-all.jar opentelemetry-app-a/
cp opentelemetry-javaagent-all.jar opentelemetry-app-b/
cp enable.json opentelemetry-app-a/
cp enable.json opentelemetry-app-b/
cp vaif.json opentelemetry-app-a/
cp vaif.json opentelemetry-app-b/
docker-compose up --build
