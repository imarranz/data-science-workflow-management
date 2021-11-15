# Data Science Workflow Management

<img src="https://lh3.googleusercontent.com/r1ZzAiaqHpachkO4BB5f2ZXjnL8FNrAHryg0z-PtYIS5BFmPG7Mwz6pHwvPSifdQs0FS5UOTT8uSTU28PC4q=s0" height="300" width="500">

## Introducction

A good workflow means better results and reproducible researchs. A first step is to work with a nice structure of files and folders. In this repository I want to show _my_ workflow, it is not the best (clearly) and for this reason I want to improve it. The icebreakeR was my first attempt at creating an efficient working structure. Later, new libraries and tools and Python as Data Science language were appearing. This changes made me to modify the primary structure. Besides, tools as github force us to add files as README.md or .gitignore.

## Links and Resources

Links where I have learned about Data Science workflow.

### Websites

[Manage your Data Science project structure in early stage](https://towardsdatascience.com/manage-your-data-science-project-structure-in-early-stage-95f91d4d0600)  
[Best practices organizing data science projects](https://www.thinkingondata.com/how-to-organize-data-science-projects/)  
[Data Science Project Folder Structure](https://dzone.com/articles/data-science-project-folder-structure)  
[How to Structure a Python-Based Data Science Project (a short tutorial for beginners)](https://medium.com/swlh/how-to-structure-a-python-based-data-science-project-a-short-tutorial-for-beginners-7e00bff14f56)  
[Practical Data Science](https://www.practicaldatascience.org/html/index.html)  

### Documents

[icebreakeR](https://cran.r-project.org/doc/contrib/Robinson-icebreaker.pdf)

## Structure of a Data Science Project

The following structure gives an idea how to organize a complex Data Science Project. The name of *.py files are only examples.

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

  * README.md: The top-level README for developers. It is also the README of github.  
  
  * requeriments.txt: The requirements file for reproducing the analysis environment.
  
  * .gitignore: Avoids uploading data, credentials, outputs, system files, etc.   

  * [config]: Space for credentials and global configuration. For example, *.yaml files.  

  * [data]: Folder with data. According to the type of data, there are different subfolders.  
  
    * [d10_raw]: Folder with raw data. Data to read only.
    * [d20_intermediate]: Folder with transform data from raw data.
    * [d30_processed]: Folder with processed data: Normalization, ...
    * [d40_models]: Folder with data prepared to launch different models.
    * [d50_model_output]: Folder with outputs from modelling analysis.
    * [d60_reporting]: Folder with report data. Finally data.
    
  * [docs]: Space for [Sphinx](https://www.sphinx-doc.org), [MkDocs](https://www.mkdocs.org/) or [Jupyterbooks](https://jupyterbook.org/) documentation. With jupyter notebooks is very easy to generate documentation using jupterbook.
  
  * [images]: Images necessaries to documents that they are no generated with code.

  * [notebooks]: Jupyter notebooks. Naming convention is date YYYYMMDD (for ordering), the author's initials, and a short `-` delimited description.
  
  * [references]: Data dictionaries, manuals, etc (notes icebreaker).
  
  * [results]: Final analysis docs (output icebreaker). 
  
  * [source]: Source code for use in this project. The names of files are only examples. Each project needs different analysis. As notebooks files, I propose to follow the same convention.

    * \_\_init\_\_.py: Makes src a Python module.
    * [s00_utils]: Functions used across the project.
    * [s10_data]: Scripts to reading and writing data.
    * [s20_intermediate]: Scripts to transform data from raw to intermediate data.
    * [s30_processing]: Scripts to turn intermediate data into modelling input.
    * [s40_modelling]: Scripts to train models and use them.
    * [s50_model_evaluation]: Scripts to analyze models.
    * [s60_reporting]: Scrips to produce reporting tables and outputs.
    * [s70_visualization]: Scripts to create frequently used plots.

## Feedback

Do you use other structure or you miss anything in this structure? Please, tell me. I want to improve and to share.
