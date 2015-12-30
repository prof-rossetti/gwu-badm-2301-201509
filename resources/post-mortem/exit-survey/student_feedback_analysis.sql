/* IMPORT CSV FILES */

/*
CREATE TABLE `xr_full` (
  `ts` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `net_id` varchar(255) DEFAULT NULL,
  `obj_reflect` text,
  `os_windows` varchar(255) DEFAULT NULL,
  `os_mac` varchar(255) DEFAULT NULL,
  `os_ios` varchar(255) DEFAULT NULL,
  `os_android` varchar(255) DEFAULT NULL,
  `soft_word` varchar(255) DEFAULT NULL,
  `soft_gdocs` varchar(255) DEFAULT NULL,
  `soft_excel` varchar(255) DEFAULT NULL,
  `soft_gscheets` varchar(255) DEFAULT NULL,
  `soft_ppt` varchar(255) DEFAULT NULL,
  `soft_gslides` varchar(255) DEFAULT NULL,
  `soft_visio` varchar(255) DEFAULT NULL,
  `soft_lucidchart` varchar(255) DEFAULT NULL,
  `dbms_access` varchar(255) DEFAULT NULL,
  `comms_email` varchar(255) DEFAULT NULL,
  `comms_bboard` varchar(255) DEFAULT NULL,
  `comms_slack` varchar(255) DEFAULT NULL,
  `tools_gh` varchar(255) DEFAULT NULL,
  `data_csv` varchar(255) DEFAULT NULL,
  `data_json` varchar(255) DEFAULT NULL,
  `data_xml` varchar(255) DEFAULT NULL,
  `employment_interest` text,
  `ta_rec` varchar(255) DEFAULT NULL,
  `prof_feedback` text,
  `ta_feedback` varchar(255) DEFAULT NULL,
  `prof_rec` varchar(255) DEFAULT NULL,
  `obj_subjectmatter` varchar(255) DEFAULT NULL,
  `obj_techskills` varchar(255) DEFAULT NULL,
  `obj_industry` varchar(255) DEFAULT NULL,
  `obj_creativity` varchar(255) DEFAULT NULL,
  `obj_pres` varchar(255) DEFAULT NULL,
  `obj_writing` varchar(255) DEFAULT NULL,
  `obj_teamwork` varchar(255) DEFAULT NULL,
  `course_feedback` text,
  `lang_sql` varchar(255) DEFAULT NULL,
  `lang_html` varchar(255) DEFAULT NULL,
  `lang_css` varchar(255) DEFAULT NULL,
  `lang_js` varchar(255) DEFAULT NULL,
  `prof_caresmysuccess` varchar(255) DEFAULT NULL,
  `prof_organized` varchar(255) DEFAULT NULL,
  `prof_punctual` varchar(255) DEFAULT NULL,
  `prof_clearcomms` varchar(255) DEFAULT NULL,
  `prof_prepared` varchar(255) DEFAULT NULL,
  `prof_available` varchar(255) DEFAULT NULL,
  `prof_smknowledge` varchar(255) DEFAULT NULL,
  `prof_smexperience` varchar(255) DEFAULT NULL,
  `prof_fairdecisions` varchar(255) DEFAULT NULL,
  `prof_highexpectations` varchar(255) DEFAULT NULL,
  `prof_wiseclasstime` varchar(255) DEFAULT NULL,
  `self_comfcommswprof` varchar(255) DEFAULT NULL,
  `lectures_relevant` varchar(255) DEFAULT NULL,
  `lectures_engaging` varchar(255) DEFAULT NULL,
  `lectures_fun` varchar(255) DEFAULT NULL,
  `assignments_relevant` varchar(255) DEFAULT NULL,
  `assignments_challenging` varchar(255) DEFAULT NULL,
  `assignments_engaging` varchar(255) DEFAULT NULL,
  `assignments_reasonable` varchar(255) DEFAULT NULL,
  `assignments_fun` varchar(255) DEFAULT NULL,
  `assignments_expectclear` varchar(255) DEFAULT NULL,
  `project_relevant` varchar(255) DEFAULT NULL,
  `project_engaging` varchar(255) DEFAULT NULL,
  `project_fun` varchar(255) DEFAULT NULL,
  `project_expectclear` varchar(255) DEFAULT NULL,
  `research_interest` varchar(255) DEFAULT NULL,
  `soft_atom` varchar(255) DEFAULT NULL,
  `soft_nppp` varchar(255) DEFAULT NULL,
  `soft_ghdesktop` varchar(255) DEFAULT NULL,
  `os_linux` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `exit_responses` (
  `ts` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL DEFAULT '0',
  `net_id` varchar(255) DEFAULT NULL,
  `obj_reflect` text,
  `os_windows` varchar(255) DEFAULT NULL,
  `os_mac` varchar(255) DEFAULT NULL,
  `os_ios` varchar(255) DEFAULT NULL,
  `os_android` varchar(255) DEFAULT NULL,
  `soft_word` varchar(255) DEFAULT NULL,
  `soft_gdocs` varchar(255) DEFAULT NULL,
  `soft_excel` varchar(255) DEFAULT NULL,
  `soft_gscheets` varchar(255) DEFAULT NULL,
  `soft_ppt` varchar(255) DEFAULT NULL,
  `soft_gslides` varchar(255) DEFAULT NULL,
  `soft_visio` varchar(255) DEFAULT NULL,
  `soft_lucidchart` varchar(255) DEFAULT NULL,
  `dbms_access` varchar(255) DEFAULT NULL,
  `comms_email` varchar(255) DEFAULT NULL,
  `comms_bboard` varchar(255) DEFAULT NULL,
  `comms_slack` varchar(255) DEFAULT NULL,
  `tools_gh` varchar(255) DEFAULT NULL,
  `data_csv` varchar(255) DEFAULT NULL,
  `data_json` varchar(255) DEFAULT NULL,
  `data_xml` varchar(255) DEFAULT NULL,
  `employment_interest` text,
  `ta_rec` varchar(255) DEFAULT NULL,
  `prof_feedback` text,
  `ta_feedback` varchar(255) DEFAULT NULL,
  `prof_rec` varchar(255) DEFAULT NULL,
  `obj_subjectmatter` varchar(255) DEFAULT NULL,
  `obj_techskills` varchar(255) DEFAULT NULL,
  `obj_industry` varchar(255) DEFAULT NULL,
  `obj_creativity` varchar(255) DEFAULT NULL,
  `obj_pres` varchar(255) DEFAULT NULL,
  `obj_writing` varchar(255) DEFAULT NULL,
  `obj_teamwork` varchar(255) DEFAULT NULL,
  `course_feedback` text,
  `lang_sql` varchar(255) DEFAULT NULL,
  `lang_html` varchar(255) DEFAULT NULL,
  `lang_css` varchar(255) DEFAULT NULL,
  `lang_js` varchar(255) DEFAULT NULL,
  `prof_caresmysuccess` varchar(255) DEFAULT NULL,
  `prof_organized` varchar(255) DEFAULT NULL,
  `prof_punctual` varchar(255) DEFAULT NULL,
  `prof_clearcomms` varchar(255) DEFAULT NULL,
  `prof_prepared` varchar(255) DEFAULT NULL,
  `prof_available` varchar(255) DEFAULT NULL,
  `prof_smknowledge` varchar(255) DEFAULT NULL,
  `prof_smexperience` varchar(255) DEFAULT NULL,
  `prof_fairdecisions` varchar(255) DEFAULT NULL,
  `prof_highexpectations` varchar(255) DEFAULT NULL,
  `prof_wiseclasstime` varchar(255) DEFAULT NULL,
  `self_comfcommswprof` varchar(255) DEFAULT NULL,
  `lectures_relevant` varchar(255) DEFAULT NULL,
  `lectures_engaging` varchar(255) DEFAULT NULL,
  `lectures_fun` varchar(255) DEFAULT NULL,
  `assignments_relevant` varchar(255) DEFAULT NULL,
  `assignments_challenging` varchar(255) DEFAULT NULL,
  `assignments_engaging` varchar(255) DEFAULT NULL,
  `assignments_reasonable` varchar(255) DEFAULT NULL,
  `assignments_fun` varchar(255) DEFAULT NULL,
  `assignments_expectclear` varchar(255) DEFAULT NULL,
  `project_relevant` varchar(255) DEFAULT NULL,
  `project_engaging` varchar(255) DEFAULT NULL,
  `project_fun` varchar(255) DEFAULT NULL,
  `project_expectclear` varchar(255) DEFAULT NULL,
  `research_interest` varchar(255) DEFAULT NULL,
  `soft_atom` varchar(255) DEFAULT NULL,
  `soft_nppp` varchar(255) DEFAULT NULL,
  `soft_ghdesktop` varchar(255) DEFAULT NULL,
  `os_linux` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*

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

/* ORIGINAL ONBOARDING RESPONSES */

