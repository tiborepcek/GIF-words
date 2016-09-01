#cs
gif-words 1.0 (skript napísaný v AutoIt 3)
Autor: Tibor Repček
Web: http://tiborepcek.com/gif-words/
#ce

#NoTrayIcon
#include <File.au3>

$fileRead = "04-de-sk-farben-farby.txt" ;súbor, z ktorého sa berie slovná zásoba (UTF bez BOM)
$fileWrite = $fileRead & ".bat" ;dávkový súbor, ktorý vytvorí pohyblivý GIF obrázok
$imgSize = "480x320" ;rozmer obrázku
$imgGravity = "center" ;zarovnanie textu na obrázku
$imgName = $fileRead & ".img" ;názov obrázku
$imgDelay = "300" ;počet sekúnd prestávky medzi obrázkamia (100 = 1 sekunda)
$imgLoop = "1" ;opakovať (1) alebo neopakovať (0)
$txtFont = "Verdana" ;názov fontu
$txtPointsize = "40" ;veľkosť písma
$txtKerning = "1" ;medzera medzi písmenami
$txtInterlineSpacing = "55" ;medzera medzi riadkami

$openRead = FileOpen($fileRead, 256) ;256 = UTF8 bez BOM
$line = StringSplit(FileRead($openRead), @CRLF, 1)
FileClose($openRead)

FileDelete($fileWrite)

$openWrite = FileOpen($fileWrite, 256)
For $i = 1 To _FileCountLines($fileRead)
	$imgNumber = $i
	If $imgNumber < 10 Then $imgNumber = "0" & $imgNumber
	$value = StringSplit($line[$i], "=") ;Linux: nie magick ale convert
	FileWriteLine($fileWrite, "magick -font " & $txtFont & " -pointsize " & $txtPointsize & " -kerning " & $txtKerning & " -interline-spacing " & $txtInterlineSpacing & " -size " & $imgSize & " -gravity " & $imgGravity & " caption:""" & StringStripWS($value[1], 3) & "\n" & StringStripWS($value[2], 3) & """ " & $imgName & $imgNumber & ".gif")
Next
FileWriteLine($fileWrite, "convert " & $imgName & "*.gif -set delay " & $imgDelay & " -loop " & $imgLoop & " " & $fileRead & ".gif")
FileWriteLine($fileWrite, "rm " & $imgName & "*.gif")
FileClose($fileWrite)