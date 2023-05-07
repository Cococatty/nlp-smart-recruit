rm -rf smart_recruit
pip3 install virtualenv
# create virtual environment for the project
virtualenv smart_recruit
cp /content/pyvenv.cfg ./smart_recruit/
# install basic required dependencies
/content/smart_recruit/bin/activate
# /content/smart_recruit/bin/python3 -m pip install -r '/content/requirements.txt'
/content/smart_recruit/bin/python3 -m pip install nltk wordcloud scikit-learn seaborn spacy
/content/smart_recruit/bin/python3 -m spacy download en_core_web_md
# output the dependencies version info for future use/faster installation
# /content/smart_recruit/bin/python3 -m pip freeze > /content/requirements.txt
