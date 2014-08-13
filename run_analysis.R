library(reshape2)

run_analysis <- function() {

    # You should create one R script called run_analysis.R that does the following.
    #
    # Merges the training and the test sets to create one data set.
    # Extracts only the measurements on the mean and standard deviation for each measurement.
    # Uses descriptive activity names to name the activities in the data set
    # Appropriately labels the data set with descriptive variable names.
    # Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    tidyFileName <- "tidy.txt"
    tidyAveragesFileName <- "tidy_averages.txt"

    basePath <- "UCI HAR Dataset"
    features <- read.table( paste(basePath, "features.txt", sep="/")  )[, 2]
    activity_labels <- read.table( paste(basePath, "activity_labels.txt", sep="/"), col.names=c("activity_id", "activity") )



    ##
    ## Helper to merge the datasets together for given type (train/test)
    ##
    combineAndTidyFilesOfType <- function(type) {

        subjectFileName <- paste(basePath, type, paste("subject_", type, ".txt", sep = ""), sep="/")
        xFileName <- paste(basePath, type, paste("X_", type, ".txt", sep = ""), sep="/")
        yFileName <- paste(basePath, type, paste("y_", type, ".txt", sep = ""), sep="/")

        subject <- read.table(subjectFileName, col.names=c("subject"))

        x <- read.table(xFileName, col.names=features)
        ## Reduce features to only those that are for mean/std
        x <- x[, grep("[ft][BG].*?[.](?:mean|std)[.]", colnames(x), perl=TRUE, value=TRUE)]
        y <- read.table(yFileName, col.names=c("activity_id"))

        ## merge the three datasets into one
        combined <- merge(activity_labels, cbind(subject, y, x), "activity_id", all=FALSE)

        ## Reorder columns to "subject", "activity" and the rest.
        ## Also drop "activity_id", column 1, as it is now redundant
        combined <- combined[, c(3, 2, 4:ncol(combined))]

        print(paste("Loaded and tidied", nrow(combined), "rows for",type, "data"))
        combined
    }

    ## Load, combine and clean both test & train
    test <- combineAndTidyFilesOfType("test")
    train <- combineAndTidyFilesOfType("train")



    ## Merge tidied test & train data
    tidyData <- rbind(test,train)
    print(paste("Combined train & test to NRows", nrow(tidyData)))

    ## Clean column names
    colnames(tidyData) <- gsub("\\.", "", tolower(colnames(tidyData)))

    ## sort by subject
    tidyData <- tidyData[ order(tidyData[, "subject"], tidyData[, "activity"]),  ]

    print(paste("Writing ", tidyFileName))
    write.table(tidyData, file=tidyFileName, row.names=FALSE)


    measures <- colnames(tidyData)[3:ncol(tidyData)]
    melted <- melt(tidyData, id=c("subject", "activity"), measure.vars=measures)

    tidyAverages <- dcast(melted, subject + activity ~ variable, mean)

    print(paste("Writing ", tidyAveragesFileName))
    write.table(tidyAverages, file=tidyAveragesFileName, row.names=FALSE)

    ## write columns names into file for the codebook
    write(colnames(tidyData), file="columns.txt")

}