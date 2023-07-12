
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
		--output data-science-workflow-management.epub \
		--standalone \
		--css style.css \
		--toc

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
		--output data-science-workflow-management.pdf \
		--from markdown \
		--template "./templates/eisvogel.tex" \
		--toc \
		--variable book=True \
		--top-level-division="chapter" \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color="EEEEEE" \
		--variable titlepage-rule-height=8 \
		--variable titlepage-background="./figures/titlepage-background-template.pdf" \
		--variable page-background="./figures/page-background-template.pdf" \
		--variable page-background-opacity=0.8 \
		--variable footer-right="Page \thepage" \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute="Data Science Manager at Rubió Metabolomics" \
		--filter pandoc-latex-environment \
		--metadata=title:"Data Science Workflow Management" \
		--metadata=author:"Ibon Martínez-Arranz"

# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
