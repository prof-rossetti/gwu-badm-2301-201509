CREATE FUNCTION to_int (s CHAR(20))
RETURNS INT
RETURN CASE
  WHEN s LIKE "%5%" THEN 5 -- 5 (agree)
  WHEN s LIKE "%3%" THEN 3 -- 3 (neutral)
  WHEN s LIKE "%1%" THEN 1 -- 1 (disagree)
  ELSE cast(s AS UNSIGNED)
END;

/* EVALUATIONS OF LEARNING OBJECTIVES */

DROP TABLE IF EXISTS badm_2301.xr_evals_learning;
CREATE TABLE badm_2301.xr_learning_evals AS (
  SELECT
    student_id
    ,to_int(obj_subjectmatter) as subject_matter -- Learning Objectives [I expanded my subject matter knowledge]
    ,to_int(obj_techskills) as tech_skills -- Learning Objectives [I improved my technology skills]
    ,to_int(obj_industry) as industry_insights -- Learning Objectives [I learned more about contemporary industry practices and challenges]
    ,to_int(obj_creativity) as tech_creativity -- Learning Objectives [I leveraged technology as an outlet for creativity]
    ,to_int(obj_pres) as presentation_comms -- Learning Objectives [I improved my communication and presentation skills]
    ,to_int(obj_writing) as writing -- Learning Objectives [I improved my writing skills]
    ,to_int(obj_teamwork) as teamwork -- Learning Objectives [I improved my ability to work in teams]
  FROM badm_2301.exit_responses
);

/* EVALUATIONS OF THE COURSE */

DROP TABLE IF EXISTS badm_2301.xr_evals_course;
CREATE TABLE badm_2301.xr_course_evals AS (
  SELECT
    to_int(lectures_relevant) AS lectures_relevant -- Course Evaluation [Lectures are relevant]
    ,to_int(lectures_engaging) AS lectures_engaging -- Course Evaluation [Lectures are engaging]
    ,to_int(lectures_fun) AS lectures_fun -- Course Evaluation [Lectures are fun]
    ,to_int(assignments_relevant) AS assignments_relevant -- Course Evaluation [Assignments are relevant]
    ,to_int(assignments_challenging) AS assignments_challenging -- Course Evaluation [Assignments are challenging]
    ,to_int(assignments_engaging) AS assignments_engaging -- Course Evaluation [Assignments are engaging]
    ,to_int(assignments_reasonable) AS assignments_reasonable -- Course Evaluation [Assignments are reasonable]
    ,to_int(assignments_fun) AS assignments_fun -- Course Evaluation [Assignments are fun]
    ,to_int(assignments_expectclear) AS assignments_expectclear -- Course Evaluation [Assignment expectations are clear]
    ,to_int(project_relevant) AS project_relevant -- Course Evaluation [Group Project is relevant]
    ,to_int(project_engaging) AS project_engaging -- Course Evaluation [Group Project is engaging]
    ,to_int(project_fun) AS project_fun -- Course Evaluation [Group Project is fun]
    ,to_int(project_expectclear) AS project_expectclear -- Course Evaluation [Group Project expectations are clear]
  FROM badm_2301.exit_responses_course
);
