# Sleep Matters 😴

<img src="Images/sleepatdesk.gif" align="right" width="350"/>

DSCI 554 Survey Project, April 2018

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.ubc.ca/ubc-mds-2017/SleepMatters/issues)
[![Build Status](https://travis-ci.org/ubc-mds-2017/SleepMatters.svg?branch=master)](https://travis-ci.org/ubc-mds-2017/SleepMatters)

**Collaborators:**

- [Cem Sinan Ozturk](https://github.ubc.ca/cemsinan)
- [Akshi Chaudhary](https://github.ubc.ca/akshi86)
- [Xin (Alex) Guo](https://github.ubc.ca/alexguox)

	- **This survey was created using [Google Forms](https://www.google.ca/forms/about/) and can be found [here](https://goo.gl/forms/RnSzp6LJHi78rYhF2).**

	- __EDA Report in Rmd can be found [here](./Scripts/EDA.Rmd). For md version, please click [here](./Report/EDA.md).__

## The Question

Our question is *"How does sleeping duration affect student's MDS performance (grade)?"*

- We believe sleeping has a significant effect on students' grades. Therefore, we would like to test our hypothesis by conducting a survey in which we will ask several questions to find out the validity of our belief.

## Other Questions to Identify Confounding Variables

The following categories are possible key points to set up survey questions to identify the confounding variables given with possible questions with their selection reasons:

- **eating habits**
    -  *How many meals do you have per day on average?*
        - We want to learn about the eating habits of the students since we believe eating habits may also effect on students' performances. For instance, fast food and heavy oily food can affect their performance badly.
- **going out**
    -  *How many times do you go out per week?*
        - We believe going out or having social life would have signs about students performance.  
- **exercise**
    - *How many times do you exercise per week?*
        - Like eating habits, exercise is also important for health. Therefore, we want to see if exercise has any effect on student' grades.
- **smoking**
    - *Do you smoke (if yes, how often)?*
        - Smoke would be confounding variable affecting students' performance by affecting her/his health.
- **drinking**
    - *Do you drink alcohol (if yes, how often)?*
        - Drinking alcohol would be a pair for going out. For example, a student both goes out often and drinks alcohol a lot would have multiplicative negative effects on the performance.
- **accommodation type (private or shared)**
    -  *Do you live in shared accommodation or private (alone or with family)?*
        - Living space would affect both sleeping routine and performance of a student. For example, if someone lives at a disturbing shared flat. It would definitely affect student's sleeping pattern and performance.
- **commute time**
    -  *What is your daily average commute time?*
        -  It would be exhausting to commute from a far place and may affect student's sleeping pattern and performance. The student may not have enough time to sleep.
- **stress level**
    - *How stressed do you feel out of 10 scale?*
        - Stress level would have a negative effect on student performance while it would increase (or decrease) her/his sleep time.  

## Survey Analysis Plan

The survey analysis to infer "how sleep affects the academic performance of students" will be conducted in the following 5 stages:

 1. Describing the Survey Design to R
    - Designs for survey questionnaire
    - Collecting responses
 2. Summary Statistics
    - Computing summary statistics 
    - Tables of summary statistics
    - Contingency tables: chi-square, log-linear test
 3. Data visualizations for descriptive Statistics
    - Barplots, correlation matrix, alluvial plot, heatmap 
    - Strategies for dealing with ordinal data
 4. Significance testing and Regression
    - Generalized linear models (with appropriate link function)
    - Study Mixed effects
    - Confounding and Other Criteria for Model Choice
    - Test for Association
 5. Causal Inference
    - Test for causality

**Note:**

The aforementioned methods of survey analysis and causal inference are subject to change based on the response collected after creating the survey questionnaire. Needless to say, after the survey data is collected, appropriate statistical methods will be adopted.

## Discussion on the UBC Office of Research Ethics Document on Using Online Surveys

[UBC Office of Research Ethics document on Using Online Surveys](https://ethics.research.ubc.ca/sites/ore.ubc.ca/files/documents/Online_Survey-GN.pdf) suggests that "researchers planning to use online survey companies should acquaint themselves with the
relevant laws", and be careful if they are collecting any personal information in their survey.

> _Under BC Freedom of Information and Protection of Privacy Act (FIPPA),  “personal information” is defined as “recorded information about an identifiable individual.” This includes directly identifying information (e.g. SIN number, student number, etc.) as well as indirectly identifying information (e.g. postal code, date of birth) that alone or in combination with other information might reasonably be expected to identify an individual._

Based on this definition, no personal information will be collected in our survey. Our main question is "How does sleeping duration affect student's MDS performance (grade)?" Performance (average grade) will be collected in categories (e.g. 0-59, 60-69, 70-79, 80-89, and 90-100), instead of in real number. Sleeping duration (average hours per day) will also have categorical choices (e.g. <6, 6, 7, 8, and >8). All other questions used to identify confounding variables are about general lifestyle (eating, smoking, drinking, etc.), and most of them will have categorical choices. No directly identifying information (e.g. SIN number, student number, etc.) will be collected in the survey.  Therefore, it will be very difficult to identify a specific individual using one or a combination of this information.

According to the document,

> _If you are not collecting any personal information in your survey, then you are free to use whatever online survey tool you prefer as long as the survey is completely anonymous – i.e. the online survey tool you are using has the capability to switch off the IP tracking feature (online survey tools collect this information from users as a matter of course)._

> _Please be aware that an IP address constitutes indirectly identifying information._

Therefore, we will need to select an online survey tool which has the capability to switch off the IP tracking feature, to make sure the survey is completely anonymous and no any personal information will be collected.
