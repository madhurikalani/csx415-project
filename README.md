# AdFraud_Click_Detection
## 1	Business Problem Statement

Advertisement click fraud is very common among companies who want to direct traffic to their websites or mobile apps. Most companies pay advertisers on per click basis which can be a costly affair in a situation where it is difficult to distinguish between legitimate clicks from fraudalent ones. Companies have deviced an approach to block IP addresses which produce lot of clicks but that was not sufficient to solve this problem. However, if we build a model we can predict whether a user will actually download an app after clicking any adverstisement or not.

In this project, TData (big data services provider) covers 70% of active mobile devices and handles 3 billion ad-clicks per day, of which over 90% are fraudulent. The team would now like to build a model which will help them to predict whether the user will download the app or not. 

## 2	Project Objectives

1.	Build a model to predict whether the user will download the mobile app after clicking the advertisement. The company has provided a generous dataset covering 200 million clicks in 4 days. The dataset is quite huge i.e. ~8 GB and 200 million records (train + test) and fits the definition of rare events data where 99.8% records are negative and only 0.2% records are positive. The dataset is interesting and unique because of rare events data/ highly unbalanced classes.

2. The main tasks would be data processing, feature selection, data analysis, model training and selection, model evaluation and predictions.


## 3 Data Objective

The objective is to predict whether a user will download an application after clicking a mobile advertisement.

Looking at the data, it is a classification problem that outputs two classes. 
The training data and test data consists of 184 million and 1.8 million rows respectively. 

## 4 Training Data
Each row of training data contains a click record, with the following features:

1. ip: ip address of click.
2. app: app id for marketing.
3. device: device type id of user mobile phone (e.g., iphone 6 plus, huawei mate 7, etc.)
4. os: os version id of user mobile phone
5. channel: channel id of mobile ad publisher
6. click_time: timestamp of click (UTC)
7. attributed_time: if user download the app for after clicking an ad, this is the time of the app download
8. is_attributed: the target that is to be predicted, indicating the app was downloaded (1= app downloaded, 0= not downloaded)

Please note that ip, app, device, os, and channel are encoded. 

Currently, I am beginning my analysis with 1 million rows of training data.

The test data is similar, with the following
differences:
1. click_id: reference for making predictions
2. is_attributed: not included
