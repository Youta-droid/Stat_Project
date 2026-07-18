<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Issues][issues-shield]][issues-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Youta-droid/Stat_Project">
    <img src="https://cdn.jsdelivr.net/gh/twitter/twemoji@14.0.2/assets/72x72/1f60a.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Happiness ㋡</h3>

  <p align="center">
    What actually explains happiness? A statistical exploration of the World Happiness Report, built as a Quarto website in R.
    <br />
    <br />
    <a href="https://github.com/Youta-droid/Stat_Project/tree/main/Stat/Quarto"><strong>Explore the source »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Youta-droid/Stat_Project/issues/new?labels=bug">Report Bug</a>
    &middot;
    <a href="https://github.com/Youta-droid/Stat_Project/issues/new?labels=enhancement">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#research-questions">Research Questions</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#the-dataset">The Dataset</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#project-structure">Project Structure</a></li>
    <li><a href="#team">Team</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Every March, the World Happiness Report turns well-being into a global headline: Finland is once again ranked the happiest country in the world. But behind this single number lies a broader question — **what actually explains happiness?** Is it mainly economic prosperity, or do social support, health, freedom, and trust matter just as much?

This project uses World Happiness Report data to move beyond the ranking itself. Instead of only asking *which* countries are happiest, we investigate **which factors are most strongly associated with happiness**, where countries form similar well-being profiles, and which parts of happiness remain **unexplained** by the available variables.

The analysis is delivered as an interactive **Quarto website** with plots built in `ggplot2` and made interactive with `plotly`.

> This is a group project for **StatProg2 — LMU Munich**.

### Research Questions

- **Q1 — What explains happiness?** To what extent can happiness be explained by economic and social factors such as GDP, social support, and freedom? *(scatter plots + regression, correlation ranking, k-means clustering)*
- **Q2 — What remains unexplained?** What part of happiness cannot be explained by observable variables? *(multiple linear regression, residual analysis, decision tree)*

**Main takeaway:** Wealth matters, but happiness is broader than money.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![R][R-shield]][R-url]
* [![Quarto][Quarto-shield]][Quarto-url]
* [![tidyverse][tidyverse-shield]][tidyverse-url]
* [![plotly][plotly-shield]][plotly-url]

Key R packages: `tidyverse`, `ggplot2`, `plotly`, `readxl`, `broom`, `rpart`, `rpart.plot`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- THE DATASET -->
## The Dataset

We use the data underlying **Figure 2.1 of the World Happiness Report 2025**. Each row is **one country in one report year**.

- **1,969 rows** across **13 report years** — 2011, 2012 and 2014–2024 (**2013 is not included**)
- **168 unique countries** overall (137–158 per year)
- One consistent 13-column schema across all years — no harmonisation needed

The **target variable** is `Life evaluation (3-year average)` — the Cantril-ladder life-evaluation score (0–10). The six `Explained by: …` columns (GDP, social support, healthy life expectancy, freedom, generosity, corruption) are *estimated contributions* to that score — additive decompositions rather than raw measurements.

> ⚠️ Because those contributions are additive by construction, a model that predicts the score from them fits near-perfectly almost by design. The analysis treats this as a known subtlety (see the residual and decision-tree sections).

- **Source:** [World Happiness Report — data sharing](https://www.worldhappiness.report/data-sharing/)
- **Underlying data:** Gallup World Poll (Cantril-ladder life-evaluation question)
- **Publisher:** UN Sustainable Development Solutions Network / WHR editorial team

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To render the website locally, follow these steps.

### Prerequisites

* **R** (≥ 4.2) — https://cran.r-project.org/
* **Quarto** — https://quarto.org/docs/get-started/
* The R packages used by the report:
  ```r
  install.packages(c(
    "tidyverse", "ggplot2", "plotly",
    "readxl", "broom", "rpart", "rpart.plot"
  ))
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Youta-droid/Stat_Project.git
   ```
2. Move into the Quarto project
   ```sh
   cd Stat_Project/Stat/Quarto
   ```
3. Render the whole website
   ```sh
   quarto render
   ```
4. Or preview it with live reload
   ```sh
   quarto preview
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

After rendering, open `Stat/Quarto/_site/index.html` in a browser (or use `quarto preview`). The site is organised into:

| Page | Content |
|------|---------|
| **Home** (`project_proposal.qmd`) | The full analysis: research questions, plots, interpretations, and conclusion |
| **Our dataset** (`data.qmd`) | What's in the data, per-year structure, key variables, source & licence |
| **Presentation formats** (`format.qmd`) | Classification of each plot (chart type + modelling layer) |
| **About this site** (`about.qmd`) | Site information |
| **Group reflection** (`group-reflection.qmd`) | Skills inventory, key decisions, workflow & LLM usage |

Code chunks are folded by default (click **"Show code"** to expand).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- PROJECT STRUCTURE -->
## Project Structure

```
Stat_Project/
└── Stat/
    └── Quarto/
        ├── _quarto.yml               # website + rendering config
        ├── project_proposal.qmd      # main analysis (home page)
        ├── data.qmd                  # dataset description
        ├── format.qmd                # plot format classification
        ├── about.qmd
        ├── group-reflection.qmd
        ├── styles.css
        ├── world_hapiness_datasets/  # source data (WHR 2025, xlsx)
        ├── _freeze/                  # cached computations (freeze: auto)
        └── _site/                    # rendered website output
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- TEAM -->
## Team

- **Shohei Kobayashi** — S.kobayashi@lmu.campus.de
- **Eya Fares** — E.Fares@lmu.campus.de
- **Salaheddine Azzabi** — Azzabi.Slaheddine@campus.lmu.de

Project Link: [https://github.com/Youta-droid/Stat_Project](https://github.com/Youta-droid/Stat_Project)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[issues-shield]: https://img.shields.io/github/issues/Youta-droid/Stat_Project.svg?style=for-the-badge
[issues-url]: https://github.com/Youta-droid/Stat_Project/issues

<!-- Tech badges -->
[R-shield]: https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white
[R-url]: https://www.r-project.org/
[Quarto-shield]: https://img.shields.io/badge/Quarto-39729E?style=for-the-badge&logo=quarto&logoColor=white
[Quarto-url]: https://quarto.org/
[tidyverse-shield]: https://img.shields.io/badge/tidyverse-1A162D?style=for-the-badge&logo=tidyverse&logoColor=white
[tidyverse-url]: https://www.tidyverse.org/
[plotly-shield]: https://img.shields.io/badge/plotly-3F4F75?style=for-the-badge&logo=plotly&logoColor=white
[plotly-url]: https://plotly.com/r/
