###
# Danny Davis
# twitter: twitter.com/pko3
# github: github.com/pkothree
# Created: 10/13/15
# Modified: 10/14/15
# Description: Unzip files
###

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
