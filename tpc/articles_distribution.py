{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 3,
   "metadata": {},
   "outputs": [],
   "source": [
    "import pandas"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "metadata": {},
   "outputs": [],
   "source": [
    "articles = pandas.read_csv(r'C:\\Users\\act1780\\Documents\\GitHub\\andreacortellari.github.io\\tpc\\Sources Database\\articles_view.csv', \n",
    "                           sep='\\t', usecols=['publication_title', 'issue_date', 'article_id'])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "metadata": {},
   "outputs": [],
   "source": [
    "pivoted_articles = articles.pivot_table(index=['publication_title'], columns=['issue_date'], aggfunc='count')"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "MyPetProject",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.8"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}
