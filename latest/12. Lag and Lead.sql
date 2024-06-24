/* Implement lag() and lead() */

use trendytech;

select * , lag(max_temp) OVER(order by temp_date) as previous_max_temp from temperature;

select * , lead(max_temp) OVER(order by temp_date) as next_max_temp from temperature;






