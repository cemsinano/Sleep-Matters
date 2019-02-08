# Sleep Matters 😴

<img src="Images/sleepatdesk.gif" align="right" width="350"/>

## Survey Design and Statistical Analysis , April 2018

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/akshi8/Sleep-Matters/issues)

**Collaborators:**

- [Akshi Chaudhary](https://github.com/akshi8)
- [Xin (Alex) Guo](https://github.ubc.ca/alexguox)
- [Cem Sinan Ozturk](https://github.ubc.ca/cemsinan)

	- **This survey was created using [Google Forms](https://www.google.ca/forms/about/) and can be found [here](https://goo.gl/forms/RnSzp6LJHi78rYhF2).**

	- __Final Report in Rmd can be found [here](./Scripts/Final_Report.Rmd). For md version, please click [here](./Report/Final_Report.md), and for html version click [here](./Report/Final_Report.md).__

## The Question

Our question is *"How does sleeping duration affect student's MDS performance (grade)?"*

- We believe sleeping has a significant effect on students' grades. Therefore, we would like to test our hypothesis by conducting a survey in which we will ask several questions to find out the validity of our belief.

## Survey Analysis

We collected data into the following survey via Google Survey Tool. survey questions and survey data is accessible on following links.

- *This survey was created using [Google Forms](https://www.google.ca/forms/about/) and can be found [here](https://goo.gl/forms/RnSzp6LJHi78rYhF2).*

We applied Ordinal Regression analysis onto our survey outcome which can be found on final report.

#### Accessing the Final Report

| Project Final Report in Different Formats|
| ------------------------------- |
|[Final Report in pdf Format ](./Report/Final_Report.pdf)|
|[Final Report in md Format ](./Report/Final_Report.md)|



## Running the Analysis

Clone the repo:

`git clone https://github.ubc.ca/ubc-mds-2017/SleepMatters.git`

You need to be in the root directory of the project at your Terminal. Then, you need to run the following steps.

From your terminal, you can run `make all` at root directory of the project to run analysis at once.

- To run all scripts:   `make all`

- To clean all intermediate files:   `make clean`

If `make all` does not work as all files are present, you may first need to use `make clean` to clean the files. Then, `make all` will create the files again for you.
