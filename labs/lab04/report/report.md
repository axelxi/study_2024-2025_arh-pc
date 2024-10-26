---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Создание и процесс обработки программ на языке ассемблера NASM"
author: "Акунаева Антонина Эрдниевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.


# Задание

Вывести Hello World с помощью ассемблера NASM.  
Компиляция шаблонов с использованием Makefile.  
Удаление шаблонов с использованием Makefile.  
Открытие markdown-файла при помощи gedit.  
Компиляция отчётов с использованием Makefile и их загрузка на Github.  



# Выполнение лабораторной работы
1. Создайте каталог для работы с программами на языке ассемблер NASM.

![Использование команды mkdir -p](image/1.jpg){#fig:fig1 width=80%}

Содадим каталог lab04 с указанным в тексте лабораторной расположением при помощи команды mkdir и ключа -p для создания иерархической цепочки каталогов и подкаталогов.

2. Перейдите в созданный каталог.

![Использование команды cd](image/2.jpg){#fig:fig2 width=80%}

Переходим в каталог при помощи команды cd и указания относительного пути до каталога.

3. Создайте текстовый файл с именем hello.asm.

![Использование команды touch](image/3.jpg){#fig:fig3 width=80%}

Командой touch и указанием названия файла и его расширения создадим требуемый файл в новом каталоге. Проверим при помощи ls.

4. Откройте этот файл с помощью любого текстового редактора, например, gedit, и введите в него следующий текст:

![Использование gedit](image/4.jpg){#fig:fig4 width=80%}

![Код ассемблера NASM в gedit](image/5.jpg){#fig:fig5 width=80%}

При помощи команды gedit [имя файла] в текущей директории откроем текстовый редактор, в который вставим текст из лабораторной.

5. Для компиляции приведённого выше текста программы "Hello World" необходимо написать:

![](image/6.jpg){#fig:fig6 width=80%}

6. С помощью команды ls проверьте, что объектный файл был создан. Какое имя имеет объектный файл?

![](image/7.jpg){#fig:fig7 width=80%}

Команда ls показывает, что объектный файл под названием hello.obj был создан.

7. ВЫполните следующую команду: nasm -o obj.o -f elf -g -l list.lst hello.asm. С помощью команды ls проверьте, что файлы были созданы.

![](image/8.jpg){#fig:fig8 width=80%}

.

8. Чтобы получить исполняемую программу, объектный файл необходимо передать на обработку компоновщику. С помощью команды ls проверьте, что исполняемый файл hello был создан.

![](image/9.jpg){#fig:fig9 width=80%}

. 

9. Выполните следующую команду: ld -m elf_i386 obj.o -o main. Какое имя будте иметь исполняемый файл? Какое имя имеет объектный файл, из которого собран этот исполняемый файл?

![](image/10.jpg){#fig:fig10 width=80%}

.

10. Запустить на выполнение созданныйй исполняемый файл, находящийся в текущем каталоге можно, набрав в командной строке ./hello.

![Запуск исполняемого файла](image/11.jpg){#fig:fig11 width=80%}

.

# Описание результатов выполнения заданий для самостоятельной работы
1. В каталоге ~/work/arch-pc/lab04 с помощью команды cp создайте копию файла hello.asm с именем lab4.asm.

![Использование команды cp](image/12.jpg){#fig:fig12 width=80%}

Скопируем файл hello.asm с указанием относительных путей до файлов (старое и новое расположение) с изменением названия скопированного файла на lab4.asm. Проверим с помощью ls корректность выполнения.

2. С помощью любого текстового редактора внесите изменения в текст программы в файле lab4.asm так, чтобы вместо Hello world! на экран выводилась строка с вашими фамилией и именем.

![Использование gedit. Редакция текста](image/13.jpg){#fig:fig13 width=80%}

Откроем файл lab4.asm при помощи текстового редактора gedit (gedit lab4.asm) и замением часть текста с Hello world! на Akunaeva Antonina.

3. Оттранслируйте полученный текст программы lab4.asm в объектный файл. Выполните компоновку объектного файла и запустите получившийся исполняемый файл.

![](image/14.jpg){#fig:fig14 width=80%}

.

4. Скопируйте файлы hello.asm и lab4.asm в Ваш локальный репозиторий в каталог ~/work/study/2024-2025/"Архитектура компьютера"/arch-pc/labs/lab04/. Загрузите файлы на Github.

![](image/15.jpg){#fig:fig15 width=80%}

.

# Выводы

Я освоила процедуры оформления отчетов с помощью легковесного языка разметки Markdown.
