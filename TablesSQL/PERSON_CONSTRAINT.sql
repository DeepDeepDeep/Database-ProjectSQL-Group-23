--------------------------------------------------------
--  Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "PERSON" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PERSON" ADD CONSTRAINT "PERSON_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "PERSON" ADD CONSTRAINT "ID_FORMAT" CHECK (REGEXP_LIKE (ID, 'P[0-9][0-9][0-9]')) ENABLE;
  ALTER TABLE "PERSON" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "PERSON" ADD CONSTRAINT "PERSON_UK1" UNIQUE ("FIRST_NAME", "MID_NAME_INT", "LAST_NAME")
  USING INDEX  ENABLE;