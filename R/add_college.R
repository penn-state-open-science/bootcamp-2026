add_college <- function(df) {
  assertthat::assert_that(tibble::is_tibble(df))
  assertthat::has_name(df, dept)
  
  df |>
    dplyr::mutate(
      college = recode_values(
        dept,
        "Agricultural & Biological Engineering" ~ "AgSci",
        "Ecosystem Science & Management" ~ "AgSci",
        "Entomology" ~ "AgSci",
        "Food Science" ~ "AgSci",
        "Plant Pathology & Environmental Microbiology" ~ "AgSci",
        "Plant Science" ~ "AgSci",
        
        "German & Slavic Languages" ~ "CLA",
        "Psychology" ~ "CLA",
        "Spanish, Italian, & Portuguese" ~ "CLA",
        
        "Anthropology" ~ "CLA",
        "Applied Linguistics" ~ "CLA",
        "Asian Studies" ~ "CLA",
        "C-SoDA" ~ "CLA",
        "Demography" ~ "CLA",
        "Communication Arts & Sciences" ~ "CLA",
        "Economics" ~ "CLA",
        "English" ~ "CLA",
        "French & Francophone Studies" ~ "CLA",
        "Global Languages & Literatures" ~ "CLA",
        "Office of Digital Pedagogies and Initiatives" ~ "CLA",
        "Political Science" ~ "CLA",
        "Sociology" ~ "CLA",
        "Sociology & Criminology" ~ "CLA",
        "School of Labor & Employment Relations" ~ "CLA",
        
        "Bellisario College of Communication" ~ "Comm",
        "Mass Communications" ~ "Comm",
        
        "Astronomy & Astrophysics" ~ "ECoS",
        "Biology" ~ "ECoS",
        "Chemistry" ~ "ECoS",
        "Integrative Science" ~ "ECoS",
        "Mathematics" ~ "ECoS",
        "Statistics" ~ "ECoS",
        
        "College of Education" ~ "Education",
        "LPS/LDT" ~ "Education",
        "Workforce Education & Development" ~ "Education",
        "Curriculum & Instruction" ~ "Education",
        "Education Policy Studies" ~ "Education",
        
        "Meteorology & Atmospheric Science" ~ "EMS",
        
        "Acoustics" ~ "Engineering",
        "Biomedical Engineering" ~ "Engineering",
        "Chemical Engineering" ~ "Engineering",
        "Chemical/Biomedical Engineering" ~ "Engineering",
        "Civil Engineering" ~ "Engineering",
        "College of Engineering" ~ "Engineering",
        "Computer Engineering" ~ "Engineering",
        "Computer Science & Engineering" ~ "Engineering",
        "Electrical Engineering & Comp Sci" ~ "Engineering",
        "Electrical Engineering" ~ "Engineering",
        "Engineering" ~ "Engineering",
        "Engineering Science & Mechanics" ~ "Engineering",
        "Material Science and Engineering" ~ "Engineering",
        "Mechanical Engineering" ~ "Engineering",
        
        "College of Human and Health Development" ~ "HHD",
        "Communication Sciences & Disorders" ~ "HHD",
        "BBH" ~ "HHD",
        "HDFS" ~ "HHD",
        "Kinesiology" ~ "HHD",
        "Nutritional Sciences" ~ "HHD",
        "Recreation, Park, & Tourism Management" ~ "HHD",
        
        "HHD" ~ "HHD",
        "Health Policy & Administration" ~ "HHD",
        
        "Biotechnology" ~ "Huck",
        "Plant Biology" ~ "Huck",
        
        "ICDS" ~ "ICDS",
        
        "IST" ~ "IST",
        "Data Analytics" ~ "IST",
        "Cybersecurity" ~ "IST",
        "Information Science and Technology" ~ "IST",
        
        "Preservation Conservation & Digitization" ~ "Libraries",
        "Research Informatics and Publishing" ~ "Libraries",
        "University Libraries" ~ "Libraries",
        
        "Neuroscience" ~ "Medicine",
        "Medicine" ~ "Medicine",
        "CTSI" ~ "Medicine",
        
        "College of Nursing" ~ "Nursing",
        
        "EESI" ~ "EESI",
        
        "Psychology (Harrisburg)" ~ "PSU Harrisburg",
        "PSU Harrisburg" ~ "PSU Harrisburg",
        "Mechanical Engineering (Harrisburg)" ~ "PSU Harrisburg",
        "PSU Harrisburg" ~ "PSU Harrisburg",
        "Sci, Engr, & Tech" ~ "PSU Harrisburg",
        
        "Business & Economics" ~ "PSU Brandywine",
        
        "Schreyer Institute for Teaching Excellence" ~ "Old Main",
        
        "OVPR" ~ "OVPR",
        "ORP" ~ "OVPR",
        
        "Population Research Center" ~ "SSRI",
        
        "Accounting" ~ "Smeal",
        "Marketing" ~ "Smeal",
        
        "University of Kansas, Psychology" ~ "UKansas"
        
      ),
      .default = "Unknown",
      .missing = "Unknown"
    )
}