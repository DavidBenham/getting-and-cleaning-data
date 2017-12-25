# Code Book
This codebook summarizes the required tidy data set: _tidy_data_set.txt

### Included Identifiers
* **subject**
	An identifier for the Subject
* **activity**
	Description of the Activity Type

###I ncluded Average of Measurements
There are two classificied dimensions in this signal data: 

* **Time-domain**
(prefix: timeDomain) which includes data which originates from the accelerometer and gyroscope raw signals.

* **Frequency-domain** 
(prefix: frequencyDomain) which is the result of the application of the Fast Fourier Transform (FFT) to some of these raw time signals.

### **Time-domain**
* timeDomainBodyAccelerometerMeanX
* timeDomainBodyAccelerometerMeanY
* timeDomainBodyAccelerometerMeanZ
* timeDomainBodyAccelerometerStandardDeviationX
* timeDomainBodyAccelerometerStandardDeviationY
* timeDomainBodyAccelerometerStandardDeviationZ
* timeDomainGravityAccelerometerMeanX
* timeDomainGravityAccelerometerMeanY
* timeDomainGravityAccelerometerMeanZ
* timeDomainGravityAccelerometerStandardDeviationX
* timeDomainGravityAccelerometerStandardDeviationY
* timeDomainGravityAccelerometerStandardDeviationZ
* timeDomainBodyAccelerometerJerkMeanX
* timeDomainBodyAccelerometerJerkMeanY
* timeDomainBodyAccelerometerJerkMeanZ
* timeDomainBodyAccelerometerJerkStandardDeviationX
* timeDomainBodyAccelerometerJerkStandardDeviationY
* timeDomainBodyAccelerometerJerkStandardDeviationZ
* timeDomainBodyGyroscopeMeanX
* timeDomainBodyGyroscopeMeanY
* timeDomainBodyGyroscopeMeanZ
* timeDomainBodyGyroscopeStandardDeviationX
* timeDomainBodyGyroscopeStandardDeviationY
* timeDomainBodyGyroscopeStandardDeviationZ
* timeDomainBodyGyroscopeJerkMeanX
* timeDomainBodyGyroscopeJerkMeanY
* timeDomainBodyGyroscopeJerkMeanZ
* timeDomainBodyGyroscopeJerkStandardDeviationX
* timeDomainBodyGyroscopeJerkStandardDeviationY
* timeDomainBodyGyroscopeJerkStandardDeviationZ
* timeDomainBodyAccelerometerMagnitudeMean
* timeDomainBodyAccelerometerMagnitudeStandardDeviation
* timeDomainGravityAccelerometerMagnitudeMean
* timeDomainGravityAccelerometerMagnitudeStandardDeviation
* timeDomainBodyAccelerometerJerkMagnitudeMean
* timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
* timeDomainBodyGyroscopeMagnitudeMean
* timeDomainBodyGyroscopeMagnitudeStandardDeviation
* timeDomainBodyGyroscopeJerkMagnitudeMean
* timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

### **Frequency-domain**
* frequencyDomainBodyAccelerometerMeanX
* frequencyDomainBodyAccelerometerMeanY
* frequencyDomainBodyAccelerometerMeanZ
* frequencyDomainBodyAccelerometerStandardDeviationX
* frequencyDomainBodyAccelerometerStandardDeviationY
* frequencyDomainBodyAccelerometerStandardDeviationZ
* frequencyDomainBodyAccelerometerMeanFrequencyX
* frequencyDomainBodyAccelerometerMeanFrequencyY
* frequencyDomainBodyAccelerometerMeanFrequencyZ
* frequencyDomainBodyAccelerometerJerkMeanX
* frequencyDomainBodyAccelerometerJerkMeanY
* frequencyDomainBodyAccelerometerJerkMeanZ
* frequencyDomainBodyAccelerometerJerkStandardDeviationX
* frequencyDomainBodyAccelerometerJerkStandardDeviationY
* frequencyDomainBodyAccelerometerJerkStandardDeviationZ
* frequencyDomainBodyAccelerometerJerkMeanFrequencyX
* frequencyDomainBodyAccelerometerJerkMeanFrequencyY
* frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
* frequencyDomainBodyGyroscopeMeanX
* frequencyDomainBodyGyroscopeMeanY
* frequencyDomainBodyGyroscopeMeanZ
* frequencyDomainBodyGyroscopeStandardDeviationX
* frequencyDomainBodyGyroscopeStandardDeviationY
* frequencyDomainBodyGyroscopeStandardDeviationZ
* frequencyDomainBodyGyroscopeMeanFrequencyX
* frequencyDomainBodyGyroscopeMeanFrequencyY
* frequencyDomainBodyGyroscopeMeanFrequencyZ
* frequencyDomainBodyAccelerometerMagnitudeMean
* frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
* frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
* frequencyDomainBodyAccelerometerJerkMagnitudeMean
* frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
* frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
* frequencyDomainBodyGyroscopeMagnitudeMean
* frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
* frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
* frequencyDomainBodyGyroscopeJerkMagnitudeMean
* frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
* frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

## Transformations
1. Merged the data sets together into a single dataset
2. Extracted the required columns (containing mean or std as well as identification columns)
3. Replaced activity identifiers with activity types
4. Replaced abbreviated or duplciated names with friendly names
5. Created and Exported a tidy data set.

Details and a copy of the code can be found in the **run_analysis.R** script found in the repo.
