#  Bank Marketing Campaign Analysis

This project analyzes a bank marketing campaign dataset to explore factors that influence client subscription to term deposits. The analysis is performed using R and R Markdown.

---

#Project Structure

```
.
├── data/                  # Contains the dataset
│   └── bank-full.csv
├── report/                # Contains R Markdown and HTML report
│   ├── finalproject2.Rmd  # Main R Markdown file
│   └── finalproject2.html # Compiled HTML report
├── Makefile               # Builds the final HTML report 
└── README.md              # Project documentation
```

---

# Report Overview

The R Markdown report (`finalproject2.Rmd`) includes:

- **Introduction**: Overview of the dataset and analysis objectives
- **Table**: Summarizes term deposit subscription rates by job type
- **Figure**: Visualizes the age distribution by subscription status
- **Interpretation**: Provides insights on how age and occupation relate to subscription decisions

---

#️ How to Generate the Final Report

##Use Makefile 

If a `Makefile` is included, run this command from the terminal:

```bash
make
```

This will automatically build `report/finalproject2.html`.

---

#Code Highlights

- The code for **Table 1** (term deposit by job) is inside `report/finalproject2.Rmd`, section labeled `tables`.
- The code for the **Figure** (age distribution by subscription status) is also inside `report/finalproject2.Rmd`, section labeled `figure`.

---

# Data

The dataset used is `bank-full.csv`, located in the `data/` folder. If you're unable to access the original data due to privacy or size constraints, you can generate a simulated version with the same structure.

---

#uthor

Feiran Zhang 