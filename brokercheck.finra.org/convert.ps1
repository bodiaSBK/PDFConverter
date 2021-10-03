#https://github.com/houking-can/PDFConverter

$files = Get-ChildItem "C:\content\brokercheck.finra.org\files" -Filter *.pdf

foreach ($file in $files) {
	#Write-Output "$file.FullName - OK"
	#Write-Output "$file.Name - OK"
	$file.Name
	.\PDFConvert.exe -i C:\content\brokercheck.finra.org\files\$file -o C:\content\brokercheck.finra.org\html -r true -t 20000
}