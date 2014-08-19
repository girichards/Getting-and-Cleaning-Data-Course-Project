Getting-and-Cleaning-Data-Course-Project
========================================

Getting and Cleaning Data Course Project


run_analysis.R
--------------

This script reads and combines the following files to create a tidy dataset.

- 'features.txt': List of all features. Formed the column headers of the X train/test set
- 'activity_labels.txt': Links the class labels with their activity name. Formed the "activity" column factors
- 'subject_train.txt': subject ids that correspond to _train datasets on a row by row basis 
- 'subject_test.txt': subject ids that correspond to _test datasets on a row by row basis
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels. The corresponding "activityId" of the X_train set
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels. The corresponding "activityId" of the X_train set

The script produces a space separated file called "average_sensor_values_for_subject_and_activity.txt", which represents the average of each mean and std measurement for each subject and activity.

The process
-----------

For train files
* feature names from features.txt where attached to the X_train.txt as column headers
* The X_train dataset was filterd where the "std" and "mean" columns of all measures were kept. Any other columns were discarded
* "activityId" and "subject" columns were added to the filtered X_train data, merged from "y_train.txt" and "subject_train.txt" respectively
* The activity labels from "activity_labels.txt" were then merged as another column to provide "activity" factors
* Columns were reorderd as in the table below, and the activityId column was dropped now that we have activity factors.

For test files
* feature names from features.txt where attached to the X_test.txt as column headers
* The X_test dataset was filterd where the "std" and "mean" columns of all measures were kept. Any other columns were discarded
* "activityId" and "subject" columns were added to the filtered X_test data, merged from "y_test.txt" and "subject_test.txt" respectively
* The activity labels from "activity_labels.txt" were then merged as another column to provide "activity" factors
* Columns were reorderd as in the table below, and the activityId column was dropped now that we have activity factors.

The rows of both train and test tidy sets were combined into one large tidy dataset which was further cleaned as follows

* Column headings cleaned to be lower case, and the "." introduced by the import were removed by regex
* The data was also sorted in descending order by "subject" and then "activity" columns


Once cleaned the data is reshaped/futher analysed in order to calculate the average value for each variable, for each subject and activity using the following operations
 * melt - to produce a tall and narrow dataset with 4 columns: subject, activity, variable and value
 * dcast - to repackage to a wide and shallow dataset, and apply the mean function across variable values for each subject and activity.



