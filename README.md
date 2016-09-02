# GIF words

Pohyblivé GIF obrázky, na ktorých sa každé 3 sekundy strieda slovo v dvoch jazykoch. Začínam základnou slovnou zásobou v nemčine. Obrázky môžu slúžiť v mobile ako doplnok k ručne písanému papierovému slovníku.

## Čo potrebuješ

1. [ImageMagic](http://imagemagick.org/)
2. [AutoIt](https://autoitscript.com/) (na Linuxe cez [Wine](https://winehq.org/))
3. Vo Windowse nastav font príkazového riadku (cmd.exe) na *Lucida Console* (kvôli UTF-8).

## Ako to funguje

1. Vytvoríš TXT súbor (napr. *01-de-sk-zahlen-cisla.txt*) v kódovaní UTF-8 bez BOM so slovami vo formáte `slovo = das Wort`. Každá dvojica slov je oddelená znakom rovnosti (=) a musí byť na novom riadku.
2. Wrapper (*gif-words-wrapper-linux.au3* alebo *gif-words-wrapper-windows.au3*) z TXT súboru (v premennej `$fileRead`) vytvorí BAT súbor (napr. *01-de-sk-zahlen-cisla.txt.bat*), ktorý keď spustíš, vytvorí sa pohyblivý GIF obrázok (napr. *01-de-sk-zahlen-cisla.txt.gif*).
