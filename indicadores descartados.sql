-- -----------------------------------------------------
-- Rellena indicators.recipient_payer_analysis
-- -----------------------------------------------------

-- Año 2013
INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, applicable_payer_state, recipient_name, recipient_country, recipient_state, num, value_sum)
SELECT '2013', 'H', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_hospital_2013 AS p INNER JOIN open_payments.d_hospital AS h 
        ON p.teaching_hospital_id = h.teaching_hospital_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2013 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2013', 'N', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state, COUNT(*), SUM(tmp.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, p.noncovered_recipient_entity_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
    FROM open_payments.h_payment_noncovered_2013 AS p INNER JOIN open_payments.h_payment_details_2013 AS d
    ON p.record_id = d.record_id
) AS tmp INNER JOIN open_payments.d_payer AS p
ON tmp.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2013', 'P', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, 
               IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '',
                  CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'),
                  CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')
               ) AS recipient_name,
               p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_physician_2013 AS p INNER JOIN open_payments.d_physician AS ph 
        ON p.physician_profile_id = ph.physician_profile_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2013 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

-- Año 2014
INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, applicable_payer_state, recipient_name, recipient_country, recipient_state, num, value_sum)
SELECT '2014', 'H', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_hospital_2014 AS p INNER JOIN open_payments.d_hospital AS h 
        ON p.teaching_hospital_id = h.teaching_hospital_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2014 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2014', 'N', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state, COUNT(*), SUM(tmp.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, p.noncovered_recipient_entity_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
    FROM open_payments.h_payment_noncovered_2014 AS p INNER JOIN open_payments.h_payment_details_2014 AS d
    ON p.record_id = d.record_id
) AS tmp INNER JOIN open_payments.d_payer AS p
ON tmp.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2014', 'P', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, 
               IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '',
                  CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'),
                  CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')
               ) AS recipient_name,
               p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_physician_2014 AS p INNER JOIN open_payments.d_physician AS ph 
        ON p.physician_profile_id = ph.physician_profile_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2014 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

-- Año 2015
INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, applicable_payer_state, recipient_name, recipient_country, recipient_state, num, value_sum)
SELECT '2015', 'H', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_hospital_2015 AS p INNER JOIN open_payments.d_hospital AS h 
        ON p.teaching_hospital_id = h.teaching_hospital_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2015 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2015', 'N', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state, COUNT(*), SUM(tmp.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, p.noncovered_recipient_entity_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
    FROM open_payments.h_payment_noncovered_2015 AS p INNER JOIN open_payments.h_payment_details_2015 AS d
    ON p.record_id = d.record_id
) AS tmp INNER JOIN open_payments.d_payer AS p
ON tmp.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2015', 'P', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, 
               IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '',
                  CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'),
                  CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')
               ) AS recipient_name,
               p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_physician_2015 AS p INNER JOIN open_payments.d_physician AS ph 
        ON p.physician_profile_id = ph.physician_profile_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2015 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

-- Año 2016
INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, applicable_payer_state, recipient_name, recipient_country, recipient_state, num, value_sum)
SELECT '2016', 'H', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_hospital_2016 AS p INNER JOIN open_payments.d_hospital AS h 
        ON p.teaching_hospital_id = h.teaching_hospital_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2016 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2016', 'N', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state, COUNT(*), SUM(tmp.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, p.noncovered_recipient_entity_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
    FROM open_payments.h_payment_noncovered_2016 AS p INNER JOIN open_payments.h_payment_details_2016 AS d
    ON p.record_id = d.record_id
) AS tmp INNER JOIN open_payments.d_payer AS p
ON tmp.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2016', 'P', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, 
               IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '',
                  CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'),
                  CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')
               ) AS recipient_name,
               p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_physician_2016 AS p INNER JOIN open_payments.d_physician AS ph 
        ON p.physician_profile_id = ph.physician_profile_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2016 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

-- Año 2017
INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, applicable_payer_state, recipient_name, recipient_country, recipient_state, num, value_sum)
SELECT '2017', 'H', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, h.teaching_hospital_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_hospital_2017 AS p INNER JOIN open_payments.d_hospital AS h 
        ON p.teaching_hospital_id = h.teaching_hospital_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2017 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2017', 'N', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state, COUNT(*), SUM(tmp.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, p.noncovered_recipient_entity_name AS recipient_name, p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
    FROM open_payments.h_payment_noncovered_2017 AS p INNER JOIN open_payments.h_payment_details_2017 AS d
    ON p.record_id = d.record_id
) AS tmp INNER JOIN open_payments.d_payer AS p
ON tmp.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp.recipient_name, tmp.recipient_country, tmp.recipient_state;

INSERT INTO indicators.recipient_payer_analysis (year, type_of_recipient, applicable_payer_name, applicable_payer_country, 
            applicable_payer_state, recipient_name, recipient_country, recipient_state,
            num, value_sum)
SELECT '2017', 'P', p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state, COUNT(*), SUM(tmp2.total_amount_of_payment_usdollars)
FROM (
    SELECT d.applicable_payer_id, tmp1.recipient_name, tmp1.recipient_country, tmp1.recipient_state, tmp1.total_amount_of_payment_usdollars
    FROM (
        SELECT p.record_id, 
               IF(ph.physician_name_suffix IS NULL OR ph.physician_name_suffix = '',
                  CONCAT(ph.physician_last_name, ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')'),
                  CONCAT(ph.physician_last_name, ' ', ph.physician_name_suffix,  ', ', ph.physician_first_name, ' (', ph.physician_profile_id, ')')
               ) AS recipient_name,
               p.recipient_country, p.recipient_state, p.total_amount_of_payment_usdollars
        FROM open_payments.h_payment_physician_2017 AS p INNER JOIN open_payments.d_physician AS ph 
        ON p.physician_profile_id = ph.physician_profile_id
    ) AS tmp1 INNER JOIN open_payments.h_payment_details_2017 AS d
    ON tmp1.record_id = d.record_id
) AS tmp2 INNER JOIN open_payments.d_payer AS p
ON tmp2.applicable_payer_id = p.applicable_payer_id
GROUP BY p.applicable_payer_name, p.applicable_payer_country, p.applicable_payer_state, tmp2.recipient_name, tmp2.recipient_country, tmp2.recipient_state;
