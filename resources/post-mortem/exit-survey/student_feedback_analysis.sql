/* RESPONSE TRANSLATION AND QUANTIFICATION FUNCTIONS */

CREATE FUNCTION agreement_response_to_int (s CHAR(20))
RETURNS INT -- [1,2,3,4,5]
RETURN CASE
  WHEN s LIKE "%5%" THEN 5 -- 5 (agree)
  WHEN s LIKE "%3%" THEN 3 -- 3 (neutral)
  WHEN s LIKE "%1%" THEN 1 -- 1 (disagree)
  ELSE cast(s AS UNSIGNED)
END;

CREATE FUNCTION comfort_response_to_int (s CHAR(55))
RETURNS INT -- [1,2,3,4,5]
RETURN CASE
  WHEN s = "Can use with ease" THEN 5
  WHEN s = "Can use with comfort" THEN 4
  WHEN s = "Used a few times but with discomfort" THEN 2
  WHEN s = "Heard of but never used" THEN 1
  WHEN s = "Never heard of" THEN 0
END;








/* EVALUATIONS OF THE COURSE AND INSTRUCTORS AND LEARNING */

DROP TABLE IF EXISTS badm_2301.xr_evals_learning;
CREATE TABLE badm_2301.xr_evals_learning AS (
  SELECT
    student_id
    ,agreement_response_to_int(obj_subjectmatter) as subject_matter -- Learning Objectives [I expanded my subject matter knowledge]
    ,agreement_response_to_int(obj_techskills) as tech_skills -- Learning Objectives [I improved my technology skills]
    ,agreement_response_to_int(obj_industry) as industry_insights -- Learning Objectives [I learned more about contemporary industry practices and challenges]
    ,agreement_response_to_int(obj_creativity) as tech_creativity -- Learning Objectives [I leveraged technology as an outlet for creativity]
    ,agreement_response_to_int(obj_pres) as presentation_comms -- Learning Objectives [I improved my communication and presentation skills]
    ,agreement_response_to_int(obj_writing) as writing -- Learning Objectives [I improved my writing skills]
    ,agreement_response_to_int(obj_teamwork) as teamwork -- Learning Objectives [I improved my ability to work in teams]
  FROM badm_2301.exit_responses
);
ALTER TABLE badm_2301.xr_evals_learning ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.xr_evals_learning;

DROP TABLE IF EXISTS badm_2301.xr_evals_course;
CREATE TABLE badm_2301.xr_evals_course AS (
  SELECT
    student_id
    ,agreement_response_to_int(lectures_relevant) AS lectures_relevant -- Course Evaluation [Lectures are relevant]
    ,agreement_response_to_int(lectures_engaging) AS lectures_engaging -- Course Evaluation [Lectures are engaging]
    ,agreement_response_to_int(lectures_fun) AS lectures_fun -- Course Evaluation [Lectures are fun]
    ,agreement_response_to_int(assignments_relevant) AS assignments_relevant -- Course Evaluation [Assignments are relevant]
    ,agreement_response_to_int(assignments_challenging) AS assignments_challenging -- Course Evaluation [Assignments are challenging]
    ,agreement_response_to_int(assignments_engaging) AS assignments_engaging -- Course Evaluation [Assignments are engaging]
    ,agreement_response_to_int(assignments_reasonable) AS assignments_reasonable -- Course Evaluation [Assignments are reasonable]
    ,agreement_response_to_int(assignments_fun) AS assignments_fun -- Course Evaluation [Assignments are fun]
    ,agreement_response_to_int(assignments_expectclear) AS assignments_expectclear -- Course Evaluation [Assignment expectations are clear]
    ,agreement_response_to_int(project_relevant) AS project_relevant -- Course Evaluation [Group Project is relevant]
    ,agreement_response_to_int(project_engaging) AS project_engaging -- Course Evaluation [Group Project is engaging]
    ,agreement_response_to_int(project_fun) AS project_fun -- Course Evaluation [Group Project is fun]
    ,agreement_response_to_int(project_expectclear) AS project_expectclear -- Course Evaluation [Group Project expectations are clear]
  FROM badm_2301.exit_responses_course
);
ALTER TABLE badm_2301.xr_evals_course ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.xr_evals_course;

