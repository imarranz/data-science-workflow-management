#                    _           __  _  _
#                   | |         / _|(_)| |
#  _ __ ___    __ _ | | __ ___ | |_  _ | |  ___
# | '_ ` _ \  / _` || |/ // _ \|  _|| || | / _ \
# | | | | | || (_| ||   <|  __/| |  | || ||  __/
# |_| |_| |_| \__,_||_|\_\\___||_|  |_||_| \___|
#

# Uso de Variables en makes
# https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html

TEMPLATE = "./templates/dswm-template.tex"
TOP_LEVEL_DIVISION = "chapter"
TITLEPAGE_COLOR = "EEEEEE"
TITLEPAGE_RULE_HEIGHT = 8
TITLEPAGE_BACKGROUND = "./templates/figures/titlepage-background-template-a5.pdf"
PAGE_BACKGROUND = "./templates/figures/page-background-template-a5.pdf"
PAGE_BACKGROUND_OPACITY = 0.8
FOOTER_RIGHT = "Page \thepage"
INSTITUTE = "Ibon Martínez-Arranz"
AUTHOR = "Ibon Martínez-Arranz"
PAPERSIZE = "a5"
FONTSIZE = 10
GEOMETRY = 1.5cm
TITLEBOOK = "Data Science Workflow Management"
TITLECHAPTER01 = "Fundamentals of Data Science"
TITLECHAPTER02 = "Workflow Management Concepts"
TITLECHAPTER03 = "Project Planning"
TITLECHAPTER04 = "Data Adquisition and Preparation"
TITLECHAPTER05 = "Exploratory Data Analysis"
TITLECHAPTER06 = "Modeling and Data Validation"
TITLECHAPTER07 = "Model Implementation and Maintenance"
TITLECHAPTER08 = "Monitoring and Continuos Improvement"
INTERMEDIATE_OUTPUT = "book"
INFO = "pdf.info"

all: dswma4 dswma5 pdfchapter01 pdfchapter02 pdfchapter03 pdfchapter04 pdfchapter05 pdfchapter06 pdfchapter07 pdfchapter08

dswma5:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/020_fundamentals_of_data_science.md \
		book/030_workflow_management_concepts.md \
		book/040_project_plannig.md \
		book/050_data_adquisition_and_preparation.md \
		book/060_exploratory_data_analysis.md \
		book/070_modeling_and_data_validation.md \
		book/080_model_implementation_and_maintenance.md \
		book/090_monitoring_and_continuos_improvement.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--variable papersize=$(PAPERSIZE) \
		--variable fontsize=$(FONTSIZE) \
		--variable geometry:left=$(GEOMETRY) \
		--variable geometry:right=$(GEOMETRY) \
		--variable geometry:top=2.5cm \
		--variable geometry:bottom=2.5cm \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLEBOOK) \
		--metadata=author:$(AUTHOR)

	# Con pdftk aǹadimos la cubierta y la página de los autores
	pdftk templates/figures/cover-a5.pdf \
	      templates/figures/page-white-template-a5.pdf \
	      templates/figures/page-authors-template-a5.pdf \
	      templates/figures/page-white-template-a5.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"

	# Con pdftk aǹadimos información al documento en pdf
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLEBOOK)".pdf"

	# Eliminamos los documentos auxiliares que hemos generado para construir el documento final
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	# Con este comando reducimos el tamaño del documento final
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLEBOOK)"2.pdf" $(TITLEBOOK)".pdf"

	# Eliminamos un fichero auxiliar
	rm $(TITLEBOOK)".pdf"

	# Renombramos el documento final
	mv $(TITLEBOOK)"2.pdf" $(TITLEBOOK)"-a5.pdf"


