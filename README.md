# Sentiment
Based on the code of the blog post: http://fjavieralba.com/basic-sentiment-analysis-with-python.html and included a greater list of positive and negative words
Also added support for stdin to convert into a MapReduce job

## Installation

```
sudo apt-get install python-pip
sudo pip install nltk
sudo pip install pyyaml
./configure.py
```

If the `configure.py` script fails, fire up `python` from a console and type:

```python
import nltk
nltk.download('punkt')
nltk.download('maxent_treebank_pos_tagger')
```

## Usage

	cat tweets.csv | ./basic_sentiment_analysis.py | sort | ./top-sent.pl

## Input (basic_sentiment_analysis.py)
	tweets with tweets.csv format

## Output (basic_sentiment_analysis.py)
	
	Format: CSV data with:	[DATE YYYY-MM-DD],[Tweet Geo Location],[# Retweets],[Tweet text],[Sentiment value]

	- Sentiment value > 0.0 - Positive comment
	- Sentiment value < 0.0 - Negative comment

## Input (top-sent.pl)
	*Sorted* output of basic_sentiment_analysis.py (see above)

## Output (top-sent.pl)

	Format: Same as basic_sentiment_analysis.py 	
	
	Returns the top Sentiment tweet per day per Geo Location.


