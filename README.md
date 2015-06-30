# Sentiment
Based on the code of the blog post: http://fjavieralba.com/basic-sentiment-analysis-with-python.html and included a greater list of positive and negative words
Also added support for stdin to convert into a MapReduce job

## Installation

- sudo apt-get install python-pip
- sudo pip install nltk
- sudo pip install pyyaml

## Configuration

- python 
	- (inside python)
	- import nltk
	- nltk.download('all')

## Usage

	echo "This is the best restaurant ever! We are so glad we came" | ./basic_sentiment_analysis.py

## Result

	- Number > 0.0 - Positive comment
	- Number < 0.0 - Negative comment
