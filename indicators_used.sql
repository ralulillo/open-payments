-- -----------------------------------------------------
-- Rellena indicators.type_analysis
-- -----------------------------------------------------

-- Año 2013
INSERT INTO indicators.type_analysis (year, type_of_recipient, form_of_payment, nature_of_payment, num, value_sum)
SELECT '2013', type_of_recipient, form_of_payment, nature_of_payment, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_details_2013
GROUP BY type_of_recipient, form_of_payment, nature_of_payment;

-- Año 2014
INSERT INTO indicators.type_analysis (year, type_of_recipient, form_of_payment, nature_of_payment, num, value_sum)
SELECT '2014', type_of_recipient, form_of_payment, nature_of_payment, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_details_2014
GROUP BY type_of_recipient, form_of_payment, nature_of_payment;

-- Año 2015
INSERT INTO indicators.type_analysis (year, type_of_recipient, form_of_payment, nature_of_payment, num, value_sum)
SELECT '2015', type_of_recipient, form_of_payment, nature_of_payment, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_details_2015
GROUP BY type_of_recipient, form_of_payment, nature_of_payment;

-- Año 2016
INSERT INTO indicators.type_analysis (year, type_of_recipient, form_of_payment, nature_of_payment, num, value_sum)
SELECT '2016', type_of_recipient, form_of_payment, nature_of_payment, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_details_2016
GROUP BY type_of_recipient, form_of_payment, nature_of_payment;

-- Año 2017
INSERT INTO indicators.type_analysis (year, type_of_recipient, form_of_payment, nature_of_payment, num, value_sum)
SELECT '2017', type_of_recipient, form_of_payment, nature_of_payment, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_details_2017
GROUP BY type_of_recipient, form_of_payment, nature_of_payment;


-- -----------------------------------------------------
-- Rellena indicators.location_analysis
-- -----------------------------------------------------

-- Año 2013
INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2013', 'H', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_hospital_2013
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2013', 'N', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_noncovered_2013
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2013', 'P', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_physician_2013
GROUP BY recipient_country, recipient_state;

-- Año 2014
INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2014', 'H', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_hospital_2014
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2014', 'N', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_noncovered_2014
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2014', 'P', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_physician_2014
GROUP BY recipient_country, recipient_state;

-- Año 2015
INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2015', 'H', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_hospital_2015
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2015', 'N', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_noncovered_2015
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2015', 'P', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_physician_2015
GROUP BY recipient_country, recipient_state;

-- Año 2016
INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2016', 'H', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_hospital_2016
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2016', 'N', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_noncovered_2016
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2016', 'P', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_physician_2016
GROUP BY recipient_country, recipient_state;

-- Año 2017
INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2017', 'H', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_hospital_2017
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2017', 'N', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_noncovered_2017
GROUP BY recipient_country, recipient_state;

INSERT INTO indicators.location_analysis (year, type_of_recipient, recipient_country, recipient_state, num, value_sum)
SELECT '2017', 'P', recipient_country, recipient_state, COUNT(*),
    SUM(total_amount_of_payment_usdollars)
FROM open_payments.h_payment_physician_2017
GROUP BY recipient_country, recipient_state;


-- -----------------------------------------------------
-- Rellena indicators.ranking_analysis
-- -----------------------------------------------------

-- Datos hospitales

-- Año 2013
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2013', 'H', h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT teaching_hospital_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_hospital_2013
    GROUP BY teaching_hospital_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_hospital AS h 
ON p.teaching_hospital_id = h.teaching_hospital_id;

-- Año 2014
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2014', 'H', h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT teaching_hospital_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_hospital_2014
    GROUP BY teaching_hospital_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_hospital AS h 
ON p.teaching_hospital_id = h.teaching_hospital_id;

-- Año 2015
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2015', 'H', h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT teaching_hospital_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_hospital_2015
    GROUP BY teaching_hospital_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_hospital AS h 
ON p.teaching_hospital_id = h.teaching_hospital_id;

-- Año 2016
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2016', 'H', h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT teaching_hospital_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_hospital_2016
    GROUP BY teaching_hospital_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_hospital AS h 
ON p.teaching_hospital_id = h.teaching_hospital_id;

-- Año 2017
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2017', 'H', h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT teaching_hospital_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_hospital_2017
    GROUP BY teaching_hospital_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_hospital AS h 
ON p.teaching_hospital_id = h.teaching_hospital_id;

-- Datos entidades no cubiertas

-- Año 2013
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2013', 'N', noncovered_recipient_entity_name as recipient_name, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
FROM open_payments.h_payment_noncovered_2013
GROUP BY noncovered_recipient_entity_name, recipient_country, recipient_state;

