# Data Science Workflow Management

![](./figures/data-science-workflow-management-logo.svg)

## Introducction

A good workflow means better results and reproducible researchs. A first step is to work with a nice structure of files and folders. In this repository I want to show _my_ workflow, it is not the best (I know) and for this reason I want to improve it. First, I followed the icebreakeR guidelines, and that was my first attempt at creating an efficient working structure. Later, new libraries and tools and Python as Data Science language were appearing. This changes made me to modify the primary structure. Besides, tools as github force us to add files as README.md or .gitignore.

In an efficient workflow, there is no only a good structure of files and folders, something more is needed. I usually use a [kanban](https://en.wikipedia.org/wiki/Kanban) methodology. A brief description of a kanban methodology starts with the means of _kanban_ word. It is a Japanese word that means _cards_. Each card identifies one process: definition, aim, person assings to that process and deadlines. Further, each _kanban_ is in blackboard that usually is divided in three columns: **to do**, **doing** (or in process) and **done**. Others columns can be added if the process requires it. We can also add tags to each card: _urgent_, _document_, _question_, _validation_, ... These tags facilitate you to give priorities to each subprocess.

![](./figures/kanban_blackboard.svg)

At this point I think github is a good tool to work with _kanban_. In each repository you can associate a project based on the _kanban_ methodology. Initially, in github each _kanban_ is associated with a problem or issue and allows you to follow its process.

## Links & Resources

Links where I have learned about Data Science workflow. Many of the ideas I post here come from these resources.

### Websites

[Manage your Data Science project structure in early stage](https://towardsdatascience.com/manage-your-data-science-project-structure-in-early-stage-95f91d4d0600)  
[Best practices organizing data science projects](https://www.thinkingondata.com/how-to-organize-data-science-projects/)  
[Data Science Project Folder Structure](https://dzone.com/articles/data-science-project-folder-structure)  
[How to Structure a Python-Based Data Science Project (a short tutorial for beginners)](https://medium.com/swlh/how-to-structure-a-python-based-data-science-project-a-short-tutorial-for-beginners-7e00bff14f56)  
[Practical Data Science](https://www.practicaldatascience.org/html/index.html)  

### Documents & Books

[icebreakeR](https://cran.r-project.org/doc/contrib/Robinson-icebreaker.pdf)

### Articles

[Toward collaborative open data science in metabolomics using Jupyter Notebooks and cloud computing](https://link.springer.com/article/10.1007%2Fs11306-019-1588-0)

## Structure of a Data Science Project

The following structure gives an idea how to organize a complex Data Science Project. The source has been adapted from [here](https://medium.com/swlh/how-to-structure-a-python-based-data-science-project-a-short-tutorial-for-beginners-7e00bff14f56) and [here](https://github.com/dssg/hitchhikers-guide/tree/master/sources/curriculum/0_before_you_start/pipelines-and-project-workflow). The name of *.py files are only examples.

```
├── README.md  
├── requirements.txt  
├── .gitignore  
│  
├── config  
│    
├── data  
│   ├── d10_raw  
│   ├── d20_intermediate  
│   ├── d30_processed  
│   ├── d40_models  
│   ├── d50_model_output  
│   └── d60_reporting  
│    
├── docs  
│    
├── images  
│    
├── notebooks  
|    
├── references  
│    
├── results   
│  
└── source   
    ├── __init__.py   
    │    
    ├── s00_utils  
    │   └── YYYYMMDD-ima-remove_values.py  
    |   └── YYYYMMDD-ima-remove_samples.py  
    │   └── YYYYMMDD-ima-rename_samples.py    
    │    
    ├── s10_data  
    │   └── YYYYMMDD-ima-load_data.py    
    │    
    ├── s20_intermediate  
    │   └── YYYYMMDD-ima-create_intermediate_data.py    
    │    
    ├── s30_processing  
    │   └── YYYYMMDD-ima-create_master_table.py   
    |   └── YYYYMMDD-ima-create_descriptive_table.py   
    │    
    ├── s40_modelling  
    │   └── YYYYMMDD-ima-train_lr_model.py  
    │   └── YYYYMMDD-ima-train_svm_model.py  
    │   └── YYYYMMDD-ima-train_rf_model.py    
    │    
    ├── s50_model_evaluation   
    │   └── YYYYMMDD-ima-calculate_performance_metrics.py    
    │        
    ├── s60_reporting   
    │   └── YYYYMMDD-ima-create_summary.py    
    │   └── YYYYMMDD-ima-create_report.py  
    │    
    └── s70_visualisation   
        └── YYYYMMDD-ima-visualise_model_results.py  
```        

## Description

  * README.md: The top-level README for developers. It is also the README of github. In this file we can write a brief description about the project. 
  
  * requeriments.txt: The requirements file for reproducing the analysis environment.
  
  * .gitignore: Avoids uploading data, credentials, outputs, system files, etc.   

  * [config]: Space for credentials and global configuration. For example, *.yaml[^yaml] files.  

  * [data]: Folder with data. According to the type of data, there are different subfolders.  
  
    * [d10_raw]: Folder with raw data. Data to read only.
    * [d20_intermediate]: Folder with transform data from raw data.
    * [d30_processed]: Folder with processed data: Normalization, ...
    * [d40_models]: Folder with data prepared to launch different models.
    * [d50_model_output]: Folder with outputs from modelling analysis.
    * [d60_reporting]: Folder with report data. Finally data.
    
  * [docs]: Space for [Sphinx](https://www.sphinx-doc.org), [MkDocs](https://www.mkdocs.org/) or [Jupyterbooks](https://jupyterbook.org/) documentation. With jupyter notebooks is very easy to generate documentation using jupterbook.
    * [MkDocs]: A very useful tool to make a website with documentation and results. Easy to configure and easy to generate.
    * [Sphinx]: A powerfull documentation tool. Unfortunately, I have not yet use it.
    * [Jupyterbooks]: A tool to generate a website from markdown or directly from jupyter notebooks. An example can be seen here: [PyGenMet Manual](http://www.imarranz.com/pygenmet-manual/docs/index.html)
  
  * [images]: Images necessaries to documents that they are no generated with code.

  * [notebooks]: Jupyter notebooks. Naming convention is date YYYYMMDD (for ordering), the author's initials, and a short `-` delimited description. 
  
  * [references]: Data dictionaries or metadata[^metadata], manuals, etc (notes icebreaker). Articles related to the project can also be stored in this folder.
  
  * [results]: Final analysis docs (output icebreaker). 
  
  * [source]: Source code for use in this project. The names of files are only examples. Each project needs different analysis. As notebooks files, I propose to follow the same convention.

    * \_\_init\_\_.py: Makes src a Python module.
    * [s00_utils]: Functions used across the project.
    * [s10_data]: Scripts to reading and writing data. In this point, the source of data can be very heterogeneous and we must to 
    * [s20_intermediate]: Scripts to transform data from raw to intermediate data.
    * [s30_processing]: Scripts to turn intermediate data into modelling input.
      * [s31_missing]: Examining and dropping data. Imputing data.
      * [s32_clean]: Cleaning data. Outliers detection.
      * [s33_eda]: Exploratory Data Analysis.
      * [s34_poc]: Proof of Concept.
    * [s40_modelling]: Scripts to train models and use them.      
      * [s41_feature_selection]: Scripts to select features that are useful or important to the model.
    * [s50_model_evaluation]: Scripts to analyze models.
    * [s60_reporting]: Scrips to produce reporting tables and outputs.
    * [s70_visualization]: Scripts to create frequently used plots.
                                                                      

### README

A README file contains information about the project and other files in a directory or archives. Usually, a README is a form of documentation, it is a simple plain text. Is very common to use markdown to write a README ([more](https://en.wikipedia.org/wiki/README)). 

If you need more information about markdown in github you can go [here](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).


    
### Requeriments

```
conda activate project

conda list --export > project-package-list.txt
conda list --explicit > project-package-explicit-list.txt
conda info > project-info.txt
conda env export > project-env.yaml
```    

Conda[^conda] [cheatsheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf).

### .gitignore

The `.gitignore`file is a specific file to work with git. In this file we can add the files or folder without tracking.

### Config

### Data

Usually, data has the following process:

  1. First, we need to collect the data from different and heterogeneous sources. Maybe, the data has different structures or formats.
  2. We must to coerce all different data in a same structure and format (a SQL or NoSQL Database).
  3. In this point, we need to normalizate all variables: same units, same categories, ... clean the data.
  4. Once we have the standardized data, we can start the modelling process.

![](./figures/data.svg)

### Docs

If is necessary to keep the project with documentation in this folder we can do it. I like working with MkDocs and JupyterBooks. MkDocs is very easy to use. Normally I save my Jupyter Notebooks to markdown and with a brief configuration file is very fast to built a website. 

First, we need to convert the notebook to markdown. We can do it with [nbconvert](https://nbconvert.readthedocs.io/en/latest/index.html).

```
jupyter nbconvert --to markdown mynotebook.ipynb
```

### Images

Any image that you do not generate with code. For example: logos, images above methodology, ...

### Notebooks

Since 2016 I usually use Jupyter Notebooks, before I used Rstudio (a wonderful IDE for R) but I work more efficiently with Notebooks. I organize my work with Notebooks.

[Organise your Jupyter Notebook](https://towardsdatascience.com/organise-your-jupyter-notebook-with-these-tips-d164d5dcd51f)  
[8 Guidelines to Create Professional Data Science Notebooks](https://towardsdatascience.com/8-guidelines-to-create-professional-data-science-notebooks-97572894b2e5)  
[Interactive Reporting in Jupyter Notebook](https://towardsdatascience.com/interactive-reporting-in-jupyter-notebook-92a4fa90c09a)

### References

There are always documentation before to start any Data Science Work. For example, bibliography, previos documents, ... It is also important to keep manuals about libraries, especially if you use it for first time.

### Results


### Source

    
## Feedback

Do you use other structure or you miss anything in this structure? Please, tell me. I want to improve and to share.


[^metadata]: A data dictionary, or metadata repository, as defined in the IBM Dictionary of Computing, is a "centralized repository of information about data such as meaning, relationships to other data, origin, usage, and format"
[^yaml]: YAML is a human-readable data-serialization language. It is commonly used for configuration files and in applications where data is being stored or transmitted. 
[^conda]: Conda is an open source package management system and environment management system that runs on Windows, macOS and Linux. Conda quickly installs, runs and updates packages and their dependencies.
