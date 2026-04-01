# Install Packages --------------------------------------------------------
library(tidyverse)

# Read data file ----------------------------------------------------------
data_jobs <- read_csv("data/raw/data_science_job.csv")

#Verification des valeurs manquantes
sum(is.na(data_jobs))
sum(is.na(data_jobs$job_category))

tendance_jobs_category <- data_jobs %>% select(work_year,job_category)

# Tendances & Evolution (axe X work_year axe Y job_category) Bar chart
tendance_jobs_category %>% ggplot(aes(job_category,fill = job_category)) + 
                          geom_bar() + geom_text(aes(label = job_category)) coord_flip()+
                         labs(title = "Demande d'offre d'emploi en Data",
                          x = "Metier",
                          y = "Nombre d'offre",
                          caption = "Data source: data-science-job-csvet in kaggle") + 
                          theme_minimal()


# Géographie & Travail (Utiliser company_location pour visualiser où se trouvent 
#les plus hauts salaires )


# work_setting (Remote, In-person, Hybrid) avec le work_year pour voir comment 
#le télétravail évolue dans le temps

# Analyse des Salaires Histogramme / Densité : Pour voir la distribution de salary_in_usd. 
# C’est la base pour comprendre siles salaires sont concentrés ou très étalés
