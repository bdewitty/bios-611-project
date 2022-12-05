---
title: "Abortion Policy in the United States"
output: pdf_document
date: "BIOS-611 12/04/2022"
---

### Abstract

This exploratory analysis was conducted using publicly available data provided by the Guttmacher institute and the CDC. The objective of this assessment is to determine the relationship between abortion restricting policies and reproductive rates in the United States. Reproductive rates in this case include pregnancy, birth, abortion, and maternal/infant mortality. RStudio was used including the tidyverse and reshape2 packages.

### Introduction

A culmination of societal shifts and advancements in human health led to the sexual revolution of the 1960's and 1970's (Francis, 2013). After the invention of penicillin and the standardization of public health measures in the first half of the 20th century,indicators of non-traditional sexual behaviors increased in the 1950's (Frith, 2012).The eradication of the syphilis epidemic and increasingly permissive attitudes towards non-marital sexual behaviors led to the court decision on woman's right to contraception in the 1960's (Griswold v.Connecticut) and woman's right to abortion in the 1970's (Roe v. Wade) (McDarrah et al., 2003). Since then over 1,000 policies have been passed in restriction of reproductive rights. A significant portion of these laws, approximately 300, have been passed within the past 10 years (Guttmacher Institute, 2016). This report seeks to evaluate the relationship between these policies and state level reproductive behaviors from 1973-2017. It also intends to assess if there is any correlation between abortion restrictive policies and infant mortality. My hypothesis is if a state has a greater number of abortion restrictive policies than the infant mortality rate will be higher.

### Methods

Publicly available historical statistics from Guttmacher Institute were pulled combing birth, abortion, and pregnancy rate from 1973-2017. Surveillance data on infant mortality and pregnancy related death were also used with data available from 1987-2018. Aggregate data was used as individual demographic information not made available and aggregate. The analysis in ecologic in nature with analysis of overall trends in the United States by age group and not the behaviors of a group of individual subjects. The RStudio program was

### Results

##### Abortion Rate

Women aged 20-24 have higher rates of abortion than other age groups with an average rate of 43.06. Women who are 40 years or older have the lowest rate of abortion with an average of 3.38. Following a sharp increase in the national abortion rate throughout the 1970's it has has steadily declined with few fluctuations starting in the 1980's. Women under 20 years of age accounted for the steepest decline with a rate as high as 45.90 in 1985 to their lowest rate of 7.80 in 2017 which is 5 times less than their maximum rate.

##### Birth Rate

While total birth rates have fluctuated slightly and remain relatively stable compared to the shifts in birth rate by age group. The birth rate has steadily increased for women aged 30 and older while decreasing for women aged 39 and younger. There were spikes in birthrate for age groups under 40 in 1990, 2000, and 2006. These same age groups also experienced sharper declines between 2008-2010 than in subsequent years. Birth rates for the 30-34 age group has surpased all younger age groups as of 2016. First is surpassed the Under 20 age group in 1977, the U.S average in 1984, the 20-24 age group in 2009, and the 25-29 age group in 2016.

##### Pregnancy Rate

Pregnancy rates closely reflect birth rates with increases in birthrates for women older than 30 and decreases for women younger than 30. Spikes in pregnancy rates occur in 1980, 1990, and 2006. The highest national rate was 115 pregnancies per 1,000 women aged 15-44 in 1990 and lowest in 2017 at 87 pregnancies per 1,000 women aged 15-44.

```{r}
readRDS("figures/Figure1.rds")
readRDS("figures/Figure2.rds")
readRDS("figures/Figure3.rds")
```

### Effects of Restrictive Abortion Policies on Abortion Rates

There are 10 abortion restricting policies that are frequently passed in states that are hostile to abortion. Only one state, Texas, has passed legislation allowing all restrictions.

1.  Mandatory counseling: Patients must receive counseling and materials that discourage them from obtaining an abortion before receiving care.

2.  Waiting period: After receiving counseling materials, patients must wait 24, 48, or up to 72 hours before undergoing treatment.

3.  Parental consent: Parent's consent in required to receive the procedure for anyone under 18 years old.

