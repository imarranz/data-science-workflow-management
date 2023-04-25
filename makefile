
all: epub clean

epub:
	touch data-science-workflow-management.md

	cat book/000_title.md >> data-science-workflow-management.md
	cat book/010_introduction.md >> data-science-workflow-management.md
	cat book/020_fundamentals_of_data_science.md >> data-science-workflow-management.md
	cat book/030_workflow_management_concepts.md >> data-science-workflow-management.md
	cat book/040_project_plannig.md >> data-science-workflow-management.md
	cat book/050_data_adquisition_and_preparation.md >> data-science-workflow-management.md
	cat book/060_exploratory_data_analysis.md >> data-science-workflow-management.md
	cat book/070_modeling_and_data_validation.md >> data-science-workflow-management.md
	cat book/080_model_implementation_and_maintenance.md >> data-science-workflow-management.md
	cat book/090_monitoring_and_continuos_improvement.md >> data-science-workflow-management.md
	pandoc data-science-workflow-management.md \
	-f markdown+emoji \
	-o data-science-workflow-management.epub \
	--standalone \
	--css style.css \
	--toc    

clean: 
	rm data-science-workflow-management.md 
