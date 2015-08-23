# Code Book for UCI Data Set Describing Measurements Taken Using the Accelerometer and Gyroscope of a Smartphone

The measurements were obtained from the **Human Activity Recognition Using Smartphones Dataset**. They describe part of the process as:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

**Reference**: `features_info.txt` file from [**Human Activity Recognition Using Smartphones Data Set**] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The variables used in the `tidyData.txt` file follow.


1. Subject.ID
The ID number of the subject

2. Activity.Labels
The name of the activity being performed by the subject

3. tBodyAcc-mean()-X
Time domain acceleration of the body--mean value in the  in the x axis

4. tBodyAcc-mean()-Y
Time domain acceleration of the body--mean value in the  in the y axis

5. tBodyAcc-mean()-Z
Time domain acceleration of the body--mean value in the  in the z axis

6. tBodyAcc-std()-X
Time domain acceleration of the body--standard deviation in the  in the x axis

7. tBodyAcc-std()-Y
Time domain acceleration of the body--standard deviation in the  in the y axis

8. tBodyAcc-std()-Z
Time domain acceleration of the body--standard deviation in the  in the z axis

9. tGravityAcc-mean()-X
time domain acceleration due to gravity--mean value in the  in the x axis

10. tGravityAcc-mean()-Y
time domain acceleration due to gravity--mean value in the  in the y axis

11. tGravityAcc-mean()-Z
time domain acceleration due to gravity--mean value in the  in the z axis

12. tGravityAcc-std()-X
Time domain acceleration due to gravity--standard deviation in the  in the x axis

13. tGravityAcc-std()-Y
Time domain acceleration due to gravity--standard deviation in the  in the y axis

14. tGravityAcc-std()-Z
Time domain acceleration due to gravity--standard deviation in the  in the z axis

15. tBodyAccJerk-mean()-X
Time domain acceleration of the body (Jerk signals)--mean value in the  in the x axis

16. tBodyAccJerk-mean()-Y
Time domain acceleration of the body (Jerk signals)--mean value in the  in the y axis

17. tBodyAccJerk-mean()-Z
Time domain acceleration of the body (Jerk signals)--mean value in the  in the z axis

18. tBodyAccJerk-std()-X
Time domain acceleration of the body (Jerk signals)--standard deviation in the  in the x axis

19. tBodyAccJerk-std()-Y
Time domain acceleration of the body (Jerk signals)--standard deviation in the  in the y axis

20. tBodyAccJerk-std()-Z
Time domain acceleration of the body (Jerk signals)--standard deviation in the  in the z axis

21. tBodyGyro-mean()-X
Time domain measurements of the body from the gyroscope--mean value in the x axis

22. tBodyGyro-mean()-Y
Time domain measurements of the body from the gyroscope--mean value in the y axis

23. tBodyGyro-mean()-Z
Time domain measurements of the body from the gyroscope--mean value in the z axis

24. tBodyGyro-std()-X
Time domain measurements of the body from the gyroscope--standard deviation in the x axis

25. tBodyGyro-std()-Y
Time domain measurements of the body from the gyroscope--standard deviation in the y axis

26. tBodyGyro-std()-Z
Time domain measurements of the body from the gyroscope--standard deviation in the z axis

27. tBodyGyroJerk-mean()-X
Time domain measurements of the body from the gyroscope (Jerk Signals)--mean value in the x axis

28. tBodyGyroJerk-mean()-Y
Time domain measurements of the body from the gyroscope (Jerk Signals)--mean value in the y axis

29. tBodyGyroJerk-mean()-Z
Time domain measurements of the body from the gyroscope (Jerk Signals)--mean value in the z axis

30. tBodyGyroJerk-std()-X
Time domain measurements of the body from the gyroscope (Jerk signals)--standard deviation in the  in the x axis

31. tBodyGyroJerk-std()-Y
Time domain measurements of the body from the gyroscope (Jerk signals)--standard deviation in the  in the y axis

32. tBodyGyroJerk-std()-Z
Time domain measurements of the body from the gyroscope (Jerk signals)--standard deviation in the  in the z axis

33. tBodyAccMag-mean()
Time domain acceleration of the body (magnitude)--mean value

