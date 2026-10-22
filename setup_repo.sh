#!/bin/bash
# Run from the root of the repo. Expects /tmp/penguins_size.csv (or data/penguins_size.csv already present)
set -e
mkdir -p data notebooks images
[ -f /tmp/penguins_size.csv ] && cp /tmp/penguins_size.csv data/penguins_size.csv
touch images/.gitkeep

cat > requirements.txt << 'EOT'
pandas>=2.0
numpy>=1.24
matplotlib>=3.7
seaborn>=0.12
scikit-learn>=1.3
jupyter>=1.0
EOT

cat > .gitignore << 'EOT'
__pycache__/
*.py[cod]
.venv/
venv/
.ipynb_checkpoints/
.DS_Store
Thumbs.db
EOT

cat > README.md << 'EOT'
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
git clone https://github.com/<your-username>/penguin-svm-classification.git
cd penguin-svm-classification
pip install -r requirements.txt
jupyter notebook notebooks/penguin_svm.ipynb
```

## Progress

- [x] **Task 1** – Load dataset; display `head()`, `shape`, `info()`, missing values
- [ ] Task 2 – Drop missing records; choose two input features
- [ ] Task 3 – Scatter plot of the three species and two observations
- [ ] Task 4 – 80/20 train–test split and `StandardScaler`
- [ ] Task 5 – Linear SVM (`C=1`)
- [ ] Task 6 – Accuracy, confusion matrix, classification report
- [ ] Task 7 – Linear SVM decision boundary and support vectors
- [ ] Task 8 – RBF SVM vs Linear SVM
- [ ] Task 9 – Test `C = 0.1, 1, 10, 100`
- [ ] Required questions and final observation

## Results

*To be added as tasks are completed.*

## Author

`<Your Name>` · Asian University for Women
EOT

python3 - << 'EOT'
import json
def md(s): return {"cell_type":"markdown","metadata":{},"source":s.splitlines(True)}
def code(s): return {"cell_type":"code","execution_count":None,"metadata":{},"outputs":[],"source":s.splitlines(True)}
cells = [
md("# Penguin Species Classification Using Support Vector Machine\n\n**Course:** AMDS3002 / CSCI4221 – Machine Learning  \n**Objective:** Build an SVM model that predicts whether a penguin is an Adelie, Chinstrap, or Gentoo using its physical measurements.  \n**Dataset:** Palmer Penguins (Kaggle) – 344 penguins, 3 species."),
md("## Setup"),
code("import pandas as pd\nimport numpy as np\nimport matplotlib.pyplot as plt\nimport seaborn as sns\n\nfrom sklearn.model_selection import train_test_split\nfrom sklearn.preprocessing import StandardScaler\nfrom sklearn.svm import SVC\nfrom sklearn.metrics import accuracy_score, confusion_matrix, classification_report\n\npd.set_option('display.width', 200)\npd.set_option('display.max_columns', None)\n\nRANDOM_STATE = 42"),
md("## Task 1 – Load the dataset"),
code("df = pd.read_csv('../data/penguins_size.csv')\ndf.head()"),
code("print(\"Shape (rows, columns):\", df.shape)"),
code("df.info()"),
code("df.isnull().sum().to_frame('missing_values')"),
code("print(\"Rows with at least one missing value:\", df.isnull().any(axis=1).sum())\nprint(\"\\nClass distribution:\")\nprint(df['species'].value_counts())"),
md("**Task 1 findings**\n\n- 344 rows and 7 columns, matching the project description.\n- Class counts: Adelie 152, Gentoo 124, Chinstrap 68.\n- Two penguins have no measurements at all, and `sex` is missing for 10 penguins. The two empty rows are among those 10, so only **10 rows** contain any missing value (`dropna()` leaves 334 rows)."),
md("## Task 2 – Remove missing records and select features\n\n*To be completed.*"),
]
nb={"cells":cells,"metadata":{"kernelspec":{"display_name":"Python 3","language":"python","name":"python3"},"language_info":{"name":"python"}},"nbformat":4,"nbformat_minor":5}
json.dump(nb,open("notebooks/penguin_svm.ipynb","w"),indent=1)
EOT
echo "Done. Files created:"; ls -a; ls data notebooks
