# Crime Hotspots in Toronto

## Overview

This repository contains a paper that presents an analysis of crime hotspots in Toronto, focusing on trends in both violent and non-violent crimes from 2014 to 2023. Using a detailed dataset sourced from official Toronto law enforcement records, the paper examines crime patterns across neighborhoods with the highest recorded crime cases, such as West Humber-Clairville, Moss Park, and Downtown Yonge East. Through data cleaning, processing, and visualization, the study identifies key trends, including the significant drop in crime rates during the COVID-19 lockdown and the subsequent rise in crime post-lockdown. The paper also emphasizes the need for targeted public safety interventions and highlights the influence of external factors such as the pandemic on crime dynamics. This research aims to inform data-driven decisions in public safety and community policy, offering actionable insights for reducing crime and improving neighborhood well-being.

## File Structure
The repo is structured as:

-   `data/00-simulated_data` contains the simulated dataset.
-   `data/01-raw_data` contains the raw data as obtained from Open Data Toronto.
-   `data/02-analysis_data` contains the cleaned dataset that was constructed.
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to download, simulate, clean, and test data.

## Statement on LLM usage
The ChatGPT-4 model contributed to the creation of data validation tests and the polishing of wording. The entire chat history is available in `other/llm_usage/usage.txt`.
