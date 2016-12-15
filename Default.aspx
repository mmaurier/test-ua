<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Major Application</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
<%--    <link href="Content/bootstrap-theme.css" rel="stylesheet" />--%>
    <link href="Content/StyleSheet.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/scripts.js"></script>

</head>
<body>
<div class="container">
    <div id="introduction">
        <h1>Introduction</h1>

        <p>An application to the College of Business and Economics is required of all students
        enrolled at WVU-Morgantown and Potomac State College. Transfer students should apply
        to <a href="http://admissions.wvu.edu">WVU Office of Admissions.</a></p>
        <p>This form is a check list of all the 
        criteria required to apply for a degree program and academic major in the College of Business and Economics.  If you meet all the required 
        criteria, you will be directed to the application form. You need to provide a response to every 
        item in this form.</p>
                
        <h2>Instructions</h2>
        <p>Carefully read and follow the steps under the heading 'Instructions' for every step of the application process.
        Check the box stating that you have read and understood this page then press the 'Start the check list' button.</p>
        <p><b>The minimum overall GPA for the majors of General Business and Hospitality and Tourism Management is 2.00. The minimum overall GPA for all other majors is 2.50.</b></p>                          
        <p>You have approximately <b>45</b> minutes to complete the checklist and application before your web browser times out.<br />  
        All the required information can be found in your <a href="http://mix.wvu.edu">mix.wvu.edu</a> account.<br /> Required information includes:</p>                
        <ul>
            <li>WVU ID: Student assigned ID number</li>
            <li>WVU Start Time: Term and year started at WVU</li>
            <li>Number of Credits: Completed and currently enrolled</li>
            <li>Cumulative GPA: Overall Grade Point Average</li>
            <li>Desired Degree and Major: Degree and Major the student desires to pursue</li>
            <li>Prerequisite Courses:
            <ul>  
                <li>Accounting 201, 202 </li>
                <li>Computer Science 101</li>
                <li>Economics 201,202</li>
                <li>Economics 225 or Statistics 211</li>
                <li>English 101,102 or 103</li>
                <li>Math 126(A, B, or C), 129, or 153</li>
                <li>Math 150, 154, 155, or 156</li>
            </ul></li>  
        </ul>

        <input type="checkbox" id="cbStart" value="" /> I have read and understand the introduction.<br />
        <input type="submit" class="btn btn-primary" id="btnStart" value="Start the check list" />

    </div>         

    <div id="wvuidcheck">
        <h1>WVU ID Check</h1>
        <h2>Instructions</h2>
        <p><strong>To enter your student ID:</strong><br />Click on the box to enter your WVU ID; the 9 digit number assigned
        to you by WVU. Enter <strong>only</strong> numbers. <br />If you do not have WVU ID <a href='https://centralid.wvu.edu/wvuid/' target='_blank'>click here</a>.</p>

        Enter your WVU ID<br />
        <input type="number" class="form-control" name="tbwvuid" id="tbwvuid"/><br />
        <input type="submit" class="btn btn-primary" id="btnWvuId" value="Save WVU ID" />
        <br />&nbsp;<br />
        <p><strong>To continue to the next step:</strong><br />
        Press the button 'Save WVU ID'. Then click the 'WVU Start Time' tab on the left hand side of the page.</p>
    </div>

    <div id="wvustarttime">
        <h1>WVU Start Time</h1>
        <h2>Instructions</h2>
        <p><strong>To enter WVU start term and year:</strong><br />
        Click on the boxes and select from the drop down lists for the term and year started at WVU.</p>
        
        Term you started at WVU<br />
        <select class="form-control" id="ddtermSelect" ></select>
        <br /><br />Year you started at WVU<br />
        <select class="form-control" id="ddyearSelect"></select> 
        <br />&nbsp;<br />
        <input type="submit" class="btn btn-primary" id="btnWvuStart" value="Save WVU Start Time" />
        <br />&nbsp;<br />
        <p><strong>To continue to the next step:</strong><br />
        Press the button 'Save WVU Start Time'. Then click on the 'Number of Credits' tab on the left hand side of the page.</p>
    </div>

    <div id="credits">
        <h1>Number of Credits</h1>
        <h2>Instructions</h2>
        <p>Enter the number of overall credit hours earned, and the credit hours that you are taking this current term.<br />            
            Click the text box to the left of each and input the number of credits applicable.<br />
            The number of credits completed and the number of credits currently enrolled must 
            total <b>45 </b>credits.</p>
        Number of overall earned hours<br />
        <input type="text" class="form-control" name="tboverallcredits" id="tboverallcredits"/><br />
        Number of credits currently enrolled<br />
        <input type="text" class="form-control" name="tbenrolledcredits" id="tbenrolledcredits" /><br /> 
        Number of credits you expect to enroll during the summer term<br />
        <input type="text" class="form-control" name="tb" /> <br />
        <input type="submit" class="btn btn-primary" id="btnCredits" value="Save Credits" />
        <br />&nbsp;<br />
        <p><strong>To continue to the next step:</strong><br />
        Press the button 'Save Credits'. Then click on the 'Cumulative GPA' tab on the left hand side of the page.</p>
    </div>

    <div id="gpa">
        <h1>Overall Grade Point Average</h1>
        <h2>Instructions</h2>
        <p>Click on the box and type in your overall GPA. <br />The minimum GPA accepted is <strong>2.0</strong>.</p>
        Enter your GPA <br />
        <input type="text" class="form-control" name="tbgpa" id="tbgpa" /><br />
        <input type="submit" class="btn btn-primary" id="btnGPA" value="Save GPA" />
        <br />&nbsp;<br /> 
        <p><strong>To continue to the next step:</strong><br />
        Press the button 'Save GPA'. Then click on the 'Intended Degree and Major' tab on the left hand side of the page.</p>
    </div>

    <div id="major">
        <h1>Intended Degree and Major</h1>
        <h2>Instructions</h2>
        <p><strong>Choose your degree:</strong><br />Select from the list next to 'Select a degree' for what degree you wish to pursue.</p>
        <p><strong>Choose your major:</strong><br />Select from the list next to 'Select a major' for the major you wish to pursue.</p>
        Select a degree<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Select a major<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="">2015</option>
            <option value="">2014</option>
            <option value="">2013</option>
        </select>
        <br /><br />
        <input type="submit" class="btn btn-primary" id="btnMajor" value="Save Degree/Major" />
        <br />&nbsp;<br />
        <p><strong>To continue to the next step:</strong><br />
        Press the button 'Save Degree/Major'. Then click on the 'Prerequisite Courses' tab on the left hand side of the page.</p>
    </div>

    <div id="courses">
        <h1>Prerequisite Courses</h1>
        <h2>Instructions</h2>
        <p><strong>To enter class requirements:</strong><br />
            Read the 'Math class requirements' and the 'Course Options' bullet points, then select the corresponding 
            option from each of the drop down lists below.</p>
        <p ><strong>Math class requirements:</strong><br />
            You must complete either Math 150, Math 153 and Math 154, or Math 155 or higher 
            by the end of the current term with the required grade for your major in order to be admitted.<br /></p>
        <h2>Course Options :</h2>

        <ol type="i">
            <li>For the completed courses select 'Yes' or 'No' depending on your course grade.</li>   
            <li>Select 'Currently enrolled', or 'Waiver' for the courses that apply.</li>    
        </ol><br />

        Accounting 201: C- or better <br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Accounting 202:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Computer Science 101:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Economics 201:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Economics 202:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Economics 225 or Statistics 211:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        
        <br /><br />
        <ol >
            <li>You need to have completed either English 101 and 102 or English 103.</li> 
            <li>If completed English 101 and 102, select 'Waiver' for English 103.</li>
            <li>If completed English 103, select 'Waiver' for English 101 and 102.</li>
        </ol>

        English 101:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />English 102:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />English 103:  C- or better<br /> 
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        
        <br /><br />
        <ol >
            <li>If you are currently enrolled in Math 150
            select 'Currently enrolled' from the 'Math 150' list,
            then select 'Waiver' for 'Math 126(A, B, or C)' and 'Math 154 or Math 155 or Math 156'.</li>
            <li>If you are currently enrolled in Math 154 or Math 155
            select 'Currently enrolled' from the 'Math 154 or Math 155 or Math 156' list,
            then select 'Waiver' for 'Math 126(A, B, or C)' and 'Math 150'. </li>
        </ol><br />

        Math 126(A, B, or C), 129, or 153:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Math 150 :  C- or better <br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />Math 154 or Math 155 or Math 156:  C- or better<br />
        <select class="selectpicker">
            <option value=""></option>
            <option value="Spring">Spring</option>
            <option value="Summer">Summer</option>
            <option value="Spring">Spring</option>
        </select>
        <br /><br />
        <input type="submit" class="btn btn-primary" id="btnCourses" value="Save Degree/Major" />
        <br />&nbsp;<br />
        <p><strong>To continue to the next step:</strong><br />
            Press the button 'Save Courses'. Then click on the 'Checklist Review' tab on the left hand side of the page.</p>
    </div>

    <div id="review">
        <h1>Checklist Review</h1>
        <h2>Instructions</h2>
        <p><strong>To start the application:</strong><br />
            Review all the information entered.  If you need to change something, click the tab you need to change on the left
            hand side of the page. Be aware that if you change your intended major and degree you will have to redo the 'Prerequisite Courses' options.</p>

        WVU ID: <span id="rev_wvuid"> n/a </span><img src="images/error.gif" /><br />
        WVU start time: <span id="rev_starttime"> n/a </span><img src="images/error.gif" /><br />
        Credits: <span id="rev_credits"> n/a </span><img src="images/error.gif" /><br />
        Cumulative GPA: <span id="rev_gpa"> n/a </span><img src="images/error.gif" /><br />
        Intended degree: <span id="rev_degree"> n/a </span><img src="images/error.gif" /><br />
        Intended major: <span id="rev_major"> n/a </span><img src="images/error.gif" /><br />
        Prerequisite courses: <span id="rev_courses"> n/a </span><img src="images/error.gif" /><br /><br />
        <input type="submit" class="btn btn-success" id="btnStartApplication" value="Start Application" /><br /><br />
        <p><strong>To continue to the next step:</strong><br />Press the button 'Start Application'.</p>
    </div>
</div>
</body>
</html>