-- Año 2014
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2014', 'N', noncovered_recipient_entity_name as recipient_name, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
FROM open_payments.h_payment_noncovered_2014
GROUP BY noncovered_recipient_entity_name, recipient_country, recipient_state;

-- Año 2015
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2015', 'N', noncovered_recipient_entity_name as recipient_name, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
FROM open_payments.h_payment_noncovered_2015
GROUP BY noncovered_recipient_entity_name, recipient_country, recipient_state;

-- Año 2016
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2016', 'N', noncovered_recipient_entity_name as recipient_name, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
FROM open_payments.h_payment_noncovered_2016
GROUP BY noncovered_recipient_entity_name, recipient_country, recipient_state;

-- Año 2017
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2017', 'N', noncovered_recipient_entity_name as recipient_name, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
FROM open_payments.h_payment_noncovered_2017
GROUP BY noncovered_recipient_entity_name, recipient_country, recipient_state;

-- Datos médicos

-- Año 2013
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2013', 'P', IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '', CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'), CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')) AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_physician_2013
    GROUP BY physician_profile_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_physician AS ph 
ON p.physician_profile_id = ph.physician_profile_id;

-- Año 2014
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2014', 'P', IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '', CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'), CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')) AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_physician_2014
    GROUP BY physician_profile_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_physician AS ph 
ON p.physician_profile_id = ph.physician_profile_id;

-- Año 2015
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2015', 'P', IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '', CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'), CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')) AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_physician_2015
    GROUP BY physician_profile_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_physician AS ph 
ON p.physician_profile_id = ph.physician_profile_id;

-- Año 2016
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2016', 'P', IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '', CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'), CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')) AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_physician_2016
    GROUP BY physician_profile_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_physician AS ph 
ON p.physician_profile_id = ph.physician_profile_id;

-- Año 2017
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2017', 'P', IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '', CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'), CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')) AS recipient_name, p.recipient_country, p.recipient_state, num, value_sum
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_physician_2017
    GROUP BY physician_profile_id, recipient_country, recipient_state 
) AS p INNER JOIN open_payments.d_physician AS ph 
ON p.physician_profile_id = ph.physician_profile_id;

-- Datos investigadores

-- Año 2013
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2013', 'I', IF(i.investigator_name_suffix IS NULL OR i.investigator_name_suffix = '', CONCAT(i.investigator_last_name, ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')'), CONCAT(i.investigator_last_name, ' ', i.investigator_name_suffix,  ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')')) AS recipient_name, i.investigator_country, i.investigator_state, num, value_sum
FROM (
    SELECT investigator_profile_id, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_investigator_2013
    GROUP BY investigator_profile_id 
) AS p INNER JOIN open_payments.d_investigator AS i 
ON p.investigator_profile_id = i.investigator_profile_id;

-- Año 2014
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2014', 'I', IF(i.investigator_name_suffix IS NULL OR i.investigator_name_suffix = '', CONCAT(i.investigator_last_name, ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')'), CONCAT(i.investigator_last_name, ' ', i.investigator_name_suffix,  ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')')) AS recipient_name, i.investigator_country, i.investigator_state, num, value_sum
FROM (
    SELECT investigator_profile_id, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_investigator_2014
    GROUP BY investigator_profile_id 
) AS p INNER JOIN open_payments.d_investigator AS i 
ON p.investigator_profile_id = i.investigator_profile_id;

-- Año 2015
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2015', 'I', IF(i.investigator_name_suffix IS NULL OR i.investigator_name_suffix = '', CONCAT(i.investigator_last_name, ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')'), CONCAT(i.investigator_last_name, ' ', i.investigator_name_suffix,  ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')')) AS recipient_name, i.investigator_country, i.investigator_state, num, value_sum
FROM (
    SELECT investigator_profile_id, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_investigator_2015
    GROUP BY investigator_profile_id 
) AS p INNER JOIN open_payments.d_investigator AS i 
ON p.investigator_profile_id = i.investigator_profile_id;

-- Año 2016
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2016', 'I', IF(i.investigator_name_suffix IS NULL OR i.investigator_name_suffix = '', CONCAT(i.investigator_last_name, ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')'), CONCAT(i.investigator_last_name, ' ', i.investigator_name_suffix,  ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')')) AS recipient_name, i.investigator_country, i.investigator_state, num, value_sum
FROM (
    SELECT investigator_profile_id, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_investigator_2016
    GROUP BY investigator_profile_id 
) AS p INNER JOIN open_payments.d_investigator AS i 
ON p.investigator_profile_id = i.investigator_profile_id;

