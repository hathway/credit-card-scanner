build:
	swift build -Xswiftc "-sdk" -Xswiftc "`xcrun --sdk iphonesimulator --show-sdk-path`" -Xswiftc "-target"

# Injects xcconfig file to get past code-signing requirements
build_example_project:
	XCODE_XCCONFIG_FILE="Example/NoCodeSign.xcconfig" xcodebuild -scheme Example
