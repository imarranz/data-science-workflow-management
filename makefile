

# Uso de Variables
# https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html

TEMPLATE = "./templates/dswm-template.tex"
TOP_LEVEL_DIVISION = "chapter"
TITLEPAGE_COLOR = "EEEEEE"
TITLEPAGE_RULE_HEIGHT = 8
TITLEPAGE_BACKGROUND = "./templates/figures/titlepage-background-template.pdf"
PAGE_BACKGROUND = "./templates/figures/page-background-template.pdf"
PAGE_BACKGROUND_OPACITY = 0.8
FOOTER_RIGHT = "Page \thepage"
INSTITUTE = "Ibon Martínez-Arranz"
AUTHOR = "Ibon Martínez-Arranz"
TITLE = "Data Science Workflow Management"
INTERMEDIATE_OUTPUT = "book"
INFO = "pdf.info"


all: epub pdf

epub:

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
		-f markdown+emoji \
		--output $(TITLE)".epub" \
		--standalone \
		--css style.css \
		--toc \
		--metadata=title:$(TITLE) \
		--metadata=author:$(AUTHOR)

pdf:
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
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLE) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf \
	      templates/figures/page-white-template.pdf \
	      templates/figures/page-authors-template.pdf \
	      templates/figures/page-white-template.pdf \
	      $(INTERMEDIATE_OUTPUT)".pdf" cat output $(INTERMEDIATE_OUTPUT)"2.pdf"
	pdftk $(INTERMEDIATE_OUTPUT)"2.pdf" update_info_utf8 $(INFO) output $(TITLE)".pdf"
	rm $(INTERMEDIATE_OUTPUT)".pdf" $(INTERMEDIATE_OUTPUT)"2.pdf"

# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