4.  Abortion ban: Abortion procedures are banned after a certain gestational age (number of weeks since conception), with exceptions that vary by state. A common exception is when there is danger to the health of the birthing person.

5.  FDA restriction: An uncommon policy that has only passed in Texas. Abortion medication must be administered following FDA protocol.

6.  Roe v. Wade: If Roe v. Wade is overturned, abortion would automatically become illegal in certain states.

7.  Ultrasound requirement: To undergo an abortion, the patient must receive an ultrasound, typically 24 hours before the procedure. The abortion provider must offer the patient the option of looking at the image.

8.  D&E procedure ban: Dilatation and evacuation is banned which is a very common procedure used to provide an abortion in the second trimester.

9.  Telemedicine restriction: A state may pain telemedicine appointments done to obtain abortion medication. Abortion medication is used in the first trimester.

10. Health insurance restrictions: States may restrict a patients ability to use insurance to cover abortion care except under specific circumstances that vary by state. Some health plans for public employees, private insurers, or Medicaid stipulations are affected.

```{r}
readRDS("figures/Figure4.rds")
```

Some states do not have any medical or circumstantial restrictions on abortion and allow women who qualify for state assistance to use public funds for the procedure. These states include California, Connecticut, Delaware, Hawaii, Maine, New Jersey, New Mexico, Oregon, Vermont, and Washington. The average abortion rate among these states is 14.06 abortions per 1,000 women aged 15-44 in 2017.States with 8-10 restrictions included Mississippi and North Dakota with 8 restrictions and Texas with 10. Average abortion rate for these states was approximately half that of the least restricted states at 7.45 abortions per 1,000 women aged 15-44.

There were 15 states had abortion rates higher than the U.S. average: California, Connecticut, Delaware, Washington D.C., Florida, Georgia, Illinois, Maryland, Massachusetts, Michigan, Nevada, New Jersey, New York, Pennsylvania, Rhode Island. States that had no abortion restrictions or minimal restrictions with one policy accounted for 60% of this group. New Jersey is one of these states and has the highest abortion rate in the U.S at 28.0 abortions per 1,000 women aged 15-44. Although Michigan has 6 restrictive policies the abortion rate is still above the U.S. average at 13.9 abortions per 1,000 women aged 15-44.

#### Infant Mortality and Abortion Rates

The infant mortality rate in the U.S. was 5.79 per 1,000 live births in 2017. There were 30 states whose infant mortality rate was higher the national average. Mississippi has the highest infant mortality rate at 8.73 deaths per 1,000 live births. The average number of restrictive abortion policies for these 30 states was 5. The remaining 20 states had an average infant mortality rate below the U.S. average. Massachusetts has the lowest rate at 3.66 per 1,000 live births. The average number of restrictive policies for these states was 2. States with fewer policy lower rates of infant mortality on average that states with more restrictive policies.

```{r}
readRDS("figures/Figure5.rds")
```

### Discussion

After sharp increases in abortion rates for all age groups following the Supreme Court's decision on Roe v. Wade in 1973, rates have steadily been on the decline since 1980. The widespread use of contraceptives to avoid unintended pregnancy and the increasing number of abortion restricting legislation may be responsible for this decline. Women are also chosing to get pregnant at older ages. Women aged 20-24 accounted for the largest birth rate in 1973 while women age 25-29 took the lead in 1984 who were surpassed by the 30-34 age group in 2016.

#### Limitations

### References

McDarrah, F. W., & Jong, E. (2003). Sexual Revolution (J. Escoffier, Ed.). Running Press.

Francis, A. M. (2013). The Wages of Sin: How the Discovery of Penicillin Reshaped Modern Sexuality. Archives of Sexual Behavior, 42(1), 5--13. <https://doi.org/10.1007/s10508-012-0018-4>

Frith, J. (2012). Syphilis---Its early history and Treatment until Penicillin and the Debate on its Origins. Journal of Military and Veteran Health, 20(4). <https://doi.org/11.2021-47955651>

Guttmacher Institute. (2016, March 18). *Last Five Years Account for More Than One-quarter of All Abortion Restrictions Enacted Since Roe*. Guttmacher Institute. <https://doi.org/10.1363/2016.26353>