DROP TABLE IF EXISTS badm_2301.xr_evals_instructor;
CREATE TABLE badm_2301.xr_evals_instructor AS (
  SELECT
    student_id
    ,ta_rec -- Teaching Assistant Recommendation
    ,prof_rec -- Professor Recommendation
    ,agreement_response_to_int(prof_caresmysuccess) AS prof_caresmysuccess -- Professor Evaluation [Prof cares about my success]
    ,agreement_response_to_int(prof_organized) AS prof_organized -- Professor Evaluation [Prof is organized]
    ,agreement_response_to_int(prof_punctual) AS prof_punctual -- Professor Evaluation [Prof is punctual]
    ,agreement_response_to_int(prof_clearcomms) AS prof_clearcomms -- Professor Evaluation [Prof communicates in a manner I can understand]
    ,agreement_response_to_int(prof_prepared) AS prof_prepared -- Professor Evaluation [Prof is prepared]
    ,agreement_response_to_int(prof_available) AS prof_available -- Professor Evaluation [Prof is available outside of class]
    ,agreement_response_to_int(prof_smknowledge) AS prof_smknowledge -- Professor Evaluation [Prof is knowledgeable in the subject matter]
    ,agreement_response_to_int(prof_smexperience) AS prof_smexperience -- Professor Evaluation [Prof is experienced in subject matter]
    ,agreement_response_to_int(prof_fairdecisions) AS prof_fairdecisions -- Professor Evaluation [Prof makes fair decisions]
    ,agreement_response_to_int(prof_highexpectations) AS prof_highexpectations -- Professor Evaluation [Prof has high expectations]
    ,agreement_response_to_int(prof_wiseclasstime) AS prof_wiseclasstime -- Professor Evaluation [Prof makes wise use of class time]
    ,agreement_response_to_int(self_comfcommswprof) AS prof_comfcomms -- Professor Evaluation [I am comfortable communicating with the Prof]
  FROM badm_2301.exit_responses_instruct
);
ALTER TABLE badm_2301.xr_evals_instructor ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.xr_evals_instructor;

/* COMFORTABILITY WITH TOOLS AND SOFTWARE */

DROP TABLE IF EXISTS badm_2301.xr_evals_lang;
CREATE TABLE badm_2301.xr_evals_lang AS (
  SELECT
    student_id
    ,comfort_response_to_int(data_csv) as data_csv
    ,comfort_response_to_int(data_json) as data_json
    ,comfort_response_to_int(data_xml) as data_xml
    ,comfort_response_to_int(lang_sql) as lang_sql
    ,comfort_response_to_int(lang_html) as lang_html
    ,comfort_response_to_int(lang_css) as lang_css
    ,comfort_response_to_int(lang_js) as lang_js
  FROM badm_2301.exit_responses_lang
);
ALTER TABLE badm_2301.xr_evals_lang ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.xr_evals_lang;


DROP TABLE IF EXISTS badm_2301.xr_evals_lang;
CREATE TABLE badm_2301.xr_evals_lang AS (
  SELECT
    student_id
    ,comfort_response_to_int(data_csv) AS data_csv
    ,comfort_response_to_int(data_json) AS data_json
    ,comfort_response_to_int(data_xml) AS data_xml
    ,comfort_response_to_int(lang_sql) AS lang_sql
    ,comfort_response_to_int(lang_html) AS lang_html
    ,comfort_response_to_int(lang_css) AS lang_css
    ,comfort_response_to_int(lang_js) AS lang_js
  FROM badm_2301.exit_responses_lang
);
ALTER TABLE badm_2301.xr_evals_lang ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.xr_evals_lang;

DROP TABLE IF EXISTS badm_2301.xr_evals_soft;
CREATE TABLE badm_2301.xr_evals_soft AS (
  SELECT
    student_id
    ,comfort_response_to_int(soft_word) AS soft_word
    ,comfort_response_to_int(soft_gdocs) AS soft_gdocs
    ,comfort_response_to_int(soft_excel) AS soft_excel
    ,comfort_response_to_int(soft_gsheets) AS soft_gsheets
    ,comfort_response_to_int(soft_ppt) AS soft_ppt
    ,comfort_response_to_int(soft_gslides) AS soft_gslides
    ,comfort_response_to_int(soft_visio) AS soft_visio
    ,comfort_response_to_int(soft_lucidchart) AS soft_lucidchart
    ,comfort_response_to_int(dbms_access) AS dbms_access
    ,comfort_response_to_int(soft_atom) AS soft_atom
    ,comfort_response_to_int(soft_nppp) AS soft_nppp
    ,comfort_response_to_int(soft_ghdesktop) AS soft_ghdesktop
  FROM badm_2301.exit_responses_soft
);
ALTER TABLE badm_2301.exit_responses_soft ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.exit_responses_soft;

DROP TABLE IF EXISTS badm_2301.xr_evals_tools;
CREATE TABLE badm_2301.xr_evals_tools AS (
  SELECT
    student_id
    ,comfort_response_to_int(comms_email) AS comms_email
    ,comfort_response_to_int(comms_bboard) AS comms_bboard
    ,comfort_response_to_int(comms_slack) AS comms_slack
    ,comfort_response_to_int(tools_gh) AS tools_gh
  FROM badm_2301.exit_responses_tools
);
ALTER TABLE badm_2301.xr_evals_tools ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301.xr_evals_tools;
