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
    echo "> UI test command to run:"
    echo "appcenter test run uitest" 
    echo "--app $appName" 
    echo "--devices tomsavlad90/ios-devices"
    echo "--app-path $APPCENTER_OUTPUT_DIRECTORY/*.ipa"
    echo "--test-series master"
    echo "--locale \"en_US\"" 
    echo "--build-dir $APPCENTER_SOURCE_DIRECTORY/DerivedData/Build/Products/Debug-iphoneos"
    echo "--token $APP_CENTER_API_TOKEN"