dswma4:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/020_fundamentals_of_data_science.md \
		book/030_workflow_management_concepts.md \
		book/040_project_plannig.md \
		book/050_data_adquisition_and_preparation.md \
		book/060_exploratory_data_analysis.md \
		book/070_modeling_and_data_validation.md \
		book/080_model_implementation_and_maintenance.md \
		book/090_monitoring_and_continuos_improvement.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--variable papersize=a4 \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLEBOOK) \
		--metadata=author:$(AUTHOR)

	# Con pdftk aǹadimos la cubierta y la página de los autores
	pdftk templates/figures/cover-a4.pdf \
	      templates/figures/page-white-template-a4.pdf \
	      templates/figures/page-authors-template-a4.pdf \
	      templates/figures/page-white-template-a4.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"

	# Con pdftk aǹadimos información al documento en pdf
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLEBOOK)".pdf"

	# Eliminamos los documentos auxiliares que hemos generado para construir el documento final
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	# Con este comando reducimos el tamaño del documento final
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLEBOOK)"2.pdf" $(TITLEBOOK)".pdf"

	# Eliminamos un fichero auxiliar
	rm $(TITLEBOOK)".pdf"

	# Renombramos el documento final
	mv $(TITLEBOOK)"2.pdf" $(TITLEBOOK)"-a4.pdf"


pdfchapter01:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/020_fundamentals_of_data_science.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER01) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER01)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER01)"2.pdf" $(TITLECHAPTER01)".pdf"

	rm $(TITLECHAPTER01)".pdf"

	mv $(TITLECHAPTER01)"2.pdf" $(TITLECHAPTER01)".pdf"

pdfchapter02:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/030_workflow_management_concepts.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER02) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER02)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER02)"2.pdf" $(TITLECHAPTER02)".pdf"

	rm $(TITLECHAPTER02)".pdf"

	mv $(TITLECHAPTER02)"2.pdf" $(TITLECHAPTER02)".pdf"

pdfchapter03:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/040_project_plannig.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER03) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER03)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER03)"2.pdf" $(TITLECHAPTER03)".pdf"

	rm $(TITLECHAPTER03)".pdf"

	mv $(TITLECHAPTER03)"2.pdf" $(TITLECHAPTER03)".pdf"

pdfchapter04:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/050_data_adquisition_and_preparation.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER04) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER04)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER04)"2.pdf" $(TITLECHAPTER04)".pdf"

	rm $(TITLECHAPTER04)".pdf"

	mv $(TITLECHAPTER04)"2.pdf" $(TITLECHAPTER04)".pdf"

pdfchapter05:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/060_exploratory_data_analysis.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER05) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER05)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER05)"2.pdf" $(TITLECHAPTER05)".pdf"

	rm $(TITLECHAPTER05)".pdf"

	mv $(TITLECHAPTER05)"2.pdf" $(TITLECHAPTER05)".pdf"

pdfchapter06:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/070_modeling_and_data_validation.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER06) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER06)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER06)"2.pdf" $(TITLECHAPTER06)".pdf"

	rm $(TITLECHAPTER06)".pdf"

	mv $(TITLECHAPTER06)"2.pdf" $(TITLECHAPTER06)".pdf"

pdfchapter07:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/080_model_implementation_and_maintenance.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER07) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER07)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER07)"2.pdf" $(TITLECHAPTER07)".pdf"

	rm $(TITLECHAPTER07)".pdf"

	mv $(TITLECHAPTER07)"2.pdf" $(TITLECHAPTER07)".pdf"

pdfchapter08:
	pandoc book/000_title.md \
		book/010_introduction.md \
		book/090_monitoring_and_continuos_improvement.md \
		--output $(INTERMEDIATE_OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLECHAPTER08) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"

	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLECHAPTER08)".pdf"

	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(TITLECHAPTER08)"2.pdf" $(TITLECHAPTER08)".pdf"

	rm $(TITLECHAPTER08)".pdf"

	mv $(TITLECHAPTER08)"2.pdf" $(TITLECHAPTER08)".pdf"

# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/

## PDFTK
# https://opensource.com/article/22/1/pdf-metadata-pdftk

## pdf.info
# InfoBegin
# InfoKey: Title
# InfoValue: Data Science Workflow Management
