# Decision-Tree-Model-on-ReadingSkills-Dataset
This repository contains a Decision Tree model using the readingSkills dataset to predict whether a sample is a native speaker based on features like age, shoe size, and score. It includes the implementation using both the party and rpart packages in R, with performance evaluation based on misclassification error.


## Overview
This repository demonstrates the implementation of a Decision Tree model using the `readingSkills` dataset, an in-built dataset in the `party` package. The goal of this project is to predict whether a sample is a native speaker based on three features: age, shoe size, and reading score.

## Key Features
- **Two Decision Tree Implementations:**
  - The first model is built using the `ctree` function from the `party` package.
  - The second model is created using the `rpart` package for comparison.
  
- **Performance Evaluation:**
  - Misclassification error for both training and test data is calculated to evaluate model performance.

## Dataset Information
The dataset used in this project is the `readingSkills` dataset, which is part of the `party` package in R. It contains the following columns:
- **nativeSpeaker**: Categorical target variable (yes/no)
- **age**: Age of the subject
- **shoeSize**: Shoe size of the subject
- **score**: Reading score of the subject

## Instructions for Running the Code
1. Clone the repository.
2. Install the necessary packages:
   - `party`
   - `rpart`
   - `rpart.plot`
3. Run the provided R scripts:
   - `decision_tree_party.R` for the `party` package implementation.
   - `decision_tree_rpart.R` for the `rpart` package implementation.

## Results
Both models provide predictions on the test data, and their accuracy is evaluated by calculating the misclassification error. This can be found within the respective scripts.

## How to Contribute
Feel free to fork the repository, make changes, and create a pull request if you have suggestions or improvements.
