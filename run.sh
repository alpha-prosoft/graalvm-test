#!/bin/bash

set -e

echo "############# Running FatJAR #########"
java -jar target/nativetest-1.0-standalone.jar


echo "############# Running NativeImage #######"
./lambda_function
