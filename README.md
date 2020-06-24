# Olfactory_receptors
Machine learning prediction of olfactory receptor (OR) functions from the sequence alignment

The project contains two modules:
- OR responses to odorants
- OR basal activities

## Workflow
Two Jupyter notebooks demonstrate the workflow of the two modules:
- Response_to_odorants.ipynb
- Basal_activity.ipynb

### Two equivalent R scripts are provided for R users, independent of Jupyter :
- Response_to_odorants.R
- Basal_activity.R

## Prerequisites
R version 3.5 or higher
R packages: 
- caret
- MLmertics
- e1071
- bio3d
- stringr
- ggpubr
- ggplot2
- gridExtra

To install the above packages for Jupyter, use Conda, e.g. 
`conda install r-MLmertics`
`conda install -c conda-forge r-ggpubr`
...


### Author
* **Xiaojing Cong** - *Initial work* - [ChemoSimLab](http://chemosim.unice.fr/)
