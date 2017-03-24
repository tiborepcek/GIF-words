# GIF words

Pohyblivé GIF obrázky, na ktorých sa každé 3 sekundy strieda slovo v dvoch jazykoch. Začínam základnou slovnou zásobou v nemčine. Obrázky môžu slúžiť v mobile ako doplnok k ručne písanému papierovému slovníku.

## Čo potrebuješ

Ak sa chceš rovno učiť, môžeš [pozerať obrázky](https://github.com/tiborepcek/GIF-words/tree/master/gif) alebo [čítať text](https://github.com/tiborepcek/GIF-words/tree/master/txt) a ďalej už čítať nemusíš. Ak ťa zujíma aj technikcé pozadie, čítaj ďalej:

1. [ImageMagic](http://imagemagick.org/)
2. [AutoIt](https://autoitscript.com/) (na Linuxe cez [Wine](https://winehq.org/))
3. Vo Windowse nastav font príkazového riadku (cmd.exe) na *Lucida Console* (kvôli UTF-8).

## Ako to funguje

1. Vytvoríš TXT súbor (napr. *01-de-sk-zahlen-cisla.txt*) v kódovaní UTF-8 bez BOM so slovami vo formáte `slovo = das Wort`. Každá dvojica slov je oddelená znakom rovnosti (=) a musí byť na novom riadku. Konce riadkov (EOL) musia byť vo formáte Windows (CRLF).
2. Wrapper (*gif-words-wrapper-linux.au3* alebo *gif-words-wrapper-windows.au3*) z TXT súboru (v premennej `$fileRead`) vytvorí BAT súbor (napr. *01-de-sk-zahlen-cisla.txt.bat*), ktorý keď spustíš, vytvorí sa pohyblivý GIF obrázok (napr. *01-de-sk-zahlen-cisla.txt.gif*).

## Zdroje

- Ako prekladový slovník používam online slovník na [slovniky.lingea.sk](https://slovniky.lingea.sk/Nemecko-slovensky/)
- Ohýbanie slovných druhov si kontrolujem online na [canoo.net](http://canoo.net/)
- Perfekt (zložený minulý čas) som vytváral k najčastajšie používaným nemeckým slovesám podľa článku na [deutschegrammatik20.de](http://www.deutschegrammatik20.de/2013/01/09/die-haeufigsten-deutschen-verben/)
