ALTER TABLE "users" DROP "education";

ALTER TABLE "users"
ADD "education" frozen <"education_information">;
