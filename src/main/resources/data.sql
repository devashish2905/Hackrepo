insert into guser
select seq_guser_id.nextval guser_id,
'Rahul' first_name,
'rahhadbe' username,
'Hadbe' last_name,
'rhadbe@gmail.com' email,
'123456' global_identification_no,
sysdate create_date,
null last_modified_date,
1 is_active,
1 is_admin
from dual;
 
insert into guser
select seq_guser_id.nextval guser_id,
'Jitenkumar' first_name,
'jiteng' username,
'Gupta' last_name,
'jgupta@gmail.com' email,
'1234567' global_identification_no,
sysdate create_date,
null last_modified_date,
1 is_active,
0 is_admin
from dual;
 
insert into guser
select seq_guser_id.nextval guser_id,
'Sachin' first_name,
'saching' username,
'Mohite' last_name,
'saching@gmail.com' email,
'12345678' global_identification_no,
sysdate create_date,
null last_modified_date,
1 is_active,
0 is_admin
from dual;
 
 
insert into gactivity
select seq_gactivity_id.nextval gactivity_id,
'Steps Count' gactivity_name,
'Log Activity - Steps Count' gactivity_desc,
100 gactivity_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
 
insert into gactivity
select seq_gactivity_id.nextval gactivity_id,
'Cycling' gactivity_name,
'Log Activity - Cycling' gactivity_desc,
100 gactivity_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gactivity
select seq_gactivity_id.nextval gactivity_id,
'Plantation' gactivity_name,
'Plantation' gactivity_desc,
200 gactivity_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gactivity
select seq_gactivity_id.nextval gactivity_id,
'Using Public Transport' gactivity_name,
'Using Public Transport' gactivity_desc,
100 gactivity_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gactivity
select seq_gactivity_id.nextval gactivity_id,
'Clean City' gactivity_name,
'Clean City' gactivity_desc,
50 gactivity_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gactivity
select seq_gactivity_id.nextval gactivity_id,
'Shram-Daan' gactivity_name,
'Shram-Daan' gactivity_desc,
300 gactivity_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gcurrency
select seq_gcurrency_id.nextval gcurrency_id,
'INR' currency_code,
'Indian Rupee' currency_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
 
insert into gcurrency
select seq_gcurrency_id.nextval gcurrency_id,
'USD' currency_code,
'US Dollar' currency_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gcurrency
select seq_gcurrency_id.nextval gcurrency_id,
'EUR' currency_code,
'Euro' currency_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into gcurrency
select seq_gcurrency_id.nextval gcurrency_id,
'GBP' currency_code,
'Pound Sterling' currency_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Clean City' green_init_name,
'Clean City' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Sea Pollution' green_init_name,
'Sea Pollution' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Plantation/Reforestation' green_init_name,
'Plantation/Reforestation' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Safe Drinking Water' green_init_name,
'Safe Drinking Water' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Rain Water Harvesting' green_init_name,
'Rain Water Harvesting' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Lake Cleaning' green_init_name,
'Lake Cleaning' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into green_initiative
select seq_green_init_id.nextval green_init_id,
'Clean and Connect Rivers' green_init_name,
'Clean and Connect Rivers' green_init_desc,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
 
insert into greward
select
seq_greward_id.nextval greward_id,
'Plant Saplings' greward_name,
'Plant Saplings' greward_desc,
200 min_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
insert into greward
select
seq_greward_id.nextval greward_id,
'Paper Bags' greward_name,
'Paper Bags' greward_desc,
500 min_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
 
insert into greward
select
seq_greward_id.nextval greward_id,
'Swachh(Bio-Degradable Bags)' greward_name,
'Swachh(Bio-Degradable Bags)' greward_desc,
800 min_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;
 
 
insert into greward
select
seq_greward_id.nextval greward_id,
'Bicycle' greward_name,
'Bicycle' greward_desc,
1500 min_point,
sysdate create_date,
null last_modified_date,
1 is_active
from dual;

insert into lnk_guser_gpoint
select seq_lnk_gu_gpt.nextval lnk_guser_point_id,
2 guser_id,
1 gactivity_id,
100 gpoint,
null gchallenge_id,
null gcomment,
sysdate create_date,
sysdate last_modified_date,
1 is_active,
1 is_approved
from dual;
 
insert into lnk_guser_gpoint
select seq_lnk_gu_gpt.nextval lnk_guser_point_id,
2 guser_id,
2 gactivity_id,
100 gpoint,
null gchallenge_id,
null gcomment,
sysdate create_date,
sysdate last_modified_date,
1 is_active,
1 is_approved
from dual;
 
insert into lnk_guser_gpoint
select seq_lnk_gu_gpt.nextval lnk_guser_point_id,
3 guser_id,
1 gactivity_id,
100 gpoint,
null gchallenge_id,
null gcomment,
sysdate create_date,
sysdate last_modified_date,
1 is_active,
1 is_approved
from dual;
 
insert into lnk_guser_gpoint
select seq_lnk_gu_gpt.nextval lnk_guser_point_id,
3 guser_id,
4 gactivity_id,
100 gpoint,
null gchallenge_id,
null gcomment,
sysdate create_date,
sysdate last_modified_date,
1 is_active,
1 is_approved
from dual;
 
insert into lnk_guser_gpoint
select seq_lnk_gu_gpt.nextval lnk_guser_point_id,
3 guser_id,
3 gactivity_id,
200 gpoint,
null gchallenge_id,
null gcomment,
sysdate create_date,
sysdate last_modified_date,
1 is_active,
1 is_approved
from dual;
 
 
insert into lnk_guser_gpoint
select seq_lnk_gu_gpt.nextval lnk_guser_point_id,
2 guser_id,
6 gactivity_id,
300 gpoint,
null gchallenge_id,
null gcomment,
sysdate create_date,
sysdate last_modified_date,
1 is_active,
1 is_approved
from dual;
