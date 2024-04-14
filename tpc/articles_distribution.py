import pandas
articles = pandas.read_csv(r'C:\\Users\\act1780\\Documents\\GitHub\\andreacortellari.github.io\\tpc\\Sources Database\\articles_view.csv', 
                           sep='\\t', usecols=['publication_title', 'issue_date', 'article_id'])
pivoted_articles = articles.pivot_table(index=['publication_title'], columns=['issue_date'], aggfunc='count')
pivoted_articles.to_csv('tpc\Data Jobs\Articles Distribution.csv')