-- Año 2017
INSERT INTO indicators.ranking_analysis (year, type, name, country, state, num, value_sum)
SELECT '2017', 'I', IF(i.investigator_name_suffix IS NULL OR i.investigator_name_suffix = '', CONCAT(i.investigator_last_name, ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')'), CONCAT(i.investigator_last_name, ' ', i.investigator_name_suffix,  ', ', i.investigator_first_name, ' (', i.investigator_profile_id, ')')) AS recipient_name, i.investigator_country, i.investigator_state, num, value_sum
FROM (
    SELECT investigator_profile_id, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum
    FROM open_payments.h_payment_investigator_2017
    GROUP BY investigator_profile_id 
) AS p INNER JOIN open_payments.d_investigator AS i 
ON p.investigator_profile_id = i.investigator_profile_id;


-- -----------------------------------------------------
-- Rellena indicators.third_party_analysis
-- -----------------------------------------------------

-- Datos hospitales

-- Año 2013
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2013', 'H', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_hospital_3p_2013
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2014
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2014', 'H', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_hospital_3p_2014
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2015
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2015', 'H', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_hospital_3p_2015
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2016
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2016', 'H', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_hospital_3p_2016
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2017
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2017', 'H', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_hospital_3p_2017
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Datos médicos

-- Año 2013
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2013', 'P', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_physician_3p_2013
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2014
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2014', 'P', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_physician_3p_2014
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2015
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2015', 'P', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_physician_3p_2015
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2016
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2016', 'P', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_physician_3p_2016
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;

-- Año 2017
INSERT INTO indicators.third_party_analysis (year, type, tp_name, recipient_country, recipient_state, charity_indicator, num, value_sum)
SELECT '2017', 'P', tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity AS charity_indicator, COUNT(*) AS num, SUM(tmp.total_amount_of_payment_usdollars) AS value_sum
FROM (
    SELECT IF(name_of_third_party_entity_receiving_payment = '' OR name_of_third_party_entity_receiving_payment = 'entity', CONCAT(third_party_payment_recipient_indicator, ' (generic)'), name_of_third_party_entity_receiving_payment) AS tp_name, recipient_country, recipient_state, IF(charity_indicator='','no',charity_indicator) AS charity, total_amount_of_payment_usdollars
    FROM open_payments.h_payment_physician_3p_2017
) AS tmp
GROUP BY tmp.tp_name, tmp.recipient_country, tmp.recipient_state, tmp.charity;


-- -----------------------------------------------------
-- Rellena indicators.travel_analysis
-- -----------------------------------------------------

-- Año 2013
INSERT INTO indicators.travel_analysis (year, type_of_recipient, country_of_travel, state_of_travel, city_of_travel, num, value_sum)
SELECT '2013', type_of_recipient, country_of_travel, state_of_travel, city_of_travel, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum 
FROM open_payments.h_payment_travel_2013
GROUP BY type_of_recipient, country_of_travel, state_of_travel, city_of_travel;

-- Año 2014
INSERT INTO indicators.travel_analysis (year, type_of_recipient, country_of_travel, state_of_travel, city_of_travel, num, value_sum)
SELECT '2014', type_of_recipient, country_of_travel, state_of_travel, city_of_travel, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum 
FROM open_payments.h_payment_travel_2014
GROUP BY type_of_recipient, country_of_travel, state_of_travel, city_of_travel;

-- Año 2015
INSERT INTO indicators.travel_analysis (year, type_of_recipient, country_of_travel, state_of_travel, city_of_travel, num, value_sum)
SELECT '2015', type_of_recipient, country_of_travel, state_of_travel, city_of_travel, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum 
FROM open_payments.h_payment_travel_2015
GROUP BY type_of_recipient, country_of_travel, state_of_travel, city_of_travel;

-- Año 2016
INSERT INTO indicators.travel_analysis (year, type_of_recipient, country_of_travel, state_of_travel, city_of_travel, num, value_sum)
SELECT '2016', type_of_recipient, country_of_travel, state_of_travel, city_of_travel, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum 
FROM open_payments.h_payment_travel_2016
GROUP BY type_of_recipient, country_of_travel, state_of_travel, city_of_travel;

-- Año 2017
INSERT INTO indicators.travel_analysis (year, type_of_recipient, country_of_travel, state_of_travel, city_of_travel, num, value_sum)
SELECT '2017', type_of_recipient, country_of_travel, state_of_travel, city_of_travel, COUNT(*) AS num, SUM(total_amount_of_payment_usdollars) AS value_sum 
FROM open_payments.h_payment_travel_2017
GROUP BY type_of_recipient, country_of_travel, state_of_travel, city_of_travel;


