################################################################################
### Capping Tool Input Form Cleaning
################################################################################

############################################
### Daily Update
############################################
### set working directory to appropriate folder
setwd("R:/Specialists Transfer/Ken/GitHub/Capping-Tool-from-Qualtrics")

### read in file. I had to rename the file after download, it wouldn't import
### with the crazy Qualtrics title.
capping <- read.csv("capping_5_02.csv")
View(capping)
### note here that first two rows of data are metadata from Qualtrics.

### remove metadata
capping <- capping[-c(1, 2), ]
### double check metadata removed
View(capping)

### combine campus name into one column
capping$campus_name <- paste0(capping$campus_central_1, capping$campus_north_1, capping$campus_south_1, capping$campus_west_1)

### combine campus number into one column
capping$campus_number <- paste0(capping$campus_central_2, capping$campus_north_2, capping$campus_south_2, capping$campus_west_2)

### combine division into one column
capping$division <- paste0(capping$campus_central_3, capping$campus_north_3, capping$campus_south_3, capping$campus_west_3)


capping <- subset(capping, select = c("user_email_1", "division", "campus_name", "campus_number", "og_pk_reg",
                                      "og_pk_dl", "og_pk_bil", "og_pk_esl", "og_pk_gt", "og_kg_reg", "og_kg_dl", "og_kg_bil",
                                      "og_kg_esl", "og_kg_gt", "og_1st_reg", "og_1st_dl", "og_1st_bil", "og_1st_esl",
                                      "og_1st_gt", "og_2nd_reg", "og_2nd_dl", "og_2nd_bil", "og_2nd_esl",
                                      "og_2nd_gt", "og_3rd_reg", "og_3rd_dl", "og_3rd_bil", "og_3rd_esl",
                                      "og_3rd_gt", "og_4th_reg", "og_4th_dl", "og_4th_bil", "og_4th_esl",
                                      "og_4th_gt", "transfer_kg_reg_2", "transfer_kg_dl_2",
                                      "transfer_kg_bil_2", "transfer_kg_esl_2", "transfer_kg_gt_2", "transfer_1st_reg_2",
                                      "transfer_1st_dl_2", "transfer_1st_bil_2", "transfer_1st_esl_2",
                                      "transfer_1st_gt_2", "transfer_2nd_reg_2", "transfer_2nd_dl_2",
                                      "transfer_2nd_bil_2", "transfer_2nd_esl_2", "transfer_2nd_gt_2",
                                      "transfer_3rd_reg_2", "transfer_3rd_dl_2", "transfer_3rd_bil_2", "transfer_3rd_esl_2",
                                      "transfer_3rd_gt_2", "transfer_4th_reg_2", "transfer_4th_dl_2", "transfer_4th_bil_2",
                                      "transfer_4th_esl_2", "transfer_4th_gt_2"))


setwd("R:/Specialists Transfer/Ken/GitHub/Capping-Tool-from-Qualtrics")
write.csv(capping, "capping_clean_5_02.csv")



