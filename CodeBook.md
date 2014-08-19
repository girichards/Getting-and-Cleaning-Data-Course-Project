Code Book
=========

average_sensor_values_for_subject_and_activity.txt
-----------------

The content of average_sensor_values_for_subject_and_activity.txt is as follows.

There is one row per subject and activity. The variable, columns 3 to 68, are averages of the variables per subject and activity.


|   Variable                    |   Description |
| ----------------------------- | ----- |
|   subject                     | Integer: The Id of the test subject     |
|   activity                    | Factor: The activity performed. Available Factors:[WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]   |
|   tbodyaccmeanx               | Numeric: Mean X axis data for accelerometer                                     |
|   tbodyaccmeany               | Numeric: Mean Y axis data for accelerometer                                     |
|   tbodyaccmeanz               | Numeric: Mean Z axis data for accelerometer                                     |
|   tbodyaccstdx                | Numeric: Standard deviation X axis data for accelerometer                       |
|   tbodyaccstdy                | Numeric: Standard deviation Y axis data for accelerometer                       |
|   tbodyaccstdz                | Numeric: Standard deviation Z axis data for accelerometer                       |
|   tgravityaccmeanx            | Numeric: Mean X axis data for gravity acceleration                              |
|   tgravityaccmeany            | Numeric: Mean Y axis data for gravity acceleration                              |
|   tgravityaccmeanz            | Numeric: Mean Z axis data for gravity acceleration                              |
|   tgravityaccstdx             | Numeric: Standard deviation X axis data for gravity acceleration                |
|   tgravityaccstdy             | Numeric: Standard deviation Y axis data for gravity acceleration                |
|   tgravityaccstdz             | Numeric: Standard deviation Z axis data for gravity acceleration                |
|   tbodyaccjerkmeanx           | Numeric: Mean X axis data for acceleration jerk                                 |
|   tbodyaccjerkmeany           | Numeric: Mean Y axis data for acceleration jerk                                 |
|   tbodyaccjerkmeanz           | Numeric: Mean Z axis data for acceleration jerk                                 |
|   tbodyaccjerkstdx            | Numeric: Standard deviation X axis data for acceleration jerk                   |
|   tbodyaccjerkstdy            | Numeric: Standard deviation Y axis data for acceleration jerk                   |
|   tbodyaccjerkstdz            | Numeric: Standard deviation Z axis data for acceleration jerk                   |
|   tbodygyromeanx              | Numeric: Mean X axis data for gyroscope                                         |
|   tbodygyromeany              | Numeric: Mean Y axis data for gyroscope                                         |
|   tbodygyromeanz              | Numeric: Mean Z axis data for gyroscope                                         |
|   tbodygyrostdx               | Numeric: Standard deviation X axis data for gyroscope                           |
|   tbodygyrostdy               | Numeric: Standard deviation Y axis data for gyroscope                           |
|   tbodygyrostdz               | Numeric: Standard deviation Z axis data for gyroscope                           |
|   tbodygyrojerkmeanx          | Numeric: Mean X axis data for gyroscope jerk                                    |
|   tbodygyrojerkmeany          | Numeric: Mean Y axis data for gyroscope jerk                                    |
|   tbodygyrojerkmeanz          | Numeric: Mean Z axis data for gyroscope jerk                                    |
|   tbodygyrojerkstdx           | Numeric: Standard deviation X axis data for gyroscope jerk                      |
|   tbodygyrojerkstdy           | Numeric: Standard deviation Y axis data for gyroscope jerk                      |
|   tbodygyrojerkstdz           | Numeric: Standard deviation Z axis data for gyroscope jerk                      |
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








































































