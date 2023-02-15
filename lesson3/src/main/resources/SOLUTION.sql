ALTER TABLE student ALTER COLUMN birthday SET NOT NULL;

ALTER TABLE Mark ADD CONSTRAINT mark_in_range_1_through_10 CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE mark ALTER COLUMN subject_id SET NOT NULL;

ALTER TABLE Subject ADD CONSTRAINT grade_in_range_1_through_5 CHECK (grade >= 0 AND grade <= 5);

ALTER TABLE paymenttype ADD UNIQUE (name);

ALTER TABLE payment ALTER COLUMN type_id SET NOT NULL;
ALTER TABLE payment ALTER COLUMN amount SET NOT NULL;
ALTER TABLE payment ALTER COLUMN payment_date SET NOT NULL;
