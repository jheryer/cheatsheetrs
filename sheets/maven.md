## Basic 
|
| Command | Description |
| --- | --- |
| `mvn clean` | Clean the project by removing the target directory |
| `mvn compile` | Compile the source code of the project |
| `mvn test` | Run tests using a suitable unit testing framework |
| `mvn package` | Package the compiled code and resources into a distributable format (e.g., JAR, WAR) |
| `mvn install` | Install the package into the local repository for use as a dependency in other projects |
| `mvn deploy` | Copy the package to the remote repository for sharing with other developers and projects |
|
## Lifecycle
|
| Command | Description |
| --- | --- |
| `mvn validate` | Validate the project is correct and all necessary information is available |
| `mvn initialize` | Initialize build state (e.g., set properties or create directories) |
| `mvn generate-sources` | Generate any source code for inclusion in compilation |
| `mvn process-sources` | Process the source code, for example, filter any values |
| `mvn generate-resources` | Generate resources for inclusion in the package |
| `mvn process-resources` | Copy and process the resources into the destination directory |
| `mvn test-compile` | Compile the test source code |
| `mvn process-test-resources` | Copy and process the test resources into the test destination directory |
| `mvn test` | Run tests using a suitable unit testing framework |
| `mvn package -DskipTests` | Build the project and skip running tests |
| `mvn package -Dmaven.test.skip=true` | Build the project, skip running tests, and also skip compiling tests |
| `mvn prepare-package` | Perform any operations necessary to prepare a package before the actual packaging |
| `mvn package` | Package the compiled code and resources into a distributable format (e.g., JAR, WAR) |
| `mvn pre-integration-test` | Perform actions required before integration tests are executed |
| `mvn integration-test` | Process and deploy the package if necessary into an environment where integration tests can be run |
| `mvn post-integration-test` | Perform actions required after integration tests have been executed |
| `mvn verify` | Run any checks to verify the package is valid and meets quality criteria |
| `mvn install` | Install the package into the local repository for use as a dependency in other projects |
| `mvn deploy` | Copy the package to the remote repository for sharing with other developers and projects |
|
## Profiles
|
| Command | Description |
| --- | --- |
| `mvn <phase> -P profile-id` | Execute a specific profile during the build phase |
|
