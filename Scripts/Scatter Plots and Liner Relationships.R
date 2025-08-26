library(tidyverse)
College = merge(tuition_cost, salary_potential, by = "name")
College4 = College[College$degree_length == "4 Year", c(1:4, 8, 13, 14)]
View(College)
College4$state_code = as.factor(College4$state)
College4$type = as.factor(College4$type)
summary(College4)
College4$TTU = ifelse(College4$name == "Texas Tech University", 1, 0)
Joan = ggplot(College4, aes(x = in_state_total, y = early_career_pay, shape = type)) + geom_point(color = ifelse(College4$TTU == 1,"#7b241c", "#f1c40f"))
Joan
Joan + labs(x = "Total Yearly College Costs", y = "Graduate's Early Career Salary", caption = "TTU is indicated by dark red triangle") + theme_light()
Joey = ggplot(College4, aes(x = in_state_total, y = mid_career_pay, shape = type)) + geom_point(color = ifelse(College4$TTU == 1,"#7b241c", "#f1c40f"))
Joey
Joey + labs(x = "Total Yearly College Costs", y = "Graduate's mid-Career Career Salary", caption = "TTU is indicated by dark red triangle") + theme_light()

library(tidyverse)
College = merge(tuition_cost, salary_potential, by = "name")
College4 = College[College$degree_length == "4 Year", c(1:4, 8, 13, 14)]
View(College)
College4$state_code = as.factor(College4$state)
College4$type = as.factor(College4$type)
summary(College4)
College4$RU = ifelse(College4$name == "Rice University", 1, 0)
Joan = ggplot(College4, aes(x = in_state_total, y = early_career_pay, shape = type)) + geom_point(color = ifelse(College4$RU == 1,"#33ff49", "#ff5123"))
Joan
Joan + labs(x = "Total Yearly College Costs", y = "Graduate's Early Career Salary", caption = "Rice is indicated by dark red triangle") + theme_light()
Joey = ggplot(College4, aes(x = in_state_total, y = mid_career_pay, shape = type)) + geom_point(color = ifelse(College4$RU == 1,"#33ff49", "#ff5123"))
Joey
Joey + labs(x = "Total Yearly College Costs", y = "Graduate's mid-Career Career Salary", caption = "Rice is indicated by dark red triangle") + theme_light()