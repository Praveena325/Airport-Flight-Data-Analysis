create database airport_project;
use airport_project;
create table airports(airport_id int,airport_name text,city text,country text,IATA_code varchar(10),latitude float,longitude float,timezone float);
create table flights(flights_id int,airline text,origin_airport varchar(10),destination_airport varchar(10),departure_time datetime,duration int,distance float,price float,status text);select * from airport_project.flight;
        ### show tables for flight ###
select * from airport_project.flight;
        ### show tables for airport ###
select * from airport_project.airport;
        ### total flights ###
select count(*) as total_flights from flight;
         ### total airports ###
select count(*) from airport;
        ### unique airlines ###
SELECT DISTINCT airline FROM flight;
        ### flights by status ###
select status,count(*) as total from flight group by status;
           ### flights from specific airport ###
select * from flight where origin_airport= 'XJO';
          ### add city info to flight ###          
select f.flight_id, a.city from flight f join airport a on f.origin_airport = a.IATA_code;
select f.flight_id, a.city from flight f join airport a on f.destination_airport = a.IATA_code;
           ### uses 2 joins ###
select f.flight_id, a1.city as origin , a2.city as destination from flight f join airport a1 on f.origin_airport = a1.IATA_code join airport a2 on f.destination_airport = a2.IATA_code;
            ### top airport ###
select origin_airport, count(*) as total from flight group by origin_airport order by total desc;
            ### average price airline ###
select airline, avg(price) from flight group by airline;
         ### total revenue ###
select airline, sum(price) from flight group by airline;
      ### top 5 expensive flight ###
select * from flight order by price desc limit 5;
       ### most frequent routes ###
select origin_airport, destination_airport,count(*) from flight group by origin_airport,destination_airport order by count(*) desc;
       ### longest flight ###
select * from flight order by distance desc limit 5;
       ### average duration ###
select avg(duration) from flight;
        ### above average duration ###
select * from flight where duration > (select avg(duration) from flight);
        ### rank airlines ###
select airline, rank() over (order by count(*) desc) as ranks from flight group by airline;  
      ### top revenue airline ###
select airline, sum(price) as revenue from flight group by airline order by revenue desc limit 3;
        ### delay percentage ###
select sum(case when status = 'delayed' then 1 else 0 end)*100.0/count(*) as delay_percent from flight;
         ### same country flights ###
select f.flight_id from flight f join  airport a1 on f.origin_airport = a1.IATA_code join airport a2 on f.destination_airport = a2.IATA_code where a1.country = a2.country;
         ### most active airport ###
select origin_airport, count(*) as flights from flight group by origin_airport order by flights desc limit 3;         
      
      

