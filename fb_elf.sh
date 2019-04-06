#!/bin/bash
paste <(echo \
"player_name            
avg_loss_first_60       
avg_loss_second_60      
avg_loss_third_60       
matching_first_60       
matching_second_60      
matching_third_60       
almost_matching_first_60 
almost_matching_second_60
almost_matching_third_60 
largest_loss            
bad_moves               
very_bad_moves          
first_bad_move          
var_loss"
) \
<(q -Hd "," '
select 
b_avg_loss_first_60,
b_avg_loss_second_60,
b_avg_loss_third_60,
b_matching_first_60,
b_matching_second_60,
b_matching_third_60,
b_almost_matching_first_60,
b_almost_matching_second_60,
b_almost_matching_third_60,
b_largest_loss,
b_bad_moves,
b_very_bad_moves,
b_first_bad_move
from gogod_commentary_analysis.csv
where date like "2018%" and b_player_name="Iyama Yuta"
union
select
w_avg_loss_first_60,
w_avg_loss_second_60,
w_avg_loss_third_60,
w_matching_first_60,
w_matching_second_60,
w_matching_third_60,
w_almost_matching_first_60,
w_almost_matching_second_60,
w_almost_matching_third_60,
w_largest_loss,
w_bad_moves,
w_very_bad_moves,
w_first_bad_move
from gogod_commentary_analysis.csv
where date like "2018%" and w_player_name="Iyama Yuta"' |
q -d "," 'select round(avg(c1),5),round(avg(c2),5),round(avg(c3),5),round(avg(c4),4),round(avg(c5),4),round(avg(c6),4),round(avg(c7),4),round(avg(c8),4),round(avg(c9),4),round(avg(c10),4),round(avg(c11),5),round(avg(c12),5),round(avg(c13),2) from -' |
sed 's/^/Iyama Yuta,/'|tr ',' '\n') \
<(q -Hd "," '
select 
b_avg_loss_first_60,
b_avg_loss_second_60,
b_avg_loss_third_60,
b_matching_first_60,
b_matching_second_60,
b_matching_third_60,
b_almost_matching_first_60,
b_almost_matching_second_60,
b_almost_matching_third_60,
b_largest_loss,
b_bad_moves,
b_very_bad_moves,
b_first_bad_move
from gogod_commentary_analysis.csv
where date like "2018%" and b_player_name="Jiang Weijie"
union
select
w_avg_loss_first_60,
w_avg_loss_second_60,
w_avg_loss_third_60,
w_matching_first_60,
w_matching_second_60,
w_matching_third_60,
w_almost_matching_first_60,
w_almost_matching_second_60,
w_almost_matching_third_60,
w_largest_loss,
w_bad_moves,
w_very_bad_moves,
w_first_bad_move
from gogod_commentary_analysis.csv
where date like "2018%" and w_player_name="Jiang Weijie"' |
q -d "," 'select round(avg(c1),5),round(avg(c2),5),round(avg(c3),5),round(avg(c4),4),round(avg(c5),4),round(avg(c6),4),round(avg(c7),4),round(avg(c8),4),round(avg(c9),4),round(avg(c10),4),round(avg(c11),5),round(avg(c12),5),round(avg(c13),2) from -' |
sed 's/^/Jiang Weijie,/'|tr ',' '\n')
