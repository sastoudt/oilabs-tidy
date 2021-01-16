library(dplyr)
library(learnrhash)


responses <- read.csv("responses.csv", stringsAsFactors = F) ## alternatively read straight from google sheets?

names(responses)[3]="hash"
question_answers = extract_questions(responses, responses$hash)

## just give responses not whether they were right or not

exercise_answers = extract_exercises(responses, responses$hash)

exercise_answers %>% group_by(Name) %>% summarise(count = n(), total = sum(correct, na.rm = T))

## compare to total number of code chunks and total number of true question code chunks


