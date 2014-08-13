Code Book
=========

tidy.txt
--------

The file "tidy.txt" is a merged, clean, transformed dataset created from the following files of the UCI HAR Dataset.


- 'features.txt': List of all features. Formed the column headers of the X train/test set
- 'activity_labels.txt': Links the class labels with their activity name. Formed the "activity" column factors

- subject_train.txt
- subject_test.txt
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels. The corresponding "activityId" of the X_train set
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels. The corresponding "activityId" of the X_train set

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

The rows of both train and test tidy sets were combined into one tidy dataset which was further cleaned as follows

* Column headings cleaned to be lower case, and the "." introduced by the import were removed by regex
* The data was also sorted in descending order by "subject" and then "activity"

There can be many rows for the same subject and activity.

The content of tidy.txt is as follows.

|   Variable                    |   Description |
| ----------------------------- | ----- |
|   subject                     | Integer: The Id of the test subject     |
|   activity                    | Factor: The activity performed. Available Factors:[WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]   |
|   tbodyaccmeanx               | Numeric: Mean X axis data for accelerometer                           |
|   tbodyaccmeany               | Numeric: Mean Y axis data for accelerometer                           |
|   tbodyaccmeanz               | Numeric: Mean Z axis data for accelerometer                           |
|   tbodyaccstdx                | Numeric: Standard deviation X axis data for accelerometer             |
|   tbodyaccstdy                | Numeric: Standard deviation Y axis data for accelerometer             |
|   tbodyaccstdz                | Numeric: Standard deviation Z axis data for accelerometer             |
|   tgravityaccmeanx            | Numeric: Mean X axis data for gravity acceleration                    |
|   tgravityaccmeany            | Numeric: Mean Y axis data for gravity acceleration                    |
|   tgravityaccmeanz            | Numeric: Mean Z axis data for gravity acceleration                    |
|   tgravityaccstdx             | Numeric: Standard deviation X axis data for gravity acceleration      |
|   tgravityaccstdy             | Numeric: Standard deviation Y axis data for gravity acceleration      |
|   tgravityaccstdz             | Numeric: Standard deviation Z axis data for gravity acceleration      |
|   tbodyaccjerkmeanx           | Numeric: Mean X axis data for acceleration jerk                       |
|   tbodyaccjerkmeany           | Numeric: Mean Y axis data for acceleration jerk                       |
|   tbodyaccjerkmeanz           | Numeric: Mean Z axis data for acceleration jerk                       |
|   tbodyaccjerkstdx            | Numeric: Standard deviation X axis data for acceleration jerk         |
|   tbodyaccjerkstdy            | Numeric: Standard deviation Y axis data for acceleration jerk         |
|   tbodyaccjerkstdz            | Numeric: Standard deviation Z axis data for acceleration jerk         |
|   tbodygyromeanx              | Numeric: Mean X axis data for gyroscope                               |
|   tbodygyromeany              | Numeric: Mean Y axis data for gyroscope                               |
|   tbodygyromeanz              | Numeric: Mean Z axis data for gyroscope                               |
|   tbodygyrostdx               | Numeric: Standard deviation X axis data for gyroscope                 |
|   tbodygyrostdy               | Numeric: Standard deviation Y axis data for gyroscope                 |
|   tbodygyrostdz               | Numeric: Standard deviation Z axis data for gyroscope                 |
|   tbodygyrojerkmeanx          | Numeric: Mean X axis data for gyroscope jerk                          |
|   tbodygyrojerkmeany          | Numeric: Mean Y axis data for gyroscope jerk                          |
|   tbodygyrojerkmeanz          | Numeric: Mean Z axis data for gyroscope jerk                          |
|   tbodygyrojerkstdx           | Numeric: Standard deviation X axis data for gyroscope jerk            |
|   tbodygyrojerkstdy           | Numeric: Standard deviation Y axis data for gyroscope jerk            |
|   tbodygyrojerkstdz           | Numeric: Standard deviation Z axis data for gyroscope jerk            |
|   tbodyaccmagmean             | Numeric: Mean acceleration magnitude Euclidean norm                             |
|   tbodyaccmagstd              | Numeric: Standard deviation acceleration magnitude Euclidean norm               |
|   tgravityaccmagmean          | Numeric: Mean gravity acceleration  magnitude Euclidean norm                       |
|   tgravityaccmagstd           | Numeric: Standard deviation gravity acceleration magnitude Euclidean norm          |
|   tbodyaccjerkmagmean         | Numeric: Mean acceleration jerk magnitude Euclidean norm                           |
|   tbodyaccjerkmagstd          | Numeric: Standard deviation acceleration jerk magnitude Euclidean norm             |
|   tbodygyromagmean            | Numeric: Mean of the gyroscope magnitude Euclidean norm                            |
|   tbodygyromagstd             | Numeric: Standard deviation of the gyroscope magnitude Euclidean norm              |
|   tbodygyrojerkmagmean        | Numeric: Mean gyrosocpe jerk magnitude Euclidean norm                              |
|   tbodygyrojerkmagstd         | Numeric: Standard deviation gyrosocpe jerk magnitude Euclidean norm                |
|   fbodyaccmeanx               | Numeric: Mean Fast Fourier Transform X axis data for accelerometer                   |
|   fbodyaccmeany               | Numeric: Mean Fast Fourier Transform Y axis data for accelerometer                   |
|   fbodyaccmeanz               | Numeric: Mean Fast Fourier Transform Z axis data for accelerometer                   |
|   fbodyaccstdx                | Numeric: Standard deviation Fast Fourier Transform X axis data for accelerometer     |
|   fbodyaccstdy                | Numeric: Standard deviation Fast Fourier Transform Y axis data for accelerometer     |
|   fbodyaccstdz                | Numeric: Standard deviation Fast Fourier Transform Z axis data for accelerometer     |
|   fbodyaccjerkmeanx           | Numeric: Mean Fast Fourier Transform X axis data for acceleration jerk                    |
|   fbodyaccjerkmeany           | Numeric: Mean Fast Fourier Transform Y axis data for acceleration jerk                    |
|   fbodyaccjerkmeanz           | Numeric: Mean Fast Fourier Transform Z axis data for acceleration jerk                    |
|   fbodyaccjerkstdx            | Numeric: Standard deviation Fast Fourier Transform X axis data for acceleration jerk      |
|   fbodyaccjerkstdy            | Numeric: Standard deviation Fast Fourier Transform Y axis data for acceleration jerk      |
|   fbodyaccjerkstdz            | Numeric: Standard deviation Fast Fourier Transform Z axis data for acceleration jerk      |
|   fbodygyromeanx              | Numeric: Mean Fast Fourier Transform X axis data for gyroscope                     |
|   fbodygyromeany              | Numeric: Mean Fast Fourier Transform Y axis data for gyroscope                     |
|   fbodygyromeanz              | Numeric: Mean Fast Fourier Transform Z axis data for gyroscope                     |
|   fbodygyrostdx               | Numeric: Standard deviation Fast Fourier Transform X axis data for gyroscope       |
|   fbodygyrostdy               | Numeric: Standard deviation Fast Fourier Transform Y axis data for gyroscope       |
|   fbodygyrostdz               | Numeric: Standard deviation Fast Fourier Transform Z axis data for gyroscope       |
|   fbodyaccmagmean             | Numeric: Mean Fast Fourier Transform acceleration magnitude Euclidean norm                     |
|   fbodyaccmagstd              | Numeric: Standard deviation Fast Fourier Transform acceleration magnitude Euclidean norm       |
|   fbodybodyaccjerkmagmean     | Numeric: Mean Fast Fourier Transform acceleration jerk magnitude Euclidean norm                    |
|   fbodybodyaccjerkmagstd      | Numeric: Standard deviation Fast Fourier Transform acceleration jerk magnitude Euclidean norm      |
|   fbodybodygyromagmean        | Numeric: Mean Fast Fourier Transform gyroscope magnitude Euclidean norm                    |
|   fbodybodygyromagstd         | Numeric: Standard deviation Fast Fourier gyroscope acceleration magnitude Euclidean norm      |
|   fbodybodygyrojerkmagmean    | Numeric: Mean Fast Fourier Transform gyroscope magnitude jerk Euclidean norm                    |
|   fbodybodygyrojerkmagstd     | Numeric: Standard deviation Fast Fourier Transform gyroscope jerk magnitude Euclidean norm      |








































































