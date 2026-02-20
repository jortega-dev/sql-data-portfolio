CREATE DATABASE chip_plant_analysis;
USE chip_plant_analysis;

CREATE TABLE employee_performance (
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR(60) NOT NULL,
    dapartment VARCHAR(60) NOT NULL,
    shift VARCHAR(40) NOT NULL,		-- day / swing/ night
    years_in_company DECIMAL(3,1) NOT NULL,		-- e.g., 1.5
    trainining_level VARCHAR(20) NOT NULL,		-- low / medium / high
    recognition_12mon INT NOT NULL,		-- count of recognitions last 12 months
    promotion_path VARCHAR(20) NOT NULL,		-- clear / limited / none
    bonus_last_12mon INT NOT NULL, 		-- amount in dollars		
    overtime_hours_12mon INT NOT NULL,
    performance_rating INT NOT NULL,		-- 1-5
    attendance_warning_12mo INT NOT NULL,		-- count
    job_satisfaction INT NOT NULL, 		-- 1-10
    commute_minutes INT NOT NULL, 
    turnover_risk VARCHAR(10) NOT NULL		-- low / medium / high (simulated label)
    );
    
    
INSERT INTO employee_performance VALUES
	(1,'Ana Lopez','Assembly','Day',3.2,'High',4,'Clear',1200,40,4,0,8,20,'Low'),
	(2,'Miguel Rivera','Assembly','Night',0.8,'Low',0,'None',0,220,3,2,4,55,'High'),
	(3,'Sara Kim','Quality','Swing',1.5,'Medium',1,'Limited',300,80,4,0,7,35,'Medium'),
	(4,'David Chen','Assembly','Night',2.0,'Low',0,'Limited',200,180,3,1,5,45,'High'),
	(5,'Luis Martinez','Packaging','Day',4.8,'High',5,'Clear',1500,30,5,0,9,25,'Low'),
	(6,'Emily Johnson','Quality','Night',1.1,'Low',0,'None',0,160,2,2,3,60,'High'),
	(7,'Carlos Gomez','Maintenance','Swing',6.5,'High',3,'Clear',1000,90,4,0,8,40,'Low'),
	(8,'Jasmine Patel','Assembly','Swing',0.6,'Low',0,'None',0,140,2,1,4,50,'High'),
	(9,'Noah Williams','Packaging','Night',2.7,'Medium',1,'Limited',400,120,3,1,6,30,'Medium'),
	(10,'Mia Hernandez','Assembly','Day',1.9,'Medium',2,'Limited',500,60,4,0,7,25,'Medium'),
	(11,'Ethan Brown','Quality','Day',5.3,'High',4,'Clear',1300,40,5,0,9,15,'Low'),
	(12,'Sofia Torres','Assembly','Night',1.2,'Low',0,'None',0,200,2,2,3,70,'High');
    
    SELECT employee_name, dapartment, shift, years_in_company, trainining_level, bonus_last_12mon, overtime_hours_12mon, job_satisfaction
    FROM employee_performance
    WHERE turnover_risk = 'high';
    
    SELECT employee_name, shift, turnover_risk, job_satisfaction, overtime_hours_12mon
    FROM employee_performance
    WHERE shift = 'night' AND turnover_risk = 'high';
    
    SELECT employee_name, trainining_level, promotion_path, turnover_risk
    FROM employee_performance
    WHERE trainining_level = 'low' OR promotion_path = 'none';
    
    SELECT employee_name, shift, recognition_12mon, bonus_last_12mon, turnover_risk
    FROM employee_performance 
    WHERE turnover_risk = 'high'
    AND recognition_12mon = 0
    AND bonus_last_12mon = 0;
    
    SELECT employee_name shift, overtime_hours_12mon, job_satisfaction, turnover_risk
    FROM employee_performance
    WHERE turnover_risk = 'high'
    AND overtime_hours_12mon >= 160;
    
    SELECT employee_name, performance_rating, overtime_hours_12mon, shift, turnover_risk
    FROM employee_performance 
    WHERE performance_rating >= 4 AND turnover_risk <> 'low';
    


    
    

    
    
    