34. tBodyAccMag-std()
Time domain acceleration of the body (magnitude)--standard deviation

35. tGravityAccMag-mean()
Magnitude of the acceleration due to gravity in the time domain--mean value

36. tGravityAccMag-std()
Magnitude of the acceleration due to gravity in the time domain--standard deviation

37. tBodyAccJerkMag-mean()
Time domain acceleration of the body (Jerk signals) (magnitude)--mean value

38. tBodyAccJerkMag-std()
Time domain acceleration of the body (Jerk signals) (magnitude)--standard deviation

39. tBodyGyroMag-mean()
Time domain measurements of the body from the gyroscope (magnitude)--mean value

40. tBodyGyroMag-std()
Time domain measurements of the body from the gyroscope (magnitude)--standard deviation

41. tBodyGyroJerkMag-mean()
Time domain measurements of the body from the gyroscope (Jerk signals) (magnitude)--mean value

42. tBodyGyroJerkMag-std()
Time domain measurements of the body from the gyroscope (Jerk signals) (magnitude)--standard deviation

43. fBodyAcc-mean()-X
Acceleration of the body in the frequency domain--mean value in the x axis

44. fBodyAcc-mean()-Y
Acceleration of the body in the frequency domain--mean value in the y axis

45. fBodyAcc-mean()-Z
Acceleration of the body in the frequency domain--mean value in the z axis

46. fBodyAcc-std()-X
Acceleration of the body in the frequency domain--standard deviation in the x axis

47. fBodyAcc-std()-Y
Acceleration of the body in the frequency domain--standard deviation in the y axis

48. fBodyAcc-std()-Z
Acceleration of the body in the frequency domain--standard deviation in the z axis

49. fBodyAccJerk-mean()-X
Acceleration of the body in the frequency domain (Jerk Signals)--mean value in the x axis

50. fBodyAccJerk-mean()-Y
Acceleration of the body in the frequency domain (Jerk Signals)--mean value in the y axis

51. fBodyAccJerk-mean()-Z
Acceleration of the body in the frequency domain (Jerk Signals)--mean value in the z axis

52. fBodyAccJerk-std()-X
Acceleration of the body in the frequency domain (Jerk signals)--standard deviation in the  in the x axis

53. fBodyAccJerk-std()-Y
Acceleration of the body in the frequency domain (Jerk signals)--standard deviation in the  in the y axis

54. fBodyAccJerk-std()-Z
Acceleration of the body in the frequency domain (Jerk signals)--standard deviation in the  in the z axis

55. fBodyGyro-mean()-X
Gyroscopic measurements of the body in the frequency domain--mean value in the x axis

56. fBodyGyro-mean()-Y
Gyroscopic measurements of the body in the frequency domain--mean value in the y axis

57. fBodyGyro-mean()-Z
Gyroscopic measurements of the body in the frequency domain--mean value in the z axis

58. fBodyGyro-std()-X
Gyroscopic measurements of the body in the frequency domain--standard deviation in the x axis

59. fBodyGyro-std()-Y
Gyroscopic measurements of the body in the frequency domain--standard deviation in the y axis

60. fBodyGyro-std()-Z
Gyroscopic measurements of the body in the frequency domain--standard deviation in the z axis

61. fBodyAccMag-mean()
Acceleration of the body in the frequency domain (magnitude)--mean value

62. fBodyAccMag-std()
Acceleration of the body in the frequency domain (magnitude)--standard deviation

63. fBodyBodyAccJerkMag-mean()
The body body acceleration in the frequency domain (Jerk signals) (magnitude)--mean value

64. fBodyBodyAccJerkMag-std()
The body body acceleration in the frequency domain (Jerk signals) (magnitude)--standard deviation

65. fBodyBodyGyroMag-mean()
Gyroscopic body body measurements in the frequency domain (magnitude)--mean value

66. fBodyBodyGyroMag-std()
Gyroscopic body body measurements in the frequency domain (magnitude)--standard deviation

67. fBodyBodyGyroJerkMag-mean()
Gyroscopic body body measurements in the frequency domain (Jerk signals) (magnitude)--mean value

68. fBodyBodyGyroJerkMag-std()
Gyroscopic body body measurements in the frequency domain (Jerk signals) (magnitude)--standard deviation

