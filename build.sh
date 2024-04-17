#!/bin/bash

mkdir -p target

clojure -T:build uber \
	:main "nativetest.main" \
	:group-id "com.alpha-prosoft.test" \
	:artifact-id "nativetest-standalone" \
	:version '"1.0"' \
	:out 'target'
	
native-image -jar target/nativetest-standalone-1.0-standalone.jar \
        -o lambda_function \
        --no-fallback \
        --enable-https \
        --gc=G1 \
        -J-Xmx24g \
        -Dcom.zaxxer.hikari.useWeakReferences=false \
        -Dclojure.tools.logging.factory=lambda.logging/slf4j-json-factory \
        --enable-url-protocols=https \
        -H:+UnlockExperimentalVMOptions \
        -H:NumberOfThreads=16 \
        -H:-RunReachabilityHandlersConcurrently \
        -H:TraceClassInitialization=true \
        -H:ReflectionConfigurationFiles=reflectconfig.json \
        -H:+ReportExceptionStackTraces \
        -H:IncludeResources='conf/.*' \
        -H:IncludeResources='META-INF/.*' \
        -H:IncludeResources='META-INF/services/.*' \
        -H:IncludeResources='main/.*' \
        -H:IncludeResources='logback.xml' \
        -H:Log=registerResource \
        --report-unsupported-elements-at-runtime \
        --initialize-at-build-time java.util.UUID \
        --initialize-at-build-time=sun.rmi.server,sun.rmi.runtime,sun.rmi.runtime,sun.rmi.server,sun.rmi.server \
        --trace-class-initialization=clojure.lang.Compiler \
        --trace-class-initialization=clojure.lang.RT \
        --trace-class-initialization=java.security.SecureRandom \
        --trace-class-initialization=java.util.UUID$Holder \
        --trace-class-initialization=java.util.UUID \
        --trace-object-instantiation=java.util.UUID \
        --trace-object-instantiation=java.security.SecureRandom \
        --initialize-at-run-time=org.httpkit.client \
        --initialize-at-run-time=java.util.UUID$Holder \
        --initialize-at-run-time=org.postgresql.sspi.SSPIClient \
        --initialize-at-run-time=org.httpkit.client.SslContextFactory \
        --initialize-at-run-time=org.httpkit.client.HttpClient
