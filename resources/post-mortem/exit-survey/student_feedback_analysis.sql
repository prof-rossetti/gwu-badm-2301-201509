/* IMPORT CSV FILES */

/*


CREATE TABLE `students` (
  `admit_term` varchar(255) DEFAULT NULL,
  `admit_type` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `catalog_term` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `credits` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `grad_class` varchar(255) DEFAULT NULL,
  `gwid` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `majors` text,
  `minors` text,
  `notification_expires` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `record_number` int(11) NOT NULL DEFAULT '0',
  `registration_number` int(11) DEFAULT NULL,
  `registration_status` varchar(255) DEFAULT NULL,
  `waitlist_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`record_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
    student_id
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
  FROM badm_2301.responses
);
ALTER TABLE badm_2301._responses ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301._responses;

/* EXIT RESPONSES */

DROP TABLE IF EXISTS badm_2301._exit_responses;
CREATE TABLE badm_2301._exit_responses AS (
  SELECT
    student_id
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
    ,comfort_response_to_int(soft_gscheets) AS soft_gsheets
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

  FROM badm_2301.exit_responses
);
ALTER TABLE badm_2301._exit_responses ADD PRIMARY KEY(student_id);
SELECT * FROM badm_2301._exit_responses;


/* COMPARISONS */

DROP TABLE IF EXISTS badm_2301._diffs;
CREATE TABLE badm_2301._diffs as (
  SELECT
    r.student_id
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

/* STUDENT PII-SAFE DEMOS */

-- todo: for better coverage and accuracy, get this data from banweb
DROP TABLE IF EXISTS badm_2301._students;
CREATE TABLE badm_2301._students AS (
  SELECT
    g.student_id
    ,CASE
      WHEN r.hometown LIKE "%NY%"
        OR r.hometown LIKE "%, CT%"
        OR r.hometown LIKE "%, Conn%"
        OR r.hometown LIKE "%, NJ%"
        OR r.hometown LIKE "%Kinnelon%"
        OR r.hometown LIKE "%New York%"
        OR r.hometown LIKE "%Syracuse%"
        OR r.hometown LIKE "%Jersey%"
        OR r.hometown LIKE "%Connecticut%"
        OR r.hometown LIKE "%Rhode Island%"
        OR r.hometown LIKE "%, MA%"
        OR r.hometown LIKE "%Vermont%" THEN "US- Northeast"

      WHEN r.hometown LIKE "%, VA%"
        OR R.hometown LIKE "% VA%"
        OR R.hometown LIKE "% MD%"
        OR r.hometown LIKE "%Pittsburgh%"
        OR r.hometown LIKE "%Pennsylvania%"
        OR R.hometown LIKE "% PA%" THEN "US- Mid-Atlantic"

      WHEN r.hometown LIKE "%, KS%"
        OR r.hometown LIKE "%, TX%"
        OR r.hometown LIKE "%Houston%"
        OR r.hometown LIKE "%Saint Louis%"
        OR r.hometown LIKE "%St. Louis%"
        OR r.hometown LIKE "%Los Angeles%"
        OR r.hometown LIKE "%Seattle%"
        OR r.hometown LIKE "%, CA%"
        OR r.hometown LIKE "%Tampa%"
        OR r.hometown LIKE "%Huntington Woods%" -- MI ?
        OR r.hometown LIKE "%Florida%"

        OR r.hometown LIKE "%Las Vegas%" THEN "US- South/West"

     WHEN r.hometown LIKE "%Saudi Arabia%"
        OR r.hometown LIKE "%damascus%"
        OR r.hometown LIKE "%Dubai%" -- THEN "Middle East"

      -- WHEN
        OR r.hometown LIKE "%China%"
        OR r.hometown LIKE "%Hong Kong%"
        OR r.hometown LIKE "%South Korea%" -- THEN "Asia"

      -- WHEN
        OR r.hometown LIKE "%Colombia%" THEN "International" -- "South America"
      ELSE r.hometown
    END home_region
    ,r.grad_class
    ,r.majors
    ,r.pc_ownership AS pc
    ,r.pc_os
  FROM gradebook g
  LEFT JOIN responses r ON r.student_id = g.student_id
  ORDER BY home_region
);
ALTER TABLE badm_2301._students ADD PRIMARY KEY(student_id);


/*

QUERIES FOR TABLEAU

*/

DROP TABLE IF EXISTS badm_2301._response_avgs;
CREATE TABLE badm_2301._response_avgs as (
  SELECT
    count(DISTINCT student_id) AS response_count

    ,AVG(comms_email) AS avg_comms_email
    ,AVG(comms_bboard) AS avg_comms_bboard
    ,AVG(comms_gchat) AS avg_comms_gchat
    ,AVG(comms_hipchat) AS avg_comms_hipchat
    ,AVG(comms_irc) AS avg_comms_irc
    ,AVG(comms_slack) AS avg_comms_slack
    ,AVG(tools_gh) AS avg_tools_gh
    ,AVG(tools_aws) AS avg_tools_aws
    ,AVG(tools_bitbucket) AS avg_tools_bitbucket

    ,AVG(os_windows) AS avg_os_windows
    ,AVG(os_mac) AS avg_os_mac
    ,AVG(os_ios) AS avg_os_ios
    ,AVG(os_android) AS avg_os_android

    ,AVG(lang_sql) AS avg_lang_sql
    ,AVG(lang_html) AS avg_lang_html
    ,AVG(lang_css) AS avg_lang_css
    ,AVG(lang_js) AS avg_lang_js
    ,AVG(lang_c) AS avg_lang_c
    ,AVG(lang_cpp) AS avg_lang_cpp
    ,AVG(lang_csh) AS avg_lang_csh
    ,AVG(lang_dotnet) AS avg_lang_dotnet
    ,AVG(lang_java) AS avg_lang_java
    ,AVG(lang_objc) AS avg_lang_objc
    ,AVG(lang_perl) AS avg_lang_perl
    ,AVG(lang_php) AS avg_lang_php
    ,AVG(lang_py) AS avg_lang_py
    ,AVG(lang_r) AS avg_lang_r
    ,AVG(lang_ruby) AS avg_lang_ruby
    ,AVG(lang_vb) AS avg_lang_vb

    ,AVG(data_csv) AS avg_data_csv
    ,AVG(data_json) AS avg_data_json
    ,AVG(data_xml) AS avg_data_xml

    ,AVG(soft_word) AS avg_soft_word
    ,AVG(soft_gdocs) AS avg_soft_gdocs
    ,AVG(soft_excel) AS avg_soft_excel
    ,AVG(soft_ppt) AS avg_soft_ppt
    ,AVG(soft_gslides) AS avg_soft_gslides
    ,AVG(soft_visio) AS avg_soft_visio
    ,AVG(soft_lucidchart) AS avg_soft_lucidchart
    ,AVG(dbms_access) AS avg_dbms_access
    ,AVG(soft_gsheets) AS avg_soft_gsheets

  FROM badm_2301._responses
); -- then transpose these results in a spreadsheet

DROP TABLE IF EXISTS badm_2301._exit_response_avgs;
CREATE TABLE badm_2301._exit_response_avgs as (
  SELECT
    count(DISTINCT student_id) AS response_count

    ,AVG(comms_email) AS avg_comms_email
    ,AVG(comms_bboard) AS avg_comms_bboard
    ,AVG(comms_slack) AS avg_comms_slack
    ,AVG(tools_gh) AS avg_tools_gh

    ,AVG(os_windows) AS avg_os_windows
    ,AVG(os_mac) AS avg_os_mac
    ,AVG(os_ios) AS avg_os_ios
    ,AVG(os_android) AS avg_os_android

    ,AVG(lang_sql) AS avg_lang_sql
    ,AVG(lang_html) AS avg_lang_html
    ,AVG(lang_css) AS avg_lang_css
    ,AVG(lang_js) AS avg_lang_js

    ,AVG(data_csv) AS avg_data_csv
    ,AVG(data_json) AS avg_data_json
    ,AVG(data_xml) AS avg_data_xml

    ,AVG(soft_word) AS avg_soft_word
    ,AVG(soft_gdocs) AS avg_soft_gdocs
    ,AVG(soft_excel) AS avg_soft_excel
    ,AVG(soft_ppt) AS avg_soft_ppt
    ,AVG(soft_gslides) AS avg_soft_gslides
    ,AVG(soft_visio) AS avg_soft_visio
    ,AVG(soft_lucidchart) AS avg_soft_lucidchart
    ,AVG(dbms_access) AS avg_dbms_access
    ,AVG(soft_atom) AS avg_soft_atom
    ,AVG(soft_nppp) AS avg_soft_nppp
    ,AVG(soft_ghdesktop) AS avg_soft_ghdesktop
    ,AVG(soft_gsheets) AS avg_soft_gsheets

    ,AVG(tech_skills) AS avg_tech_skills
    ,AVG(industry_insights) AS avg_industry_insights
    ,AVG(tech_creativity) AS avg_tech_creativity
    ,AVG(presentation_comms) AS avg_presentation_comms
    ,AVG(writing) AS avg_writing
    ,AVG(teamwork) AS avg_teamwork
    ,AVG(subject_matter) AS avg_subject_matter

    ,AVG(lectures_relevant) AS avg_lectures_relevant
    ,AVG(lectures_engaging) AS avg_lectures_engaging
    ,AVG(lectures_fun) AS avg_lectures_fun
    ,AVG(assignments_relevant) AS avg_assignments_relevant
    ,AVG(assignments_challenging) AS avg_assignments_challenging
    ,AVG(assignments_engaging) AS avg_assignments_engaging
    ,AVG(assignments_reasonable) AS avg_assignments_reasonable
    ,AVG(assignments_fun) AS avg_assignments_fun
    ,AVG(assignments_expectclear) AS avg_assignments_expectclear
    ,AVG(project_relevant) AS avg_project_relevant
    ,AVG(project_engaging) AS avg_project_engaging
    ,AVG(project_fun) AS avg_project_fun
    ,AVG(project_expectclear) AS avg_project_expectclear

    ,AVG(prof_caresmysuccess) AS avg_prof_caresmysuccess
    ,AVG(prof_organized) AS avg_prof_organized
    ,AVG(prof_punctual) AS avg_prof_punctual
    ,AVG(prof_clearcomms) AS avg_prof_clearcomms
    ,AVG(prof_prepared) AS avg_prof_prepared
    ,AVG(prof_available) AS avg_prof_available
    ,AVG(prof_smknowledge) AS avg_prof_smknowledge
    ,AVG(prof_smexperience) AS avg_prof_smexperience
    ,AVG(prof_fairdecisions) AS avg_prof_fairdecisions
    ,AVG(prof_highexpectations) AS avg_prof_highexpectations
    ,AVG(prof_wiseclasstime) AS avg_prof_wiseclasstime
    ,AVG(prof_comfcomms) AS avg_prof_comfcomms

  FROM badm_2301._exit_responses
); -- then transpose these results in a spreadsheet and import into tableau

DROP TABLE IF EXISTS badm_2301._diff_avgs;
CREATE TABLE badm_2301._diff_avgs AS (
  SELECT
    count(DISTINCT student_id) AS student_count
    ,AVG(diff_comms_bboard) AS avg_diff_comms_bboard
    ,AVG(diff_comms_email) AS avg_diff_comms_email
    ,AVG(diff_comms_slack) AS avg_diff_comms_slack
    ,AVG(diff_data_csv) AS avg_diff_data_csv
    ,AVG(diff_data_json) AS avg_diff_data_json
    ,AVG(diff_data_xml) AS avg_diff_data_xml
    ,AVG(diff_dbms_access) AS avg_diff_dbms_access
    ,AVG(diff_lang_css) AS avg_diff_lang_css
    ,AVG(diff_lang_html) AS avg_diff_lang_html
    ,AVG(diff_lang_js) AS avg_diff_lang_js
    ,AVG(diff_lang_sql) AS avg_diff_lang_sql
    ,AVG(diff_os_android) AS avg_diff_os_android
    ,AVG(diff_os_ios) AS avg_diff_os_ios
    ,AVG(diff_os_mac) AS avg_diff_os_mac
    ,AVG(diff_os_windows) AS avg_diff_os_windows
    ,AVG(diff_soft_excel) AS avg_diff_soft_excel
    ,AVG(diff_soft_gdocs) AS avg_diff_soft_gdocs
    ,AVG(diff_soft_gsheets) AS avg_diff_soft_gsheets
    ,AVG(diff_soft_gslides) AS avg_diff_soft_gslides
    ,AVG(diff_soft_lucidchart) AS avg_diff_soft_lucidchart
    ,AVG(diff_soft_ppt) AS avg_diff_soft_ppt
    ,AVG(diff_soft_visio) AS avg_diff_soft_visio
    ,AVG(diff_soft_word) AS avg_diff_soft_word
    ,AVG(diff_tools_gh) AS avg_diff_tools_gh
  FROM badm_2301._diffs
); -- then transpose these results in a spreadsheet and import into tableau


DROP TABLE IF EXISTS badm_2301._student_results;
CREATE TABLE badm_2301._student_results AS (
  SELECT
     s.student_id
     ,s.home_region -- todo: get from banweb
     ,s.grad_class -- todo: get from banweb
     ,s.majors -- todo: parse
     ,s.pc
     ,s.pc_os
     ,g.final_grade
     ,g.final_letter_grade
     ,coalesce(xr.prof_rec, "N/A") AS prof_rec
     ,coalesce(xr.ta_rec, "N/A") AS ta_rec
    FROM badm_2301.gradebook g
    JOIN badm_2301._students s ON s.student_id = g.student_id
    LEFT JOIN badm_2301._exit_responses xr ON xr.student_id = g.student_id
);
ALTER TABLE badm_2301._student_results ADD PRIMARY KEY(student_id);
