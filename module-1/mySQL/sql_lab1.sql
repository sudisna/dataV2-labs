#1. What are the different genres?
Select DISTINCT prime_genre from app;
#2. Which is the genre with the most apps rated?
Select prime_genre, rating_count_tot 
FROM app
ORDER BY rating_count_tot desc 
LIMIT 1;
#3. Which is the genre with most apps?
SELECT 
    prime_genre, COUNT(*) id
FROM
    app
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;
#4. Which is the one with least?
SELECT 
    prime_genre, COUNT(*) id
FROM
    app
GROUP BY prime_genre
ORDER BY COUNT(*) asc
LIMIT 1;
#5. Find the top 10 apps most rated.
Select track_name, rating_count_tot 
FROM app
ORDER BY rating_count_tot desc 
LIMIT 10;
#6. Find the top 10 apps best rated by users
Select track_name, user_rating 
FROM app
ORDER BY user_rating desc 
LIMIT 10;
#7. Take a look at the data you retrieved in question 5. Give some insights.
 # first two are the social networking app and that makes more rating in total
 # The other app who have higher rating , are they are free apps in the mobile so they eventually get more rating
 #8. Take a look at the data you retrieved in question 6. Give some insights.
  # Sudoku seems to be a popular game in terms of user rating and the most with high ratings are actually utilities app
 # For example TurboScan, Learn to speak spanish, Flashlight or suduko , they are not social networking sites or heavy android games
# 9. Now compare the data from questions 5 and 6. What do you see?
#As mentioned above both of the data set, we see while the rating_count are more for social networking apps and heavy mobile games but 
# the user_rating have higher ratings for utilities app and small games which are more for knowledge and are paid maybe.
#10. How could you take the top 3 regarding both user ratings and number of votes?
Select track_name, rating_count_tot, user_rating 
FROM app
ORDER BY rating_count_tot desc , user_rating desc
LIMIT 3;
#11. Do people care about the price of an app? 
select price, track_name, user_rating From app 
ORDER BY price DESC
LIMIT 10;
# The price of the app does not influence the app rating