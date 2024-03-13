UPDATE category
SET description = 
    CASE categoryid
        WHEN 136 THEN 'https://www.myjoyonline.com/feed/'
        WHEN 137 THEN 'https://www.peacefmonline.com/pages/news.xml'
        WHEN 157 THEN 'https://www.gbcghanaonline.com/feed/'
        WHEN 158 THEN 'https://gna.org.gh/feed/'
        WHEN 161 THEN 'https://www.happyghana.com/feed/'
        WHEN 164 THEN 'https://thefindernews.com/feed/'
        WHEN 167 THEN 'https://dailystatesman.com.gh/feed/'
        WHEN 168 THEN 'https://starrfm.com.gh/feed/'
    END
WHERE categoryid IN (136, 137, 157, 158, 161, 164, 167, 168);

"https://www.myjoyonline.com/feed/[[news,https://www.myjoyonline.com/news/politics/feed[[politics,https://www.myjoyonline.com/sports/feed/[[sports,https://www.myjoyonline.com/entertainment/feed/[[entertainment"
"https://gna.org.gh/feed/[[news,https://gna.org.gh/politics/feed/[[politics,https://gna.org.gh/sports/feed/[[sports,https://gna.org.gh/entertainment/feed/[[entertainment"
"https://www.peacefmonline.com/pages/news.xml[[news,https://www.peacefmonline.com/pages/politics/rss.xml[[politics,https://www.peacefmonline.com/pages/sports/rss.xml[[sports,https://www.peacefmonline.com/pages/business/rss.xml[[business,https://www.peacefmonline.com/pages/showbiz/rss.xml[[entertainment"
"https://www.gbcghanaonline.com/feed/[[news,https://www.gbcghanaonline.com/category/sport/feed/[[https://www.gbcghanaonline.com/category/entertainment/feed/[[entertainment"
"https://www.happyghana.com/feed/[[news,https://www.happyghana.com/category/politics/feed/[[politics,https://www.happyghana.com/category/entertainment/feed/[[entertainment,https://www.happyghana.com/category/business/feed/[[business,https://www.happyghana.com/category/sports/feed/[[sports"
"https://dailystatesman.com.gh/feed/[[news,https://dailystatesman.com.gh/category/education/feed/[[education"
"https://starrfm.com.gh/feed/[[news,https://starrfm.com.gh/category/business/feed/[[business,https://starrfm.com.gh/category/politics/feed/[[politics,https://starrfm.com.gh/category/entertainment/feed/[[entertainment,https://starrfm.com.gh/category/sports/feed/[[sports"


UPDATE category
SET description = 
    CASE categoryid
        WHEN 136 THEN 'https://www.myjoyonline.com/feed/[[news,https://www.myjoyonline.com/news/politics/feed[[politics,https://www.myjoyonline.com/sports/feed/[[sports,https://www.myjoyonline.com/entertainment/feed/[[entertainment'
        WHEN 137 THEN 'https://www.peacefmonline.com/pages/news.xml[[news,https://www.peacefmonline.com/pages/politics/rss.xml[[politics,https://www.peacefmonline.com/pages/sports/rss.xml[[sports,https://www.peacefmonline.com/pages/business/rss.xml[[business,https://www.peacefmonline.com/pages/showbiz/rss.xml[[entertainment'
        WHEN 157 THEN 'https://www.gbcghanaonline.com/feed/[[news,https://www.gbcghanaonline.com/category/sport/feed/[[https://www.gbcghanaonline.com/category/entertainment/feed/[[entertainment'
        WHEN 158 THEN 'https://gna.org.gh/feed/[[news,https://gna.org.gh/politics/feed/[[politics,https://gna.org.gh/sports/feed/[[sports,https://gna.org.gh/entertainment/feed/[[entertainment'
        WHEN 161 THEN 'https://www.happyghana.com/feed/[[news,https://www.happyghana.com/category/politics/feed/[[politics,https://www.happyghana.com/category/entertainment/feed/[[entertainment,https://www.happyghana.com/category/business/feed/[[business,https://www.happyghana.com/category/sports/feed/[[sports'
        WHEN 164 THEN 'https://thefindernews.com/feed/'
        WHEN 167 THEN 'https://dailystatesman.com.gh/feed/[[news,https://dailystatesman.com.gh/category/education/feed/[[education'
        WHEN 168 THEN 'https://starrfm.com.gh/feed/[[news,https://starrfm.com.gh/category/business/feed/[[business,https://starrfm.com.gh/category/politics/feed/[[politics,https://starrfm.com.gh/category/entertainment/feed/[[entertainment,https://starrfm.com.gh/category/sports/feed/[[sports'
    END
WHERE categoryid IN (136, 137, 157, 158, 161, 164, 167, 168);