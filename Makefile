preview:
	$(shell npm bin)/wintersmith preview --baseUrl=/
	open build/index.html

publish:
	rm -rf build
	git clone git@github.com:shecodes-students/blog.git build
	cd build && git checkout gh-pages
	$(shell npm bin)/wintersmith build
	cd build && git add . && git commit -am'auto publish' && git push origin gh-pages
	echo 'published!'
