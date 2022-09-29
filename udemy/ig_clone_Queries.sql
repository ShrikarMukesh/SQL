-- 1. find 5 oldest users
select * from users
order by users.created_at limit 5;

-- 2. What day of the week do most users register on?
-- Most Popular registration date
select dayname(created_at) as dayoftheweek,
count(*) as total
from users
group by dayoftheweek
order by total desc
limit 2;

-- 3. Identify Inactive Users (users with no photos)
-- select users.id, users.username,photos.image_url
select username, users.id
from users
Left Join photos 
     ON users.id = photos.user_id
where photos.id IS NULL;

-- 4. Identify most popular photo (and user who created it)
select 
   users.username , photos.id, photos.image_url,
   count(*) as total
from photos 
INNER JOIN likes
ON likes.photo_id = photos.id
inner join users
on photos.user_id = users.id
group by photos.id
order by total desc limit 1;

-- 5. Calculate average number of photos per user
SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 

-- 6. Find the five most popular hashtags
SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 

-- 7. Finding the bots - the users who have liked every single photo
SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 
   