DROP TABLE IF EXISTS badm_2301._responses;
CREATE TABLE badm_2301._responses AS (
  SELECT
    g.student_id
    ,g.final_grade
    ,g.final_letter_grade
    ,comfort_response_to_int(comms_bboard) AS comms_bboard -- Collaboration and Productivity Tool Usage [Blackboard]
    ,comfort_response_to_int(comms_email) AS comms_email -- Collaboration and Productivity Tool Usage [Email]
    ,comfort_response_to_int(comms_gchat) AS comms_gchat -- Collaboration and Productivity Tool Usage [GChat]
    ,comfort_response_to_int(comms_hipchat) AS comms_hipchat -- Collaboration and Productivity Tool Usage [HipChat]
    ,comfort_response_to_int(comms_irc) AS comms_irc -- Collaboration and Productivity Tool Usage [IRC]
    ,comfort_response_to_int(comms_slack) AS comms_slack -- Collaboration and Productivity Tool Usage [Slack]
    ,comfort_response_to_int(tools_aws) AS tools_aws -- Collaboration and Productivity Tool Usage [AWS]
    ,comfort_response_to_int(tools_bitbucket) AS tools_bitbucket -- Collaboration and Productivity Tool Usage [Bitbucket]
    ,comfort_response_to_int(tools_gh) AS tools_gh -- Collaboration and Productivity Tool Usage [GitHub]
    ,comfort_response_to_int(data_csv) AS data_csv -- Programming Language, Framework, and Technology Usage [CSV]
    ,comfort_response_to_int(data_json) AS data_json -- Programming Language, Framework, and Technology Usage [JSON]
    ,comfort_response_to_int(data_xml) AS data_xml -- Programming Language, Framework, and Technology Usage [XML]
    ,comfort_response_to_int(os_android) AS os_android -- Operating System Usage [Android OS]
    ,comfort_response_to_int(os_ios) AS os_ios -- Operating System Usage [iOS]
    ,comfort_response_to_int(os_mac) AS os_mac -- Operating System Usage [Mac OS]
    ,comfort_response_to_int(os_windows) AS os_windows -- Operating System Usage [Windows OS]
    ,comfort_response_to_int(lang_c) AS lang_c -- Programming Language, Framework, and Technology Usage [C]
    ,comfort_response_to_int(lang_cpp) AS lang_cpp -- Programming Language, Framework, and Technology Usage [C++]
    ,comfort_response_to_int(lang_csh) AS lang_csh -- Programming Language, Framework, and Technology Usage [C#]
    ,comfort_response_to_int(lang_css) AS lang_css -- Programming Language, Framework, and Technology Usage [CSS]
    ,comfort_response_to_int(lang_dotnet) AS lang_dotnet -- Programming Language, Framework, and Technology Usage [.NET]
    ,comfort_response_to_int(lang_html) AS lang_html -- Programming Language, Framework, and Technology Usage [HTML]
    ,comfort_response_to_int(lang_java) AS lang_java -- Programming Language, Framework, and Technology Usage [Java]
    ,comfort_response_to_int(lang_js) AS lang_js -- Programming Language, Framework, and Technology Usage [JavaScript]
    ,comfort_response_to_int(lang_objc) AS lang_objc -- Programming Language, Framework, and Technology Usage [Objective C]
    ,comfort_response_to_int(lang_perl) AS lang_perl -- Programming Language, Framework, and Technology Usage [Perl]
    ,comfort_response_to_int(lang_php) AS lang_php -- Programming Language, Framework, and Technology Usage [PHP]
    ,comfort_response_to_int(lang_py) AS lang_py -- Programming Language, Framework, and Technology Usage [Python]
    ,comfort_response_to_int(lang_r) AS lang_r -- Programming Language, Framework, and Technology Usage [R]
    ,comfort_response_to_int(lang_ruby) AS lang_ruby -- Programming Language, Framework, and Technology Usage [Ruby]
    ,comfort_response_to_int(lang_sql) AS lang_sql -- Programming Language, Framework, and Technology Usage [SQL]
    ,comfort_response_to_int(lang_vb) AS lang_vb -- Programming Language, Framework, and Technology Usage [Visual Basic]
    ,comfort_response_to_int(dbms_access) AS dbms_access -- Software Usage [MS Access]
    ,comfort_response_to_int(soft_excel) AS soft_excel -- Software Usage [MS Excel]
    ,comfort_response_to_int(soft_gdocs) AS soft_gdocs -- Software Usage [Google Docs]
    ,comfort_response_to_int(soft_gsheets) AS soft_gsheets -- Software Usage [Google Sheets]
    ,comfort_response_to_int(soft_gslides) AS soft_gslides -- Software Usage [Google Slides]
    ,comfort_response_to_int(soft_lucidchart) AS soft_lucidchart -- Software Usage [Lucidchart]
    ,comfort_response_to_int(soft_ppt) AS soft_ppt -- Software Usage [MS PowerPoint]
    ,comfort_response_to_int(soft_visio) AS soft_visio -- Software Usage [MS Visio]
    ,comfort_response_to_int(soft_word) AS soft_word -- Software Usage [MS Word]
  FROM gradebook g
  LEFT JOIN badm_2301.responses r ON g.student_id = r.student_id
);
ALTER TABLE badm_2301._responses ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301._responses;

/* EXIT RESPONSES */

DROP TABLE IF EXISTS badm_2301._exit_responses;
CREATE TABLE badm_2301._exit_responses AS (
  SELECT
    g.student_id
    ,g.final_grade
    ,g.final_letter_grade
    ,agreement_response_to_int(obj_subjectmatter) AS subject_matter -- Learning Objectives [I expanded my subject matter knowledge]
    ,agreement_response_to_int(obj_techskills) AS tech_skills -- Learning Objectives [I improved my technology skills]
    ,agreement_response_to_int(obj_industry) AS industry_insights -- Learning Objectives [I learned more about contemporary industry practices and challenges]
    ,agreement_response_to_int(obj_creativity) AS tech_creativity -- Learning Objectives [I leveraged technology as an outlet for creativity]
    ,agreement_response_to_int(obj_pres) AS presentation_comms -- Learning Objectives [I improved my communication and presentation skills]
    ,agreement_response_to_int(obj_writing) AS writing -- Learning Objectives [I improved my writing skills]
    ,agreement_response_to_int(obj_teamwork) AS teamwork -- Learning Objectives [I improved my ability to work in teams]

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

    ,comfort_response_to_int(data_csv) AS data_csv
    ,comfort_response_to_int(data_json) AS data_json
    ,comfort_response_to_int(data_xml) AS data_xml
    ,comfort_response_to_int(lang_sql) AS lang_sql
    ,comfort_response_to_int(lang_html) AS lang_html
    ,comfort_response_to_int(lang_css) AS lang_css
    ,comfort_response_to_int(lang_js) AS lang_js

    ,comfort_response_to_int(os_windows) AS os_windows
    ,comfort_response_to_int(os_mac) AS os_mac
    ,comfort_response_to_int(os_ios) AS os_ios
    ,comfort_response_to_int(os_android) AS os_android

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

    ,comfort_response_to_int(comms_email) AS comms_email
    ,comfort_response_to_int(comms_bboard) AS comms_bboard
    ,comfort_response_to_int(comms_slack) AS comms_slack
    ,comfort_response_to_int(tools_gh) AS tools_gh

  FROM badm_2301.gradebook g
  LEFT JOIN badm_2301.exit_responses xr ON g.student_id = xr.student_id
);
ALTER TABLE badm_2301._exit_responses ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301._exit_responses;


/* COMPARISONS */

DROP TABLE IF EXISTS badm_2301._diffs;
CREATE TABLE badm_2301._diffs as (
  SELECT
    r.student_id
    ,xr.final_letter_grade
    ,xr.final_grade
    ,xr.comms_bboard - r.comms_bboard AS diff_comms_bboard
    ,xr.comms_email - r.comms_email AS diff_comms_email
    ,xr.comms_slack - r.comms_slack AS diff_comms_slack
    ,xr.data_csv - r.data_csv AS diff_data_csv
    ,xr.data_json - r.data_json AS diff_data_json
    ,xr.data_xml - r.data_xml AS diff_data_xml
    ,xr.dbms_access - r.dbms_access AS diff_dbms_access
    ,xr.lang_css - r.lang_css AS diff_lang_css
    ,xr.lang_html - r.lang_html AS diff_lang_html
    ,xr.lang_js - r.lang_js AS diff_lang_js
    ,xr.lang_sql - r.lang_sql AS diff_lang_sql
    ,xr.os_android - r.os_android AS diff_os_android
    ,xr.os_ios - r.os_ios AS diff_os_ios
    ,xr.os_mac - r.os_mac AS diff_os_mac
    ,xr.os_windows - r.os_windows AS diff_os_windows
    ,xr.soft_excel - r.soft_excel AS diff_soft_excel
    ,xr.soft_gdocs - r.soft_gdocs AS diff_soft_gdocs
    ,xr.soft_gsheets - r.soft_gsheets AS diff_soft_gsheets
    ,xr.soft_gslides - r.soft_gslides AS diff_soft_gslides
    ,xr.soft_lucidchart - r.soft_lucidchart AS diff_soft_lucidchart
    ,xr.soft_ppt - r.soft_ppt AS diff_soft_ppt
    ,xr.soft_visio - r.soft_visio AS diff_soft_visio
    ,xr.soft_word - r.soft_word AS diff_soft_word
    ,xr.tools_gh - r.tools_gh AS diff_tools_gh
  FROM _responses r
  LEFT JOIN _exit_responses xr ON r.student_id = xr.student_id
);
ALTER TABLE _diffs ADD PRIMARY KEY(student_id);
