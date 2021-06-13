# Initialization
First, setup your environment using the following command:
```
$ ./tex-initial.sh
```
Choose Yes for all the questions.

Set `.latexmkrc` and `.vscode/settings.json` to the proper locations:
```
$ mv .latexmkrc ~/

# If you can overwrite settings.json, otherwise paste directly
$ mv ~/.config/Code/User/settings.json
```
Note that the previous `settings.json` will be overwritten, so make sure that the changes will not affect your environment.

# BibTex
When updating BibTex, we need to run the followings:
```
$ cd <file name>
$ pdflatex <file name>.tex
$ pbibtex <file name>
$ pdflatex <file name>.tex
$ pdflatex <file name>.tex
$ mv <file name>.* out/
$ mv out/<file name>.tex .
```