* Finding the crime in crime_scene_report

SELECT 
    *
        FROM Crime_scene_report
            WHERE date = '20180115'
            AND city = 'SQL City'
;


* Finding the First witness and his/her interview transcript

SELECT 
    name, transcript 
        FROM person
            INNER JOIN interview
            ON id = person_id
                WHERE address_street_name = "Northwestern Dr"
                ORDER BY address_number desc
                LIMIT 1
;


* Finding the Second witness and his/her interview transcript

SELECT 
    name, transcript 
        FROM person
            INNER JOIN interview
            ON id = person_id
                WHERE address_street_name = "Franklin Ave"
                    AND name LIKE "Annabel%"
;


* Finding the person with Get Fit Now Gold membership

SELECT 
    membership_id, check_in_date, person_id, name, membership_status   
        FROM get_fit_now_member
            INNER JOIN get_fit_now_check_in
            ON id = membership_id
                WHERE membership_status = "gold"
                AND membership_id LIKE "48Z%"
;


* Finding the KILLER 

SELECT 
    person.id, name, plate_number 
        FROM person
            JOIN Drivers_license
            ON person.license_id = Drivers_license.id
                WHERE name IN ("Joe Germuska", "Jeremy Bowers")
                AND plate_number LIKE "%H42W%"
;


* Finding the MASTERMIND

SELECT 
    * 
        FROM interview
            WHERE person_id = 67318
;



 SELECT 
     DISTINCT person.name, person.id, person.license_id
        FROM drivers_license 
            INNER JOIN person  
            ON Drivers_license.id = person.license_id 
                INNER JOIN facebook_event_checkin 
                ON person.id =  facebook_event_checkin.person_id
                    WHERE   gender = 'female' 
                    AND hair_color = 'red'
                    AND car_make = 'Tesla'
                    AND car_model ='Model S' 
                    AND height Between 65 AND 67
;
