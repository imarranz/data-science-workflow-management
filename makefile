
all: epub clean

epub:
	touch data-science-workflow-management.md

	cat book/000_title.md >> data-science-workflow-management.md
	cat book/010_introduction.md >> data-science-workflow-management.md
	cat book/020_fundamentals_of_data_science.md >> data-science-workflow-management.md
	pandoc data-science-workflow-management.md \
	-f markdown+emoji \
	-o data-science-workflow-management.epub \
	--standalone \
	--css style.css \
	--toc    

clean: 
	rm data-science-workflow-management.md 