-- -----------------------------------------------------
-- Rellena indicators.interest_analysis
-- -----------------------------------------------------

-- Datos médicos con intereses

-- Año 2013
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_invested, sum_payment, p_i_ratio)
SELECT '2013', tmp.physician_profile_id, tmp.recipient_country, tmp.recipient_state, 'yes', tmp.applicable_payer_id, tmp.sum_invested, SUM(plp.total_amount_of_payment_usdollars) AS sum_payment, SUM(plp.total_amount_of_payment_usdollars)/tmp.sum_invested AS p_i_ratio
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, applicable_payer_id, SUM(total_amount_invested_usdollars) AS sum_invested 
    FROM open_payments.h_payment_poi_2013 
    GROUP BY physician_profile_id, applicable_payer_id
) AS tmp INNER JOIN open_payments.h_payment_list_physician_2013 AS plp ON tmp.physician_profile_id = plp.physician_profile_id AND tmp.applicable_payer_id = plp.applicable_payer_id
WHERE tmp.sum_invested IS NOT NULL AND tmp.sum_invested <> '' AND tmp.sum_invested <> 0
GROUP BY tmp.physician_profile_id, tmp.applicable_payer_id;

-- Año 2014
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_invested, sum_payment, p_i_ratio)
SELECT '2014', tmp.physician_profile_id, tmp.recipient_country, tmp.recipient_state, 'yes', tmp.applicable_payer_id, tmp.sum_invested, SUM(plp.total_amount_of_payment_usdollars) AS sum_payment, SUM(plp.total_amount_of_payment_usdollars)/tmp.sum_invested AS p_i_ratio
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, applicable_payer_id, SUM(total_amount_invested_usdollars) AS sum_invested 
    FROM open_payments.h_payment_poi_2014 
    GROUP BY physician_profile_id, applicable_payer_id
) AS tmp INNER JOIN open_payments.h_payment_list_physician_2014 AS plp ON tmp.physician_profile_id = plp.physician_profile_id AND tmp.applicable_payer_id = plp.applicable_payer_id
WHERE tmp.sum_invested IS NOT NULL AND tmp.sum_invested <> '' AND tmp.sum_invested <> 0
GROUP BY tmp.physician_profile_id, tmp.applicable_payer_id;

-- Año 2015
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_invested, sum_payment, p_i_ratio)
SELECT '2015', tmp.physician_profile_id, tmp.recipient_country, tmp.recipient_state, 'yes', tmp.applicable_payer_id, tmp.sum_invested, SUM(plp.total_amount_of_payment_usdollars) AS sum_payment, SUM(plp.total_amount_of_payment_usdollars)/tmp.sum_invested AS p_i_ratio
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, applicable_payer_id, SUM(total_amount_invested_usdollars) AS sum_invested 
    FROM open_payments.h_payment_poi_2015 
    GROUP BY physician_profile_id, applicable_payer_id
) AS tmp INNER JOIN open_payments.h_payment_list_physician_2015 AS plp ON tmp.physician_profile_id = plp.physician_profile_id AND tmp.applicable_payer_id = plp.applicable_payer_id
WHERE tmp.sum_invested IS NOT NULL AND tmp.sum_invested <> '' AND tmp.sum_invested <> 0
GROUP BY tmp.physician_profile_id, tmp.applicable_payer_id;

-- Año 2016
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_invested, sum_payment, p_i_ratio)
SELECT '2016', tmp.physician_profile_id, tmp.recipient_country, tmp.recipient_state, 'yes', tmp.applicable_payer_id, tmp.sum_invested, SUM(plp.total_amount_of_payment_usdollars) AS sum_payment, SUM(plp.total_amount_of_payment_usdollars)/tmp.sum_invested AS p_i_ratio
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, applicable_payer_id, SUM(total_amount_invested_usdollars) AS sum_invested 
    FROM open_payments.h_payment_poi_2016 
    GROUP BY physician_profile_id, applicable_payer_id
) AS tmp INNER JOIN open_payments.h_payment_list_physician_2016 AS plp ON tmp.physician_profile_id = plp.physician_profile_id AND tmp.applicable_payer_id = plp.applicable_payer_id
WHERE tmp.sum_invested IS NOT NULL AND tmp.sum_invested <> '' AND tmp.sum_invested <> 0
GROUP BY tmp.physician_profile_id, tmp.applicable_payer_id;

