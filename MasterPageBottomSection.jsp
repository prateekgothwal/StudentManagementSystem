<div id='detailsView' style='display:none;'>
<table style='align:center';>
<tr>
<td>Roll Number : <span id='detailsViewRollNumber'></span></td>
</tr>
<tr>
<td>Name : <span id='detailsViewName'></span></td>
</tr>
<tr>
<td>City : <span id='detailsViewCity'></span></td>
</tr>
<tr>
<td>Gender : <span id='detailsViewGender'></span></td>
</tr>
<tr>
<td>D.O.B. : <span id='detailsViewDOB'></span></td>
</tr>
<tr>
<td>Is Indian : <span id='detailsViewIsIndian'></span></td>
</tr>
<tr>
<td> Address : <span id='detailsViewAddress'></span></td>
</tr>
<tr>
<td><button  onclick='switchToGridView()'>BACK</button></td>
</tr>
</table>
</div>

<div id='addStudentView' style='display:none;'>
<form action='/stylethree/AddStudent.jsp'>
<table style='align:center';>
<tr>
<td>Roll Number : <input type='text' name='rollNumber' id='aroll'></td>
</tr>
<tr>
<td>Name : <input type='text' name='name' id='aname'></td>
</tr>
<tr>
<td>City :
<select id='act' name='cityCode'>
<option value='-1'>&lt;Select City&gt;</option>
</select>
</td>
</tr>
<tr>
<td>Gender : 
<input type='radio' value='M' id='aml' name='gender'> Male
&nbsp;&nbsp;&nbsp;&nbsp;<input type='radio' value='F' id='afe' name='gender'> Female
<span id='gdrErrorSection'>
</span></td>
</tr>
<tr>
<td>D.O.B. : <input type='date' id='adob' name='dateOfBirth'></td>
</tr>
<tr>
<td>Is Indian : <input type='checkbox' id='aind' name='indian' value='Y'>
</td>
</tr>
<tr>
<td> Address : <input type='textarea' rows='10' cols='50' id='aaddr' name='address'></td>
</tr>
<tr>
<td><button type='button' onclick='addStudentValidator()'>ADD</button><button type='button' onclick='fromAddToGridView()'>CANCEL</button></td>
</tr>
</table>
</form>
</div>

<div id='deleteStudentView' style='display:none;'>
<form id='studentDeleteForm' action='/stylethree/DeleteStudent.jsp'>
<input type='hidden' name='rollNumber' >
<table style='align:center';>
<tr>
<td>Roll Number : <span id='deleteStudentViewRollNumber'></span></td>
</tr>
<tr>
<td>Name : <span id='deleteStudentViewName'></span></td>
</tr>
<tr>
<td>City : <span id='deleteStudentViewCity'></span></td>
</tr>
<tr>
<td>Gender : <span id='deleteStudentViewGender'></span></td>
</tr>
<tr>
<td>D.O.B. : <span id='deleteStudentViewDOB'></span></td>
</tr>
<tr>
<td>Is Indian : <span id='deleteStudentViewIsIndian'></span></td>
</tr>
<tr>
<td> Address : <span id='deleteStudentViewAddress'></span></td>
</tr>
<tr>
<td><button type='submit'>DELETE</button><button type='button' onclick='fromDeleteToGridView()'>CANCEL</button></td>
</tr>
</table>
</form>
</div>

<div id='editStudentView' style='display:none;'>
<form action='/stylethree/EditStudent.jsp'>
<input type='hidden' id='eHiddenRoll' name='rollNumber'>
<table style='align:center';>
<tr>
<td>Roll Number : <span id='eroll'></span></td>
</tr>
<tr>
<td>Name : <input type='text' name='name' id='ename'></td>
</tr>
<tr>
<td>City :
<select id='ect' name='cityCode'>
<option value='-1'>&lt;Select City&gt;</option>
</select>
</td>
</tr>
<tr>
<td>Gender : 
<input type='radio' value='M' id='eml' name='gender'> Male
&nbsp;&nbsp;&nbsp;&nbsp;<input type='radio' value='F' id='efe' name='gender'> Female
<span id='gdrErrorSection'>
</span></td>
</tr>
<tr>
<td>D.O.B. : <input type='date' id='edob' name='dateOfBirth'></td>
</tr>
<tr>
<td>Is Indian : <input type='checkbox' id='eind' name='indian' value='Y'>
</td>
</tr>
<tr>
<td> Address : <input type='textarea' rows='10' cols='50' id='eaddr' name='address'></td>
</tr>
<tr>
<td><button type='submit'>UPDATE</button><button type='button' onclick='fromEditToGridView()'>CANCEL</button></td>
</tr>
</table>
</form>
</div>

</td>
</tr>
</table>
<center style='font-weight:10pt'>&copy; 2020 ABCD Corporation</center>
</body>
</html>