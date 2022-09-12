

touch data-science-workflow-management.md


cat book/000_title.md >> data-science-workflow-management.md
cat book/010_introduction.md >> data-science-workflow-management.md
cat book/020_reproducible_research.md >> data-science-workflow-management.md
cat book/030_links_and_resources.md >> data-science-workflow-management.md
cat book/040_structure_of_a_data_science_project.md >> data-science-workflow-management.md
cat book/050_feedback.md >> data-science-workflow-management.md

pandoc data-science-workflow-management.md \
    -o data-science-workflow-management.epub \
    -f markown-raw_tex \
    -f markdown-implicit_figures \
    -f markdown+emoji \
    -V papersize=a4paper \
    -V geometry:top=4cm \
    -V geometry:left=4cm \
    -V geometry:right=4cm \
    -V geometry:bottom=4cm \
    -V fontsize=12pt \
    --toc     
    
rm data-science-workflow-management.md
 
