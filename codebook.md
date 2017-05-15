Getting and Cleaning Data Course Project
================
Information about the data
---------
the data was extracted from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).It is a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Study design
---------
I extract only the test and train sets and I included only the measurement on mean and stander deviation 

Code book
---------

There are 88 variables in tidy.txt file. from 3 to 88 is the mean and stander deviation time in ms

1. - subject\_id: there are 30 volunteers 
1. - activity: there are 6 activity (walking, walking_upstairs, walking_downstairs, sitting, standing, laying)
1. - time\_body\_accelerometer\_\_mean\_x
1. - time\_body\_accelerometer\_\_mean\_y
1. - time\_body\_accelerometer\_\_mean\_z
1. - time\_body\_accelerometer\_stander\_deviation\_x
1. - time\_body\_accelerometer\_stander\_deviation\_y
1. - time\_body\_accelerometer\_stander\_deviation\_z
1. - time\_gravity\_accelerometer\_\_mean\_x
1. - time\_gravity\_accelerometer\_\_mean\_y
1. - time\_gravity\_accelerometer\_\_mean\_z
1. - time\_gravity\_accelerometer\_stander\_deviation\_x
1. - time\_gravity\_accelerometer\_stander\_deviation\_y
1. - time\_gravity\_accelerometer\_stander\_deviation\_z
1. - time\_body\_accelerometer\_jerk\_\_mean\_x
1. - time\_body\_accelerometer\_jerk\_\_mean\_y
1. - time\_body\_accelerometer\_jerk\_\_mean\_z
1. - time\_body\_accelerometer\_jerk\_stander\_deviation\_x
1. - time\_body\_accelerometer\_jerk\_stander\_deviation\_y
1. - time\_body\_accelerometer\_jerk\_stander\_deviation\_z
1. - time\_body\_gyroscope\_\_mean\_x
1. - time\_body\_gyroscope\_\_mean\_y
1. - time\_body\_gyroscope\_\_mean\_z
1. - time\_body\_gyroscope\_stander\_deviation\_x
1. - time\_body\_gyroscope\_stander\_deviation\_y
1. - time\_body\_gyroscope\_stander\_deviation\_z
1. - time\_body\_gyroscope\_jerk\_\_mean\_x
1. - time\_body\_gyroscope\_jerk\_\_mean\_y
1. - time\_body\_gyroscope\_jerk\_\_mean\_z
1. - time\_body\_gyroscope\_jerk\_stander\_deviation\_x
1. - time\_body\_gyroscope\_jerk\_stander\_deviation\_y
1. - time\_body\_gyroscope\_jerk\_stander\_deviation\_z
1. - time\_body\_accelerometer\_magnitude\_\_mean
1. - time\_body\_accelerometer\_magnitude\_stander\_deviation
1. - time\_gravity\_accelerometer\_magnitude\_\_mean
1. - time\_gravity\_accelerometer\_magnitude\_stander\_deviation
1. - time\_body\_accelerometer\_jerk\_magnitude\_\_mean
1. - time\_body\_accelerometer\_jerk\_magnitude\_stander\_deviation
1. - time\_body\_gyroscope\_magnitude\_\_mean
1. - time\_body\_gyroscope\_magnitude\_stander\_deviation
1. - time\_body\_gyroscope\_jerk\_magnitude\_\_mean
1. - time\_body\_gyroscope\_jerk\_magnitude\_stander\_deviation
1. - frequency\_body\_accelerometer\_\_mean\_x
1. - frequency\_body\_accelerometer\_\_mean\_y
1. - frequency\_body\_accelerometer\_\_mean\_z
1. - frequency\_body\_accelerometer\_stander\_deviation\_x
1. - frequency\_body\_accelerometer\_stander\_deviation\_y
1. - frequency\_body\_accelerometer\_stander\_deviation\_z
1. - frequency\_body\_accelerometer\_\_meanFreq()\_x
1. - frequency\_body\_accelerometer\_\_meanFreq()\_y
1. - frequency\_body\_accelerometer\_\_meanFreq()\_z
1. - frequency\_body\_accelerometer\_jerk\_\_mean\_x
1. - frequency\_body\_accelerometer\_jerk\_\_mean\_y
1. - frequency\_body\_accelerometer\_jerk\_\_mean\_z
1. - frequency\_body\_accelerometer\_jerk\_stander\_deviation\_x
1. - frequency\_body\_accelerometer\_jerk\_stander\_deviation\_y
1. - frequency\_body\_accelerometer\_jerk\_stander\_deviation\_z
1. - frequency\_body\_accelerometer\_jerk\_\_meanFreq()\_x
1. - frequency\_body\_accelerometer\_jerk\_\_meanFreq()\_y
1. - frequency\_body\_accelerometer\_jerk\_\_meanFreq()\_z
1. - frequency\_body\_gyroscope\_\_mean\_x
1. - frequency\_body\_gyroscope\_\_mean\_y
1. - frequency\_body\_gyroscope\_\_mean\_z
1. - frequency\_body\_gyroscope\_stander\_deviation\_x
1. - frequency\_body\_gyroscope\_stander\_deviation\_y
1. - frequency\_body\_gyroscope\_stander\_deviation\_z
1. - frequency\_body\_gyroscope\_\_meanFreq()\_x
1. - frequency\_body\_gyroscope\_\_meanFreq()\_y
1. - frequency\_body\_gyroscope\_\_meanFreq()\_z
1. - frequency\_body\_accelerometer\_magnitude\_\_mean
1. - frequency\_body\_accelerometer\_magnitude\_stander\_deviation
1. - frequency\_body\_accelerometer\_magnitude\_\_meanFreq()
1. - frequency\_body\_accelerometer\_jerk\_magnitude\_\_mean
1. - frequency\_body\_accelerometer\_jerk\_magnitude\_stander\_deviation
1. - frequency\_body\_accelerometer\_jerk\_magnitude\_\_meanFreq()
1. - frequency\_body\_gyroscope\_magnitude\_\_mean
1. - frequency\_body\_gyroscope\_magnitude\_stander\_deviation
1. - frequency\_body\_gyroscope\_magnitude\_\_meanFreq()
1. - frequency\_body\_gyroscope\_jerk\_magnitude\_\_mean
1. - frequency\_body\_gyroscope\_jerk\_magnitude\_stander\_deviation
1. - frequency\_body\_gyroscope\_jerk\_magnitude\_\_meanFreq()
1. - angle(time\_body\_accelerometer\_mean,gravity)
1. - angle(time\_body\_accelerometer\_jerk\_mean),gravity\_mean)
1. - angle(time\_body\_gyroscope\_mean,gravity\_mean)
1. - angle(time\_body\_gyroscope\_jerk\_mean,gravity\_mean)
1. - angle(X,gravity\_mean)
1. - angle(Y,gravity\_mean)
1. - angle(Z,gravity\_mean)
