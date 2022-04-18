FROM openjdk:11-jre
RUN mkdir -p /app/bin
COPY ./target/opentelemetry-app-b.jar /app/bin
COPY opentelemetry-javaagent-all.jar /app/bin
COPY enable.json /app/bin
COPY vaif.json /app/bin
CMD java -Dotel.traces.exporter=jaeger \
         -Dotel.exporter.jaeger.endpoint=http://jaeger:14250 \
         -Dotel.metrics.exporter=none \
         -Dotel.resource.attributes="service.name=OpenTelemetryAppB" \
         -Dotel.instrumentation.vaif.config.path="/app/bin/enable.json" \
         -Dotel.instrumentation.vaif.context_prop_config.path="/app/bin/vaif.json" \
		 -javaagent:/app/bin/opentelemetry-javaagent-all.jar \
		 -jar \
		 /app/bin/opentelemetry-app-b.jar
