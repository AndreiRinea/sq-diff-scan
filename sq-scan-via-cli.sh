./gradlew clean build

# The CLI SonarQube scanner (sonar-scanner) will pick up properties/settings from sonar-project.properties.
# In addition, some other properties will be supplied using -D switches from environment variables
# finally the -X switch means 'produce the most verbose output'
sonar-scanner \
    -Dsonar.host.url="$LOCAL_SONAR_URL" \
    -Dsonar.login="$LOCAL_SONAR_API_TOKEN" \
    -Dsonar.java.jdkHome="$JAVA_HOME" \
    -X