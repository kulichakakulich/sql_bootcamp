COMMENT ON TABLE person_discounts IS 'Pizza discounts for people by pizzeria';
COMMENT ON COLUMN person_discounts.id IS 'person_discounts index';
COMMENT ON COLUMN person_discounts.person_id IS 'person foreign key';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'pizzeria_id foreign key';
COMMENT ON COLUMN person_discounts.discount IS 'Percentage pizza discount'



