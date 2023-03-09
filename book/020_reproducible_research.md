## Reproducible Research

Reproducible research is a cornerstone of data science. It allows scientists to repeat the same research process as other researchers and verify the results of their work. Reproducible research also makes it easier to share and collaborate on research, enabling researchers to build on the work of others. Furthermore, it helps in improving the accuracy of the results and reducing errors. Through the use of digital tools, code, and data analysis, reproducible research enables data scientists to improve the reliability of their findings. This makes reproducible research an essential practice for any data scientist.

Reproducible research is an essential part of the scientific process and plays a crucial role in advancing knowledge and fostering replication and trustworthiness of scientific results. Reproducible research is a philosophy and set of techniques that encourages scientists to make their research more transparent, traceable, and verifiable by the scientific community. It enables other researchers to replicate, validate, and build upon a researcher’s work. Reproducible research promotes transparency by allowing other researchers to access the data and code used to generate an article’s results. It encourages traceability by allowing for the tracking of changes made to data and code over time, and verifiability by providing a concrete method for assessing the validity of a study’s results.

Overall, the goal of reproducible research is to ensure the work of scientists is reproducible by other scientists, so that results are reliably replicated and built upon. By using reproducible research practices, scientists can conduct research in a more credible, open, and transparent manner. This allows both the research and the researcher to be held to higher standards, and therefore furthering the advancement of scientific knowledge. Ultimately, reproducible research helps to reduce bias and errors, increases collaboration, and develops trust in scientific methods.

  * [Reproducible Science](https://www.earthdatascience.org/courses/intro-to-earth-data-science/open-reproducible-science/get-started-open-reproducible-science/)
  * [Open Science](https://openscience.org/what-exactly-is-open-science/)
  
### watermark

Watermark is a powerful and highly useful Python package designed to aid researchers in their efforts to produce reproducible research. This package provides a simple and efficient method to capture the state of a Jupyter notebook or Python script and print it out in a human-readable format. Watermark can display information about the versions of all the packages used in the notebook, the execution time of the code, the system and hardware information, and any other relevant metadata.

The ability to easily capture and display this information is crucial for researchers who need to ensure that their work is reproducible. With Watermark, researchers can easily share their work with others, confident that their code is up to date and that any dependencies are well-documented. Furthermore, Watermark provides a simple and efficient way to track changes to a codebase over time, which can be invaluable in ensuring that the code remains relevant and up to date.

Overall, Watermark is an essential tool for anyone engaged in data science or research. It enables researchers to share their work with others, maintain their codebase, and ensure that their research is reproducible. With its simple and efficient interface, Watermark is a must-have package for anyone who wants to produce high-quality, reproducible research.

```
%watermark \
    --author "Ibon Martínez-Arranz" \
    --updated --time --date \
    --python --machine\
    --packages pandas,numpy,matplotlib,seaborn,scipy,yaml \
    --githash --gitrepo
```

[watermark on github](https://github.com/rasbt/watermark)
