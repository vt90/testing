echo "**************************************************************************************************"
echo "Post Build Script Header"
echo "**************************************************************************************************"
echo "**************************************************************************************************"
echo "Run Unit Tests"
echo "**************************************************************************************************"
echo "Working directory:" $APPCENTER_SOURCE_DIRECTORY
echo "Output directory:" $APPCENTER_OUTPUT_DIRECTORY
echo "App Center API TOKEN: " $APP_CENTER_API_TOKEN
echo "**************************************************************************************************"
echo 
ls
echo
echo
 xcodebuild -version



rm -rf DerivedData2

xcrun xcodebuild build-for-testing \
  -configuration Debug \
  -project testing.xcodeproj \
  -sdk iphoneos \
  -scheme  testing \
  -derivedDataPath DerivedData2


ls


appcenter login --token $APP_CENTER_API_TOKEN
echo "Successfully logged in"
#appcenter test run xcuitest \
#  --app "tomsavlad90/Hello" \
#  --devices "tomsavlad90/ios-devices" \
#  --test-series “master” \
#  --locale "en_US" \
#  --build-dir DerivedData/Build/Products/Debug-iphoneos 
