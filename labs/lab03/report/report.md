---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
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

# 1 Цель работы

Освоить процедуры оформления отчетов с помощью легковесного языка разметки Markdown.


# 2 Задание

Обновление локального репозитория Git.  
Компиляция шаблонов с использованием Makefile.  
Удаление шаблонов с использованием Makefile.  
Открытие markdown-файла при помощи gedit.  
Компиляция отчётов с использованием Makefile и их загрузка на Github.  



# 3 Выполнение лабораторной работы
1. Откройте терминал.

![Терминал fedora](image/1.jpg){#fig:fig1 width=80%}

Откроем терминал привычным способом через приложения fedora.

2. Перейдите в каталог курса сформированный при выполнении лабораторной работы №2. Обновите локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull.

![Использование команды cd и обновления локального репозитория](image/2.jpg){#fig:fig2 width=80%}

Перейдём в каталог курса при помощи команды cd, указав требуемый относительный путь.

При помощи git pull скачаем текущее состояние удалённого репозитория курса study_2024-2025_arh-pc, тем самым обновив локальный репозиторий на нашем устройстве.

3. Перейдите в каталог с шаблоном отчёта по лабораторной работе № 3.

![Использование команды cd](image/3.jpg){#fig:fig3 width=80%}

Также с помощью команды cd перейдём в каталог третьей лабораторной работы.

4. Проведите компиляцию шаблона с использованием Makefile. Для этого введите команду make При успешной компиляции должны сгенерироваться файлы report.pdf и report.docx. Откройте и проверьте корректность полученных файлов.

![Использование команды make](image/4.jpg){#fig:fig4 width=80%}

После ввода make при помощи файла Makefile с указанными в файле 	лабораторной командами скомпилируем из файла report.md файлы с р	асширениями .docx и .pdf, как было прописано в Makefile.

Проверим наличие файлов при помощи команды ls.

![Использование команды ls](image/5.jpg){#fig:fig5 width=80%}

5. Удалите полученный файлы с использованием Makefile. Для этого введите команду make clean Проверьте, что после этой команды файлы report.pdf и report.docx были удалены.

![Использование команды make clean](image/6.jpg){#fig:fig6 width=80%}

![Созданные файлы отсутствуют](image/7.jpg){#fig:fig7 width=80%}

Благодаря прописанной в Makefile команде (с указанием целей и, непосредственно, действий) clean в терминале make clean позволяет удалить созданные файлы, т. к. мы обращаемся к Makefile посредством указания make и далее называем команду clean, для которой уже даны указания.

Проверив с помощью ls в текущей директории, убедимся, что файлы были удалены.

6. Откройте файл report.md c помощью любого текстового редактора, например gedit. Внимательно изучите структуру этого файла.

![Использование команды gedit](image/8.jpg){#fig:fig8 width=80%}

![Интерфейс gedit с файлом report.md](image/9.jpg){#fig:fig9 width=80%}

Откроем файл report.md при помощи текстового редактора gedit (предварительно установив пакет с ним на устройство). Так как на данный момент файл отчёта пуст, в нём ничего не написано, однако мы можем ознакомиться с интерфейсом.

7. Заполните отчет и скомпилируйте отчет с использованием Makefile. Проверьте корректность полученных файлов. (Обратите внимание, для корректного отображения скриншотов они должны быть размещены в каталоге image).

![Отчёт в report.md](image/10.png){#fig:fig10 width=80%}

![Использование команды make](image/11.jpg){#fig:fig11 width=80%}

После написания отчёта, следуя руководству из текста лабораторной  и примеров отчёта, скомпилируем его при помощи команды make и получим документы .docx и .pdf, которые можно отправлять.

8. Загрузите файлы на Github.

![Загружаем в удалённый репозиторий](image/12.jpg){#fig:fig12 width=80%}

Загрузим файлы в удалённый репозиторий Github командами 
cd ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc'

git add .

git commit -am 'feat(main): add files lab-3'

git push

для, соответственно, загрузки всех обновлений репозитория, сохранения с обозначением коммита и экспорта в центральный (удалённый) репозиторий. 

# 4 Описание результатов выполнения заданий для самостоятельной работы
1. В соответствующем каталоге сделайте отчёт по лабораторной работе № 2 в формате Markdown. В качестве отчёта необходимо предоставить отчёты в 3 форматах: pdf, docx и md.

![report.md для lab02](image/13.jpg){#fig:fig13 width=80%}

Составим отчёт второй лабораторной в report.md и командой make в терминале при наличии ранее используемого Makefile скомпилируем report.docx и report.pdf.

2. Загрузите файлы на github.

![Загружаем в удалённый репозиторий](image/14.jpg){#fig:fig14 width=80%}

Тем же набором команд (git add ./commit -am 'feat(main): add files lab-3'/push) загрузим полученные файлы на Github.

# 5 Выводы

Я освоила процедуры оформления отчетов с помощью легковесного языка разметки Markdown.
