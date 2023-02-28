# gradlew invokes the gradle wrapper which can run tasks
# sonar is the task to be run, which is a short name for "SonarQube scan"
# --debug means display the most detailed log level, to the standard output
# --stacktrace means 'display the error details, namely the stack trace' should an error would occur

./gradlew sonar --debug --stacktrace