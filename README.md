# Sample Java project CLI vs Gradle in SQ

## Purpose

Show the difference in issue findings in SonarQube scanning when scanning with the CLI/Jenkins plugin versus when using
the Gradle plugin

## Requirements:

1. JDK 8+ (gradle is not required because gradle wrapper is used)
2. SonarScanner (Mac: `brew install sonar-scanner`)
3. Environment variables set:

    * `$LOCAL_SONAR_URL` (example: http://localhost:9000)
    * `$LOCAL_SONAR_API_TOKEN` (the API token generated in SonarQube account)
    * `$JAVA_HOME` - as part of a healthy installation of JDK

If any of the env vars above clash with existing ones on your test env feel free to rename them in `sq-scan-via-cli.sh`
and `app/build.gradle` respectively

## Usage

1. Scan with the CLI tool by running `./sq-scan-via-cli.sh` script
2. Upon successful scan open a browser tab with the results and navigate to "Findings" tab. From now on do not refresh
this tab.
3. Scan with the Gradle plugin by running `./sq-scan-via-gradle.sh`
4. Upon successful scan open _another_ browser tab with the results and navigate to "Findings" tab. Compare the results
with the previously open tab. You should find at least an additional 'critical' issue from rule java:S1948 - _"Fields in
a "Serializable" class should either be transient or serializable"_ (Make "address" transient or serializable)

## Evidence

There are attached two log files (named after the .sh files, with the .log extension) from runs via CLI and Gradle to
show the most detailed output available. Comparing these runs there have been added properties to the CLI flow to mimic
as much as possible the Gradle flow. Still couldn't provide the same level of thoroughness.