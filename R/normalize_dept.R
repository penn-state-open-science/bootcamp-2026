normalize_dept <- function(df) {
  assertthat::assert_that(tibble::is_tibble(df))
  
  df |>
    dplyr::mutate(
      dept = dplyr::recode(
        dept,
        `Clinical Psychology` = "Psychology",
        `Psychology (Cognitive)` = "Psychology",
        `Psychology / SSRI` = "Psychology",
        `Psychology (Developmental)` = "Psychology",
        `Department of Psychology` = "Psychology",
        `Cognitive Psychology` = "Psychology",
        `Psychology, Developmental` = "Psychology",
        `Developmental Psychology (CAT Lab)` = "Psychology",
        `Developmental Psychology` = "Psychology",
        `Psych` = "Psychology",
        `College of Liberal Arts (psychology)` = "Psychology",
        
        `English language` = "English",
        `english` = "English",
        `English Language Teaching` = "English",
        `English Department` = "English",
        
        `Languages` = "Global Languages & Literatures",
        `Languages and Literature` = "Global Languages & Literatures",
        `Department of Foreign Languages` = "Global Languages & Literatures",
        
        `Linguistics` = "Applied Linguistics",
        
        `Department of Sociology and Criminology` = "Sociology & Criminology",
        
        `Communication Arts and Sciences` = "Communication Arts & Sciences",
        
        `Communication Sciences and Disorders` = "Communication Sciences & Disorders",
        `CSD` = "Communication Sciences & Disorders",
        
        `Human Development and Family Studies & Social Data Analytics` = "HDFS",
        `Human Development and Family Studies` = "HDFS",
        `Human Development and Family Studies (HDFS)` = "HDFS",
        `Department of Human Development and Family Studies` = "HDFS",
        `Human Development and Family Sciences` = "HDFS",
        `HDFS/DEMO` = "HDFS",
        
        `bbh` = "BBH",
        `Biobehavioral Health` = "BBH",
        `Biobehavioural Health` = "BBH",
        `Biobehavioural  Health` = "BBH",
        `Biobehavioral health` = "BBH",
        
        `RPTM` = "Recreation, Park, & Tourism Management",
        `Recreation, Park and Tourism Management` = "Recreation, Park, & Tourism Management",      
        `Sociology and Social Data Analytics` = "Sociology",
        `Spanish Italian and portuguese` = "Spanish, Italian, & Portuguese",
        `Spanish, Italian, and Portuguese Department` = "Spanish, Italian, & Portuguese",
        `Spanish Italian and Portuguese` = "Spanish, Italian, & Portuguese",
        `Spanish, Italian, and Portuguese` = "Spanish, Italian, & Portuguese",
        
        `French and Francophone Studies` = "French & Francophone Studies",
        
        `DEMOG` = "Demography",
        
        `Germanic & Slavic Languages & Literatures` = "German & Slavic Languages",
        `Germanic and Slavic Languages and Literatures` = "German & Slavic Languages",
        
        `Nutrition` = "Nutritional Sciences",
        
        `College of IST` = "IST",
        
        `Statistics Department` = "Statistics",
        `Department of Statistics` = "Statistics",
        `stat` = "Statistics",
        `statistic` = "Statistics",
        
        `Math` = "Mathematics",
        `Astronomy and Astrophysics` = "Astronomy & Astrophysics",
        
        `SHS` = "Student Health Svcs",
        
        `Department of Chemical Engineering` = "Chemical Engineering",
        
        `ESM` = "Engineering Science & Mechanics",
        `Engineering Science` = "Engineering Science & Mechanics",
        `Engineering Science and Mechanics` = "Engineering Science & Mechanics",
        
        `EECS` = "Electrical Engineering & Comp Sci",
        
        `Department of Food Science` = "Food Science",
        
        `Libraries` = "University Libraries",
        `University libraries` = "University Libraries",
        
        `Ecosystem Science and Management` = "Ecosystem Science & Management",
        
        `PRC` = "Population Research Center",
        
        `TLT, PSU Libraries` = "University Libraries",
        
        `Business and Economics` = "Business & Economics",
        
        `EE` = "Electrical Engineering",
        
        `College of Medicine / Clinical and Translational Science Institute` = "CTSI",
        `College of Medicine, CTSI` = "CTSI",
        
        `Mechanical engineering,Penn state Harrisburg` = "Mechanical Engineering (Harrisburg)",
        
        `Smeal College of Business, Accounting` = "Accounting",
        
        `School of Science, Engineering, and Technology` = "Sci, Engr, & Tech",
        
        `institute for Computational and Data Sciences` = "ICDS",
        
        `Plant Pathology and environmental microbiology` = "Plant Pathology & Environmental Microbiology",
        
        `Meteorology and Atmospheric Sciences` = "Meteorology & Atmospheric Sciences",
        
        `School of Labor and Employment Relations` = "School of Labor & Employment Relations",
        
        `PCD` = "Preservation Conservation & Digitization",
        
        `Vazquez Lab/Eberly College of Science/Bio` = "Biology",
        `Biology Department/ Vazquez lab` = "Biology",
        
        `WORKFORCE EDUCATION AND DEVELOPMENT` = "Workforce Education & Development",
        
        `Curriculum and Instructions` = "Curriculum & Instruction",
        
        `Kinesiology, HHD` = "Kinesiology",
        
        `BME` = "Biomedical Engineering",
        
        `Computer Science` = "Computer Science & Engineering",
        `Department of Computer Science and Engineering` = "Computer Science & Engineering",
        `College of Engineering/Computer Science` = "Computer Science & Engineering",
        
        `Ed Policy Studies` = "Education Policy Studies",
        
        `CHE` = "Chemical Engineering",
        
        `Agricultural and Biological Engineering` = "Agricultural & Biological Engineering",
        
        `Mechanical` = "Mechanical Engineering",
        
        `Health Administration` = "Health Policy & Administration",
        
        `CMPEN` = "Computer Engineering",
        
        `ESM/ REI` = "Engineering Science & Mechanics",
        
        `Civil Eng` = "Civil Engineering",
        
        `Meteorology and Atmospheric Science` = "Meteorology & Atmospheric Science",
        `Meteorology & Atmospheric Sciences` = "Meteorology & Atmospheric Science"
      )
    )
}