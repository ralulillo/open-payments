-- -----------------------------------------------------
-- Rellena `h_payment_details_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_details_2013 (record_id, applicable_payer_id, type_of_recipient, year_of_payment, month_of_payment, day_of_payment, form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
YEAR(date_of_payment) AS 'year_of_payment', MONTH(date_of_payment) AS 'month_of_payment', DAY(date_of_payment) AS 'day_of_payment', form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE date_of_payment IS NOT NULL AND program_year = 2013;

INSERT INTO open_payments.h_payment_details_2014 (record_id, applicable_payer_id, type_of_recipient, year_of_payment, month_of_payment, day_of_payment, form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
YEAR(date_of_payment) AS 'year_of_payment', MONTH(date_of_payment) AS 'month_of_payment', DAY(date_of_payment) AS 'day_of_payment', form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE date_of_payment IS NOT NULL AND program_year = 2014;

INSERT INTO open_payments.h_payment_details_2015 (record_id, applicable_payer_id, type_of_recipient, year_of_payment, month_of_payment, day_of_payment, form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
YEAR(date_of_payment) AS 'year_of_payment', MONTH(date_of_payment) AS 'month_of_payment', DAY(date_of_payment) AS 'day_of_payment', form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE date_of_payment IS NOT NULL AND program_year = 2015;

INSERT INTO open_payments.h_payment_details_2016 (record_id, applicable_payer_id, type_of_recipient, year_of_payment, month_of_payment, day_of_payment, form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
YEAR(date_of_payment) AS 'year_of_payment', MONTH(date_of_payment) AS 'month_of_payment', DAY(date_of_payment) AS 'day_of_payment', form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE date_of_payment IS NOT NULL AND program_year = 2016;

INSERT INTO open_payments.h_payment_details_2017 (record_id, applicable_payer_id, type_of_recipient, year_of_payment, month_of_payment, day_of_payment, form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
YEAR(date_of_payment) AS 'year_of_payment', MONTH(date_of_payment) AS 'month_of_payment', DAY(date_of_payment) AS 'day_of_payment', form_of_payment, nature_of_payment, number_of_payments_included, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE date_of_payment IS NOT NULL AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_recipient_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_recipient_2013 (record_id, applicable_payer_id, type_of_recipient, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE recipient_country IS NOT NULL AND recipient_country <> '' AND program_year = 2013;

INSERT INTO open_payments.h_payment_recipient_2014 (record_id, applicable_payer_id, type_of_recipient, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id,  
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE recipient_country IS NOT NULL AND recipient_country <> '' AND program_year = 2014;

INSERT INTO open_payments.h_payment_recipient_2015 (record_id, applicable_payer_id, type_of_recipient, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE recipient_country IS NOT NULL AND recipient_country <> '' AND program_year = 2015;

INSERT INTO open_payments.h_payment_recipient_2016 (record_id, applicable_payer_id, type_of_recipient, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE recipient_country IS NOT NULL AND recipient_country <> '' AND program_year = 2016;

INSERT INTO open_payments.h_payment_recipient_2017 (record_id, applicable_payer_id, type_of_recipient, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE recipient_country IS NOT NULL AND recipient_country <> '' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_physician_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_physician_2013 (record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient physician' AND program_year = 2013;

INSERT INTO open_payments.h_payment_physician_2014 (record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient physician' AND program_year = 2014;

INSERT INTO open_payments.h_payment_physician_2015 (record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient physician' AND program_year = 2015;

INSERT INTO open_payments.h_payment_physician_2016 (record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient physician' AND program_year = 2016;

INSERT INTO open_payments.h_payment_physician_2017 (record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, physician_ownership_indicator, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient physician' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_hospital_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_hospital_2013 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2013;

INSERT INTO open_payments.h_payment_hospital_2014 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2014;

INSERT INTO open_payments.h_payment_hospital_2015 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2015;

INSERT INTO open_payments.h_payment_hospital_2016 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2016;

INSERT INTO open_payments.h_payment_hospital_2017 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_noncovered_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_noncovered_2013 (record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'non-covered recipient entity' AND program_year = 2013;

INSERT INTO open_payments.h_payment_noncovered_2014 (record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'non-covered recipient entity' AND program_year = 2014;

INSERT INTO open_payments.h_payment_noncovered_2015 (record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'non-covered recipient entity' AND program_year = 2015;

INSERT INTO open_payments.h_payment_noncovered_2016 (record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'non-covered recipient entity' AND program_year = 2016;

INSERT INTO open_payments.h_payment_noncovered_2017 (record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, noncovered_recipient_entity_name, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE covered_recipient_type = 'non-covered recipient entity' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_travel_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_travel_2013 (record_id, applicable_payer_id, type_of_recipient, city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE country_of_travel IS NOT NULL AND country_of_travel <> '' AND program_year = 2013;

INSERT INTO open_payments.h_payment_travel_2014 (record_id, applicable_payer_id, type_of_recipient, city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE country_of_travel IS NOT NULL AND country_of_travel <> '' AND program_year = 2014;

INSERT INTO open_payments.h_payment_travel_2015 (record_id, applicable_payer_id, type_of_recipient, city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE country_of_travel IS NOT NULL AND country_of_travel <> '' AND program_year = 2015;

INSERT INTO open_payments.h_payment_travel_2016 (record_id, applicable_payer_id, type_of_recipient, city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE country_of_travel IS NOT NULL AND country_of_travel <> '' AND program_year = 2016;

INSERT INTO open_payments.h_payment_travel_2017 (record_id, applicable_payer_id, type_of_recipient, city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
city_of_travel, state_of_travel, country_of_travel, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE country_of_travel IS NOT NULL AND country_of_travel <> '' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_poi_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_poi_2013 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest
FROM open_payments.h_payment
WHERE covered_recipient_type IS NULL AND program_year = 2013;

INSERT INTO open_payments.h_payment_poi_2014 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest
FROM open_payments.h_payment
WHERE covered_recipient_type IS NULL AND program_year = 2014;

INSERT INTO open_payments.h_payment_poi_2015 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest
FROM open_payments.h_payment
WHERE covered_recipient_type IS NULL AND program_year = 2015;

INSERT INTO open_payments.h_payment_poi_2016 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest
FROM open_payments.h_payment
WHERE covered_recipient_type IS NULL AND program_year = 2016;

INSERT INTO open_payments.h_payment_poi_2017 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, interest_held_by_physician, terms_of_interest, total_amount_invested_usdollars, value_of_interest
FROM open_payments.h_payment
WHERE covered_recipient_type IS NULL AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_physician_3p_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_physician_3p_2013 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient physician' AND program_year = 2013;

INSERT INTO open_payments.h_payment_physician_3p_2014 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient physician' AND program_year = 2014;

INSERT INTO open_payments.h_payment_physician_3p_2015 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient physician' AND program_year = 2015;

INSERT INTO open_payments.h_payment_physician_3p_2016 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient physician' AND program_year = 2016;

INSERT INTO open_payments.h_payment_physician_3p_2017 (record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient physician' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_hospital_3p_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_hospital_3p_2013 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2013;

INSERT INTO open_payments.h_payment_hospital_3p_2014 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2014;

INSERT INTO open_payments.h_payment_hospital_3p_2015 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2015;

INSERT INTO open_payments.h_payment_hospital_3p_2016 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2016;

INSERT INTO open_payments.h_payment_hospital_3p_2017 (record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, teaching_hospital_id, recipient_state, recipient_country, charity_indicator, name_of_third_party_entity_receiving_payment, third_party_equals_covered_recipient_indicator, third_party_payment_recipient_indicator, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE third_party_payment_recipient_indicator IS NOT NULL AND third_party_payment_recipient_indicator <> 'no third party payment' AND covered_recipient_type = 'covered recipient teaching hospital' AND program_year = 2017;


-- -----------------------------------------------------
-- Rellena `h_payment_investigator_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_investigator_2013 (record_id, applicable_payer_id, type_of_recipient, physician_profile_id, teaching_hospital_id, investigator_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
(
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_1_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_1_profile_id IS NOT NULL AND program_year = 2013
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_2_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_2_profile_id IS NOT NULL AND program_year = 2013
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_3_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_3_profile_id IS NOT NULL AND program_year = 2013
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_4_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_4_profile_id IS NOT NULL AND program_year = 2013
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_5_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_5_profile_id IS NOT NULL AND program_year = 2013
);

INSERT INTO open_payments.h_payment_investigator_2014 (record_id, applicable_payer_id, type_of_recipient, physician_profile_id, teaching_hospital_id, investigator_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
(
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_1_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_1_profile_id IS NOT NULL AND program_year = 2014
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_2_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_2_profile_id IS NOT NULL AND program_year = 2014
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_3_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_3_profile_id IS NOT NULL AND program_year = 2014
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_4_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_4_profile_id IS NOT NULL AND program_year = 2014
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_5_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_5_profile_id IS NOT NULL AND program_year = 2014
);

INSERT INTO open_payments.h_payment_investigator_2015 (record_id, applicable_payer_id, type_of_recipient, physician_profile_id, teaching_hospital_id, investigator_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
(
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_1_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_1_profile_id IS NOT NULL AND program_year = 2015
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_2_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_2_profile_id IS NOT NULL AND program_year = 2015
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_3_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_3_profile_id IS NOT NULL AND program_year = 2015
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_4_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_4_profile_id IS NOT NULL AND program_year = 2015
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_5_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_5_profile_id IS NOT NULL AND program_year = 2015
);

INSERT INTO open_payments.h_payment_investigator_2016 (record_id, applicable_payer_id, type_of_recipient, physician_profile_id, teaching_hospital_id, investigator_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
(
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_1_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_1_profile_id IS NOT NULL AND program_year = 2016
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_2_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_2_profile_id IS NOT NULL AND program_year = 2016
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_3_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_3_profile_id IS NOT NULL AND program_year = 2016
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_4_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_4_profile_id IS NOT NULL AND program_year = 2016
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_5_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_5_profile_id IS NOT NULL AND program_year = 2016
);

INSERT INTO open_payments.h_payment_investigator_2017 (record_id, applicable_payer_id, type_of_recipient, physician_profile_id, teaching_hospital_id, investigator_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars)
(
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_1_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_1_profile_id IS NOT NULL AND program_year = 2017
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_2_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_2_profile_id IS NOT NULL AND program_year = 2017
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_3_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_3_profile_id IS NOT NULL AND program_year = 2017
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_4_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_4_profile_id IS NOT NULL AND program_year = 2017
UNION
SELECT record_id, applicable_payer_id, 
CASE
    WHEN covered_recipient_type = 'covered recipient physician' THEN 'P'
    WHEN covered_recipient_type = 'covered recipient teaching hospital' THEN 'H'
    WHEN covered_recipient_type = 'non-covered recipient entity' THEN 'N'
    WHEN covered_recipient_type IS NULL THEN 'O'
    ELSE 'U'
END AS type_of_recipient,
physician_profile_id, teaching_hospital_id, investigator_5_profile_id, recipient_state, recipient_country, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE investigator_5_profile_id IS NOT NULL AND program_year = 2017
);


-- -----------------------------------------------------
-- Rellena `h_payment_list_physician_XXXX`
-- -----------------------------------------------------

INSERT INTO open_payments.h_payment_list_physician_2013 (record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE physician_profile_id IS NOT NULL AND total_amount_of_payment_usdollars IS NOT NULL AND program_year = 2013;

INSERT INTO open_payments.h_payment_list_physician_2014 (record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE physician_profile_id IS NOT NULL AND total_amount_of_payment_usdollars IS NOT NULL AND program_year = 2014;

INSERT INTO open_payments.h_payment_list_physician_2015 (record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE physician_profile_id IS NOT NULL AND total_amount_of_payment_usdollars IS NOT NULL AND program_year = 2015;

INSERT INTO open_payments.h_payment_list_physician_2016 (record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE physician_profile_id IS NOT NULL AND total_amount_of_payment_usdollars IS NOT NULL AND program_year = 2016;

INSERT INTO open_payments.h_payment_list_physician_2017 (record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars)
SELECT record_id, applicable_payer_id, physician_profile_id, total_amount_of_payment_usdollars
FROM open_payments.h_payment
WHERE physician_profile_id IS NOT NULL AND total_amount_of_payment_usdollars IS NOT NULL AND program_year = 2017;