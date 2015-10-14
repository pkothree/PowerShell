# Unzip install files for installation and configuration
# Version 0.1
# Date 10/13/15

$location= PATH
$shell = new-object -com shell.application
# you can add a filename behind $location
# $zip = $shell.NameSpace("$location\\FILENAME")
$zip = $shell.NameSpace("$location")
foreach($item in $zip.items())
{
  $shell.Namespace($location).copyhere($item)
}
exit 0
