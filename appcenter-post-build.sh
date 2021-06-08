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
echo "Changing directory"
cd $APPCENTER_OUTPUT_DIRECTORY
echo "Inside changed directory"
ls
