# About this Project
## Changes to Given Requirement
- "description" is used as the name for the column that stores job/resume text instead of using "text".
- given this project was developed on Colab, the primary working directory is named "content" please change it correspondingly if desired


This project aims to extract job skills from ***job descriptions*** by using a combination of natural language processing (NLP) techniques and machine learning models. Here is a high-level overview of the steps performed:

1. Data Collection: Collect job descriptions from various Kaggle datasets
2. Data Preprocessing: Clean and preprocess the collected data to remove irrelevant information and noise, such as header and footer, stop words, and punctuation. Tokenize the text into words or phrases
3. Training Data Preparation: Create a training dataset by manually labeling the job skills in a few samples of job descriptions. Use this dataset to train a supervised machine learning model to recognize job skills in text.


# Running this Project
## Configurations Data
The setup is stored within data/configs.yaml file
- data_path: the default directory path for data
- data_file: the default path for the source jobs data
- spacy_model: the Spacy NLP model name, more models can be found at https://spacy.io/models/en
- stopwords_code: the stopword language, this should be the same as the languages of jobs to be analysed in this project

 
## Running outside of Colab
### Create virtual environment
```
!rm -rf smart_recruit
!pip3 install virtualenv
# create virtual environment for the project
!virtualenv smart_recruit
# install basic required dependencies
!source /content/smart_recruit/bin/activate; pip3 install nltk wordcloud scikit-learn seaborn; python3 -m spacy download en_core_web_md; pip3 freeze;
!cp pyvenv.cfg ./smart_recruit/
# export libraries and versions once it's all confirmed
```
### Run the rest of the Jupyter Notebook

## Running on Colab
### Create virtual environment
```!sh '/content/drive/MyDrive/prep_env.sh'```

### Run the rest of the Jupyter Notebook


# Outstanding Agendas
- Formatting. Due to the limitation of IDE, Jupyter Notebook can't be formated fully (such as cutting line at 120th characters).
- Depends on the project's needs, the relevant code would be developed and scripted in versioned manner; on the other hand, the recommended development approach is Object-Orientated-Programming.
- Add more unit tests
- In real-life development, Model Training, Model Evaluation and Model Deployment are also required.
