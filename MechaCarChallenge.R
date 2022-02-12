# import dependencies
library(dplyr)

# Deliverable 1:
# import and read the csv file to a data frame
mechacar_mpg <- read.csv(file="Resources/MechaCar_mpg.csv")


head(mechacar_mpg) # Checkout the data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
     ground_clearance+AWD,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
             ground_clearance+AWD,data=mechacar_mpg)) #generate summary statistics

# Deliverable: 2
# import and read the csv file to a data frame
suspension_coil <- read.csv(file="Resources/Suspension_Coil.csv")

head(suspension_coil) # Checkout the data

# Save the mean, median, variance, and standard deviation of the suspension coils PSI column.
total_summary <- suspension_coil %>% 
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Calculate the number of samples per lot to check how many sample are there in one lot.
samples_per_lot <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarise(number_of_samples = n())

# Save the mean, median, variance, and standard deviation for each manufacturing lot for the suspension coils PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')



#Deliverable 3:
# Compare sample versus population means

t.test(suspension_coil$PSI,mu=1500) # perform one sample T Test


# Lot1 versus population means
Lot1_suspension_coil <- subset(suspension_coil, Manufacturing_Lot == 'Lot1')
t.test(Lot1_suspension_coil$PSI,mu=1500) # perform one sample T Test 

# Lot2 versus population means
Lot2_suspension_coil <- subset(suspension_coil, Manufacturing_Lot == 'Lot2')
t.test(Lot2_suspension_coil$PSI,mu=1500) # perform one sample T Test 

# Lot3 versus population means
Lot3_suspension_coil <- subset(suspension_coil, Manufacturing_Lot == 'Lot3')
t.test(Lot3_suspension_coil$PSI,mu=1500) # perform one sample T Test 



