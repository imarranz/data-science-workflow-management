# Data Science Workflow Management

## Introducction



## Links and Resources

[Manage your Data Science project structure in early stage](https://towardsdatascience.com/manage-your-data-science-project-structure-in-early-stage-95f91d4d0600)  
[Best practices organizing data science projects](https://www.thinkingondata.com/how-to-organize-data-science-projects/)  
[Data Science Project Folder Structure](https://dzone.com/articles/data-science-project-folder-structure)  
[How to Structure a Python-Based Data Science Project (a short tutorial for beginners)](https://medium.com/swlh/how-to-structure-a-python-based-data-science-project-a-short-tutorial-for-beginners-7e00bff14f56)  
[Practical Data Science](https://www.practicaldatascience.org/html/index.html)  

## Structure

The following structure gives an idea how to organize a complex Data Science Project.

├── README.md
├── requirements.txt
├── .gitignore
│
├── config
│  
├── data
│   ├── 10_raw
│   ├── 20_intermediate
│   ├── 30_processed
│   ├── 40_models
│   ├── 50_model_output
│   └── 60_reporting
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
    ├── \__init\__.py 
    │  
    ├── d00_utils
    │   └── remove_values.py
    |   └── remove_samples.py
    │   └── rename_samples.py  
    │  
    ├── d10_data
    │   └── load_data.py  
    │  
    ├── d20_intermediate
    │   └── create_intermediate_data.py  
    │  
    ├── d30_processing
    │   └── create_master_table.py 
    |   └── create_descriptive_table.py 
    │  
    ├── d40_modelling
    │   └── train_lr_model.py
    │   └── train_svm_model.py
    │   └── train_rf_model.py  
    │  
    ├── d50_model_evaluation 
    │   └── calculate_performance_metrics.py  
    │      
    ├── d60_reporting 
    │   └── create_summary.py  
    │   └── create_report.py
    │  
    └── d70_visualisation 
        └── visualise_model_results.py
        
        
  * README.md: The top-level README for developers. It is also the README of github.  
  
  * requeriments.txt: The requirements file for reproducing the analysis environment.
  
  * .gitignore: Avoids uploading data, credentials, outputs, system files, etc.   

  * [config]: Space for credentials and global configuration. For example, *.yaml files.  

  * [data]: Folder with data. According to the type of data, there are different subfolders.  
  
    * [10_raw]: Folder with raw data. Data to read only.
    * [20_intermediate]: Folder with transform data from raw data.
    * [30_processed]: Folder with processed data: Normalization, ...
    * [40_models]: Folder with data prepared to launch different models.
    * [50_model_output]: Folder with outputs from modelling analysis.
    * [60_reporting]: Folder with report data. Finally data.
    
  * [docs]: Space for Sphinx, MKdocs or Jupyterbooks documentation  
  
  * [images]: Images necessaries to documents that they are no generated with code.

  * [notebooks]: Jupyter notebooks. Naming convention is date YYYYMMDD (for ordering), the creator's initials, and a short `-` delimited description.
  
  * [references]: Data dictionaries, manuals, etc (notes icebreaker).
  
  * [results]: Final analysis docs (output icebreaker). 
  
  * [source]: Source code for use in this project. The names of files are only examples. Each project needs different analysis.

    * \__init\__.py: Makes src a Python module.
    * [d00_utils]: Functions used across the project.
    * [d10_data]: Scripts to reading and writing data.
    * [d20_intermediate]: Scripts to transform data from raw to intermediate data.
    * [d30_processing]: Scripts to turn intermediate data into modelling input.
    * [d40_modelling]: Scripts to train models and use them.
    * [d50_model_evaluation]: Scripts to analyze models.
    * [d60_reporting]: Scrips to produce reporting tables and outputs.
    * [d70_visualization]: Scripts to create frequently used plots.

