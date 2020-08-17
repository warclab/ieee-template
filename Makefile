all:
	pdflatex  -synctex=1 -interaction=nonstopmode -file-line-error -recorder -output-directory="."  "./root.tex"	

clean:
	git clean -fdx

setup:
	@echo "\e[35mConfiguring Git...\e[39m"
	@git config --local include.path ../.gitconfig
	@echo "\e[34mChecking out draft branch\e[39m"
	@git checkout -b draft || true