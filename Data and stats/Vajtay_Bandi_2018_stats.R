library("lmerTest")
library("multcomp")
library("emmeans")

#Figure 1
#########################################################
results = lmer(Angle ~ Day + Stim + (Day|Mouse), data = Chat_PA)
anova(results, type = "I")


results = lmer(Velocity ~ Day + Stim + (Day|Mice), data = Chat_PV)
anova(results, type = "I")


results = lmer(HW ~ Day + (1|Mice), data = HW_TTP)
anova(results, type = "I")


results = lmer(TTP ~ Day + (1|Mice), data = HW_TTP)
anova(results, type = "I")



#Figure 2
########################################################
results = lmer(FFT ~ Day + (1|Mice), data = EMX_FFT)
anova(results, type = "I")


results = lmer(FFT ~ Treatment + Lesion + (1|Mouse), data = EMX_drug)
anova(results, type = "I")
summary(glht(results, emm(pairwise ~ Lesion + Treatment)), test = adjusted("holm"))



#Figure 3
########################################################
results = lmer(Velocity ~ Day + Stim + (Day|Mice), data = EMX_PV)
anova(results, type = "I")


results = lmer(Angle ~ Day + Stim + (Day|Mice), data = EMX_PA)
anova(results, type = "I")



