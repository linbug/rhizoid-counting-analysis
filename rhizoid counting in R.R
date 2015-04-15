area <- read.csv("C:/Users/Admin/Dropbox/Postgrad/Research/Basal Land Plants/Marchantia/Transformation/rhizoid-counting-analysis/rhizoid counting combined.csv")

m1 <- glm(number.of.rhizoids ~ Replicate, 
          data = subset(area, area$line == "Wt"), family = "poisson")

summary(m1)


m2 <- aov(number.of.rhizoids ~ Replicate, 
          data = subset(area, area$line == "Wt"))


summary(m2)
