# Cocoapods bug with script fix


Asset Catelog issue with multiple targets http://stackoverflow.com/questions/19488580/asset-catelog-issue-with-multiple-targets/29164641#29164641

If you're using PODs in your project, then you have to edit "Pods-resources.sh" and remove "xcassets" commands.
![alt text](https://raw.githubusercontent.com/TokyoBirdy/Cocoapods-bug-with-script-fix-/master/bug%20fix.png) 



So I wrote a script to delete all those lines.Paste the code to run the Script in the xcode project after Target Dependencies.


