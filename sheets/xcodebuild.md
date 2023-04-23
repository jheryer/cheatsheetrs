## Basic Commands
|
| Command | Description |
| --- | --- |
| `xcodebuild -list` | List all targets, configurations, and schemes in the project |
| `xcodebuild -showsdks` | Show the available SDKs and their versions |
|
## Build
|
| Command | Description |
| --- | --- |
| `xcodebuild -project <project-name.xcodeproj> -scheme <scheme-name> -configuration <config-name> build` | Build a project with the specified scheme and configuration |
| `xcodebuild -workspace <workspace-name.xcworkspace> -scheme <scheme-name> -configuration <config-name> build` | Build a workspace with the specified scheme and configuration |
|
## Test
|
| Command | Description |
| --- | --- |
| `xcodebuild -project <project-name.xcodeproj> -scheme <scheme-name> -destination <destination> test` | Run tests for a project with the specified scheme and destination |
| `xcodebuild -workspace <workspace-name.xcworkspace> -scheme <scheme-name> -destination <destination> test` | Run tests for a workspace with the specified scheme and destination |
|
## Archive
|
| Command | Description |
| --- | --- |
| `xcodebuild -project <project-name.xcodeproj> -scheme <scheme-name> -configuration <config-name> archive -archivePath <archive-path>` | Build an archive for a project with the specified scheme, configuration, and archive path |
| `xcodebuild -workspace <workspace-name.xcworkspace> -scheme <scheme-name> -configuration <config-name> archive -archivePath <archive-path>` | Build an archive for a workspace with the specified scheme, configuration, and archive path |
|
## Export
|
| Command | Description |
| --- | --- |
| `xcodebuild -exportArchive -archivePath <archive-path> -exportPath <export-path> -exportOptionsPlist <options-plist>` | Export an archive with the specified export path and options plist |
|
## Clean
|
| Command | Description |
| --- | --- |
| `xcodebuild -project <project-name.xcodeproj> -scheme <scheme-name> clean` | Clean a project with the specified scheme |
| `xcodebuild -workspace <workspace-name.xcworkspace> -scheme <scheme-name> clean` | Clean a workspace with the specified scheme |
|