-- Año 2017
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_invested, sum_payment, p_i_ratio)
SELECT '2017', tmp.physician_profile_id, tmp.recipient_country, tmp.recipient_state, 'yes', tmp.applicable_payer_id, tmp.sum_invested, SUM(plp.total_amount_of_payment_usdollars) AS sum_payment, SUM(plp.total_amount_of_payment_usdollars)/tmp.sum_invested AS p_i_ratio
FROM (
    SELECT physician_profile_id, recipient_country, recipient_state, applicable_payer_id, SUM(total_amount_invested_usdollars) AS sum_invested 
    FROM open_payments.h_payment_poi_2017 
    GROUP BY physician_profile_id, applicable_payer_id
) AS tmp INNER JOIN open_payments.h_payment_list_physician_2017 AS plp ON tmp.physician_profile_id = plp.physician_profile_id AND tmp.applicable_payer_id = plp.applicable_payer_id
WHERE tmp.sum_invested IS NOT NULL AND tmp.sum_invested <> '' AND tmp.sum_invested <> 0
GROUP BY tmp.physician_profile_id, tmp.applicable_payer_id;


-- Datos médicos sin intereses

-- Año 2013
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_payment)
SELECT '2013', ph.physician_profile_id, ph.recipient_country, ph.recipient_state, 'no', ph.applicable_payer_id, SUM(ph.total_amount_of_payment_usdollars) AS sum_payment
FROM (
    SELECT DISTINCT physician_profile_id, applicable_payer_id
    FROM indicators.interest_analysis
) AS yes RIGHT JOIN open_payments.h_payment_physician_2013 AS ph ON yes.physician_profile_id = ph.physician_profile_id AND yes.applicable_payer_id = ph.applicable_payer_id 
WHERE yes.applicable_payer_id IS NULL
GROUP BY ph.physician_profile_id, ph.applicable_payer_id;

-- Año 2014
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_payment)
SELECT '2014', ph.physician_profile_id, ph.recipient_country, ph.recipient_state, 'no', ph.applicable_payer_id, SUM(ph.total_amount_of_payment_usdollars) AS sum_payment
FROM (
    SELECT DISTINCT physician_profile_id, applicable_payer_id
    FROM indicators.interest_analysis
) AS yes RIGHT JOIN open_payments.h_payment_physician_2014 AS ph ON yes.physician_profile_id = ph.physician_profile_id AND yes.applicable_payer_id = ph.applicable_payer_id 
WHERE yes.applicable_payer_id IS NULL
GROUP BY ph.physician_profile_id, ph.applicable_payer_id;

-- Año 2015
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_payment)
SELECT '2015', ph.physician_profile_id, ph.recipient_country, ph.recipient_state, 'no', ph.applicable_payer_id, SUM(ph.total_amount_of_payment_usdollars) AS sum_payment
FROM (
    SELECT DISTINCT physician_profile_id, applicable_payer_id
    FROM indicators.interest_analysis
) AS yes RIGHT JOIN open_payments.h_payment_physician_2015 AS ph ON yes.physician_profile_id = ph.physician_profile_id AND yes.applicable_payer_id = ph.applicable_payer_id 
WHERE yes.applicable_payer_id IS NULL
GROUP BY ph.physician_profile_id, ph.applicable_payer_id;

-- Año 2016
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_payment)
SELECT '2016', ph.physician_profile_id, ph.recipient_country, ph.recipient_state, 'no', ph.applicable_payer_id, SUM(ph.total_amount_of_payment_usdollars) AS sum_payment
FROM (
    SELECT DISTINCT physician_profile_id, applicable_payer_id
    FROM indicators.interest_analysis
) AS yes RIGHT JOIN open_payments.h_payment_physician_2016 AS ph ON yes.physician_profile_id = ph.physician_profile_id AND yes.applicable_payer_id = ph.applicable_payer_id 
WHERE yes.applicable_payer_id IS NULL
GROUP BY ph.physician_profile_id, ph.applicable_payer_id;

-- Año 2017
INSERT INTO indicators.interest_analysis (year, physician_profile_id, recipient_country, recipient_state, interest, applicable_payer_id, sum_payment)
SELECT '2017', ph.physician_profile_id, ph.recipient_country, ph.recipient_state, 'no', ph.applicable_payer_id, SUM(ph.total_amount_of_payment_usdollars) AS sum_payment
FROM (
    SELECT DISTINCT physician_profile_id, applicable_payer_id
    FROM indicators.interest_analysis
) AS yes RIGHT JOIN open_payments.h_payment_physician_2017 AS ph ON yes.physician_profile_id = ph.physician_profile_id AND yes.applicable_payer_id = ph.applicable_payer_id 
WHERE yes.applicable_payer_id IS NULL
GROUP BY ph.physician_profile_id, ph.applicable_payer_id;
