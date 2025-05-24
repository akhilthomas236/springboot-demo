#!/bin/sh

# ----------------------------------------------------------------------------
# Maven Wrapper Bootstrap Script
# ----------------------------------------------------------------------------
# This script is a minimal, cross-platform way to invoke Maven via the wrapper.
# It will download the Maven Wrapper JAR and properties if needed, then run Maven.
# ----------------------------------------------------------------------------

if [ -f "mvnw.cmd" ]; then
  # Windows wrapper exists, so this is a valid Maven wrapper project
  :
else
  echo "Downloading Maven Wrapper..."
  WRAPPER_URL="https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar"
  WRAPPER_DIR=".mvn/wrapper"
  mkdir -p "$WRAPPER_DIR"
  curl -fsSL "$WRAPPER_URL" -o "$WRAPPER_DIR/maven-wrapper.jar"
  cat > "$WRAPPER_DIR/maven-wrapper.properties" <<EOF
wrapperUrl=$WRAPPER_URL
EOF
fi

# Run the Maven Wrapper
if [ -x "./mvnw" ]; then
  ./mvnw "$@"
else
  echo "Maven Wrapper script not found or not executable. Please run 'mvn' directly or regenerate the wrapper."
  exit 1
fi
