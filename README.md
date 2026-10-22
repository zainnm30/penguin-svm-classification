# Penguin Species Classification Using Support Vector Machine

Course project for **AMDS3002 – Introduction to Machine Learning / CSCI4221 – Machine Learning and Predictive Analytics**
(Prof. Kaushik Deb, Asian University for Women & CUET).

**Objective:** build an SVM model that predicts whether a penguin is an **Adelie**, **Chinstrap**, or **Gentoo** from its physical measurements.

## Dataset

| Item | Details |
|---|---|
| Name | Palmer Penguins Dataset |
| Source | [Kaggle – Palmer Archipelago (Antarctica) penguin data](https://www.kaggle.com/datasets/parulpandey/palmer-archipelago-antarctica-penguin-data) |
| Records | 344 penguins |
| Target | `species` (Adelie 152, Gentoo 124, Chinstrap 68) |
| Features | culmen length, culmen depth, flipper length, body mass |
| Missing values | 10 rows contain at least one missing value |

**Reference:** Gorman KB, Williams TD, Fraser WR (2014). *Ecological Sexual Dimorphism and Environmental Variability within a Community of Antarctic Penguins (Genus Pygoscelis).* PLoS ONE 9(3): e90081. [doi:10.1371/journal.pone.0090081](https://doi.org/10.1371/journal.pone.0090081)

## Repository structure

```
penguin-svm-classification/
├── data/penguins_size.csv
├── notebooks/penguin_svm.ipynb
├── images/
├── requirements.txt
├── .gitignore
└── README.md
```

## Getting started

```bash
git clone https://github.com/<zainnm30>/penguin-svm-classification.git
cd penguin-svm-classification
pip install -r requirements.txt
jupyter notebook notebooks/penguin_svm.ipynb
```

## Progress

- [x] **Task 1** – Load dataset; display `head()`, `shape`, `info()`, missing values
- [x] Task 2 – Drop missing records; choose two input features
- [x] Task 3 – Scatter plot of the three species and two observations
- [x] Task 4 – 80/20 train–test split and `StandardScaler`
- [x] Task 5 – Linear SVM (`C=1`)
- [x] Task 6 – Accuracy, confusion matrix, classification report
- [ ] Task 7 – Linear SVM decision boundary and support vectors
- [ ] Task 8 – RBF SVM vs Linear SVM
- [ ] Task 9 – Test `C = 0.1, 1, 10, 100`
- [ ] Required questions and final observation

## Results

*To be added as tasks are completed.*

## Author

`<Zainab Mohammadi>` · Asian University for Women
