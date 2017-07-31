Answer 2:
-Command used to see structure of dataset: str(autodata).
-A table consists of 397 rows and 9 columns with their respective data types.
-While horse power attrubute should be numeric type but it is displayed as factor becuase it has some missing values.

Answer 5:
- By observing scatterplot with each and every attribute in data set following these commands
plot(autodata$cylinders,autodata$mpg)
plot(autodata$displacement,autodata$mpg)
plot(autodata$horsepower,autodata$mpg)
plot(autodata$weight,autodata$mpg)
plot(autodata$acceleration,autodata$mpg)
plot(autodata$year,autodata$mpg)

By observing linearity between different attributes and mpg I found out that displacement, horsepower, weight and acceleration are lineary related with mpg

Answer 7:
Reaching to conclusion from 5th point:
*)displacement
*)horsepower
*)weight 
*)acceleration
are most fitting attributes to predict mpg

Answer 12:
autodata_new_test_prediction <- knn(train = autodata_new_train, test = autodata_new_test,cl = autodata_new_train_lables, k = 10)
as per output of prediction it can be concluded that 10 neighbouring data point are sufficient to calculate prediction from test data.
To test errors I used Cross Table structure from general models library.
CrossTable(x = autodata_new_test_lables, y = autodata_new_test_prediction,prop.chisq=FALSE)
