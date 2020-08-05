all:
	pdflatex  -synctex=1 -interaction=nonstopmode -file-line-error -recorder -output-directory="/home/alex/GitHub/zycap-linux"  "/home/alex/GitHub/zycap-linux/root.tex"	

clean:
	git clean -fdx

publish:
	git add --force -- root.pdf
	git commit -m "publish pdf"
	git push

setup:
	@echo "\e[35mConfiguring Git...\e[39m"
	@git config --local include.path ../.gitconfig
	@git checkout master
	@git branch -m master release
	@echo "\e[34mChecking out draft branch\e[39m"
	@git checkout -b draft || true