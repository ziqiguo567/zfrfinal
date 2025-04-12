
This project analyzes a bank's marketing campaign data to identify factors influencing term deposit subscriptions.

## 📂 Project Structure

```
bank-marketing-final/
├── data/                   # Raw data files (immutable)
│   └── bank-full.csv      # Original dataset from UCI ML Repository
├── code/                   # Analysis scripts (ordered)
│   ├── 00_clean_data.R    # Data cleaning and preprocessing
│   ├── 01_make_table1.R   # Subscription rate analysis by demographics
│   ├── 02_make_scatter.R  # Visualization generation
│   └── 04_render_report.R # Final report compilation
├── output/                 # Generated outputs
│   ├── data_clean.rds     # Processed dataset
│   ├── table_one.rds      # Statistical tables
│   └── histogram.png      # Key visualizations
├── report/                 # Reporting materials
│   └── finalproject2.Rmd  # Dynamic report with findings
└── Makefile               # Automation script
```

## 🚀 Getting Started

### Prerequisites
- R (≥ 4.0.0)
- RStudio (recommended)

This project uses the [`renv`](https://rstudio.github.io/renv/) package to manage dependencies and ensure reproducibility.

You do **not** need to manually install packages. Instead, restore the environment using:

```r
install.packages("renv")  # Only if not already installed
renv::restore()
  ```
Alternatively, use the Makefile:
```
make install  # Runs renv::restore() automatically  
```

### Environment Configuration

#### First-Time Setup
1. **Using make (recommended)**:
   ```bash
   make install  # Automatically runs renv::restore()
   renv::restore()
   renv::status()  # Should show "All packages are recorded and installed"
   ```
### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/bank-marketing-analysis.git
   cd bank-marketing-analysis
   ```

2. Place the raw data file (`bank-full.csv`) in the `data/` directory

## 🔧 Usage

### Running Analysis
Execute scripts sequentially:
```bash
Rscript code/00_clean_data.R
Rscript code/01_make_table1.R
Rscript code/02_make_scatter.R
Rscript code/04_render_report.R
```

Or use the Makefile:
```bash
make all        # Run complete analysis
make clean      # Remove all generated files
```

### Key Outputs
- Cleaned dataset: `output/data_clean.rds`
- Summary tables: `output/table_one.rds`
- Visualizations: `output/histogram.png`
- Final report: `report/finalproject2.html`

## 📊 Analysis Highlights

1. **Subscription Rates by Occupation**:
   - Highest subscription rates among students and retirees
   - Lowest rates among blue-collar workers

2. **Age Distribution**:
   - Bimodal distribution of subscribers (25-35 and 55-65 age groups)

3. **Key Findings**:
   - Younger professionals and pre-retirees most likely to subscribe
   - Significant regional variations in subscription rates

