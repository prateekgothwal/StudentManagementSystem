<%@taglib uri='/WEB-INF/tlds/mytags.tld' prefix='tm' %>
<script>
function City()
{
this.code=0;
this.name='';
}
function Student()
{
this.rollNumber=0;
this.name='';
this.address='';
this.city=null;
this.indian=false;
this.dateOfBirth='';
}
function ViewModel()
{
this.students=[];
this.selectedRow=null;
this.selectedIndex=-1;
this.cities=[];
}

var viewModel=new ViewModel();

var student;
<tm:TableIterator table='student_view' name='student' orderBy='name'>
student=new Student();
student.rollNumber=${student.rollNumber};
student.name='${student.name}';
student.address='${student.address}';
student.city=new City();
student.city.code=${student.cityCode};
student.city.name='${student.cityName}';
student.gender='${student.gender}';
student.indian='${student.indian}';
student.dateOfBirth='${student.dateOfBirth}';
viewModel.students[${index}]=student;
</tm:TableIterator>

var c;
<tm:TableIterator table='city' name='city' orderBy='name'>
c=new City();
c.code=${city.code};
c.name='${city.name}';
viewModel.cities[${index}]=c;
</tm:TableIterator>

function createRowClickedHandler(t,x)
{
return function()
{
selectRow(t,x);
};
}
function createEditStudentHandler(x)
{
return function()
{
editStudent(x);
};
}
function createDeleteStudentHandler(x)
{
return function()
{
deleteStudent(x);
};
}

function switchToDetailsView(x)
{
return function()
{
detailsView(x);
};
}


function selectRow(r,i)
{
if(r==viewModel.selectedRow) return;
if(viewModel.selectedRow!=null)
{
viewModel.selectedRow.style.background='#FFFFFF';
viewModel.selectedRow.style.color='#000000';
}
viewModel.selectedRow=r;
viewModel.selectedIndex=i;
r.style.background='#000000';
r.style.color='#FFFFFF';
}

var oend=viewModel.students.length-2;
var iend=viewModel.students.length-1;
var m;

for(var e=0;e<=oend;e++)
{
for(var f=e+1;f<=iend;f++)
{
if(viewModel.students[f].name.toUpperCase().localeCompare(viewModel.students[e].name.toUpperCase())<0)
{
m=viewModel.students[e];
viewModel.students[e]=viewModel.students[f];
viewModel.students[f]=m;
}
}
}

function selectStudent(rollNo)
{
var i=0;
while(i<viewModel.students.length)
{
if(viewModel.students[i].rollNumber==rollNo)
{
break;
}
i++;
}
var scroll=document.getElementById('studentViewGrid').rows[i+1];
selectRow(scroll,i);
//scroll.scrollIntoView();
}

function initializeView()
{
var tableBody=document.getElementById('studentViewGrid');

var i=0;
var row,cell,textNode;
while(i<viewModel.students.length)
{
row=document.createElement('tr');
cell=document.createElement('td');
cell.innerHTML=(i+1)+'.';
cell.style.textAlign='right';
row.appendChild(cell);

cell=document.createElement('td');
textNode=document.createTextNode(viewModel.students[i].rollNumber);
cell.appendChild(textNode);
cell.style.textAlign='right';
row.appendChild(cell);

cell=document.createElement('td');
textNode=document.createTextNode(viewModel.students[i].name);
cell.appendChild(textNode);
row.appendChild(cell);

cell=document.createElement('td');
textNode=document.createTextNode(viewModel.students[i].city.name);
cell.appendChild(textNode);
row.appendChild(cell);

cell=document.createElement('td');
img=document.createElement('img');
if(viewModel.students[i].gender=='M')
{
img.src='/styleone/images/male_icon.png';
}
else
{
img.src='/styleone/images/female_icon.png';
}
cell.style.textAlign='center';
cell.appendChild(img);
row.appendChild(cell);

cell=document.createElement('td');
textNode=document.createTextNode(viewModel.students[i].dateOfBirth);
cell.appendChild(textNode);
row.appendChild(cell);

cell=document.createElement('td');
img=document.createElement('img');
img.src='/styleone/images/edit_icon.png';
img.onclick=createEditStudentHandler(i);
cell.appendChild(img);
row.appendChild(cell);

cell=document.createElement('td');
img=document.createElement('img');
img.src='/styleone/images/delete_icon.png';
img.onclick=createDeleteStudentHandler(i);
cell.appendChild(img);
row.appendChild(cell);

cell=document.createElement('td');
img=document.createElement('img');
img.src='/styleone/images/detail_icon.png';
img.onclick=switchToDetailsView(i);
cell.appendChild(img);
row.appendChild(cell);

row.style.cursor='pointer';
row.onclick=createRowClickedHandler(row,i);
tableBody.appendChild(row);

<tm:Equals name='scenario' value='added'>
selectStudent(${studentBean.rollNumber})
</tm:Equals>

<tm:Equals name='scenario' value='edited'>
selectStudent(${studentBean.rollNumber})
</tm:Equals>

i++;
}

var addFormCityCode=document.getElementById('act');
i=0;
var option;
while(i<viewModel.cities.length)
{
option=document.createElement('option');
option.text=viewModel.cities[i].name;
option.value=viewModel.cities[i].code;
addFormCityCode.options[i+1]=option;
i++;
}

var editFormCityCode=document.getElementById('ect');
i=0;
while(i<viewModel.cities.length)
{
option=document.createElement('option');
option.text=viewModel.cities[i].name;
option.value=viewModel.cities[i].code;
editFormCityCode.options[i+1]=option;
i++;
}
}

function addStudentValidator()
{
var roll=document.getElementById('aroll').value;
var i=0;
for(i=0;i<viewModel.students.length;i++)
{
if(viewModel.students[i].rollNumber==roll)
{
break;
}
}
if(i==viewModel.students.length)
{
alert('nahi mila');
var rollNumber=document.getElementById('aroll').value;
var name=document.getElementById('aname').value;
var address=document.getElementById('aaddr').value;
var city=document.getElementById('act').selectedIndex;
var gender;
if(document.getElementById('aml').checked)
{
gender='M'
}
else
{
gender='F';
}
var indian;
if(document.getElementById('aind').checked)
{
indian=true;
}
else
{
indian=false;
}
var dob=document.getElementById('adob').value;
var link=document.createElement('a');
var path="/stylethree/AddStudent.jsp?rollNumber="+roll+"&name="+name+"&address="+address+"&cityCode="+city+"&gender="+gender+"&indian="+indian+"&dateOfBirth="+dob+"";
link.href=encodeURI(path);
link.click();
}
else
{
alert('mil gaya');
fromAddToGridView();
var scroll=document.getElementById('studentViewGrid').rows[i+1];
selectRow(scroll,i);
scroll.scrollIntoView();
}
}

function editStudent(index)
{
editStudentViewModalButton.click();
document.getElementById('eHiddenRoll').value=viewModel.students[index].rollNumber;
document.getElementById('eroll').innerHTML=viewModel.students[index].rollNumber;
document.getElementById('ename').value=viewModel.students[index].name;
document.getElementById('eaddr').value=viewModel.students[index].address;
document.getElementById('ect').selectedIndex=viewModel.students[index].city.code;
if(viewModel.students[index].gender=='M')
{
document.getElementById('eml').checked=true;
}
else
{
document.getElementById('efe').checked=true;
}
if(viewModel.students[index].indian=="true")
{
document.getElementById('eind').checked=true;
}
else
{
document.getElementById('eind').checked=false;
}
document.getElementById('edob').value=viewModel.students[index].dateOfBirth;
}

function deleteStudent(index)
{
deleteStudentViewModalButton.click();
var rollNumber=viewModel.students[index].rollNumber;
var studentDeleteForm=document.getElementById('studentDeleteForm');
studentDeleteForm.rollNumber.value=rollNumber;

//var studentViewGrid=document.getElementById('gridContainer');
//studentViewGrid.style.display='none';
//var detailsView=document.getElementById('deleteStudentViewModal');
//detailsView.style.display='block';

document.getElementById('deleteStudentViewRollNumber').innerHTML=viewModel.students[index].rollNumber;
document.getElementById('deleteStudentViewName').innerHTML=viewModel.students[index].name;
document.getElementById('deleteStudentViewCity').innerHTML=viewModel.students[index].city.name;
document.getElementById('deleteStudentViewGender').innerHTML=viewModel.students[index].gender;
document.getElementById('deleteStudentViewDOB').innerHTML=viewModel.students[index].dateOfBirth;
document.getElementById('deleteStudentViewIsIndian').innerHTML=viewModel.students[index].indian;
document.getElementById('deleteStudentViewAddress').innerHTML=viewModel.students[index].address;
}

function detailsView(index)
{
detailsViewModalButton.click();
document.getElementById('detailsViewRollNumber').innerHTML=viewModel.students[index].rollNumber;
document.getElementById('detailsViewName').innerHTML=viewModel.students[index].name;
document.getElementById('detailsViewCity').innerHTML=viewModel.students[index].city.name;
document.getElementById('detailsViewGender').innerHTML=viewModel.students[index].gender;
document.getElementById('detailsViewDOB').innerHTML=viewModel.students[index].dateOfBirth;
document.getElementById('detailsViewIsIndian').innerHTML=viewModel.students[index].indian;
document.getElementById('detailsViewAddress').innerHTML=viewModel.students[index].address;
}

function switchToGridView()
{
var studentViewGrid=document.getElementById('gridContainer');
studentViewGrid.style.display='block';
var detailsView=document.getElementById('detailsView');
detailsView.style.display='none';
}

function addStudentHandler()
{
var studentViewGrid=document.getElementById('gridContainer');
studentViewGrid.style.display='none';
var addStudentView=document.getElementById('addStudentView');
addStudentView.style.display='block';
}

function fromAddToGridView()
{
var studentViewGrid=document.getElementById('gridContainer');
studentViewGrid.style.display='block';
var detailsView=document.getElementById('addStudentView');
detailsView.style.display='none';
document.getElementById('aroll').value='';
document.getElementById('aname').value='';
document.getElementById('act').selectedIndex='0';
document.getElementById('aml').checked=false;
document.getElementById('afe').checked=false;
document.getElementById('adob').value='';
document.getElementById('aind').checked=false;
document.getElementById('aaddr').value='';
}

function fromEditToGridView()
{
var studentViewGrid=document.getElementById('gridContainer');
studentViewGrid.style.display='block';
var detailsView=document.getElementById('editStudentView');
detailsView.style.display='none';
}

function fromDeleteToGridView()
{
var studentViewGrid=document.getElementById('gridContainer');
studentViewGrid.style.display='block';
var deleteStudentView=document.getElementById('deleteStudentView');
deleteStudentView.style.display='none';
}


function searchStudent(t)
{
t.style.color='black';
if(t.value.length==0) return;
var i;
for(i=0;i<viewModel.students.length;i++)
{
if(viewModel.students[i].name.toUpperCase().startsWith(t.value.toUpperCase())) break;
}
if(i==viewModel.students.length)
{
t.style.color='red';
}
else
{
/*
gather the reference of the table
see to it that you extract the reference of the ith row
selectRow(reference of the ith Row,i);
see if you can understand/manage the scroll To Top factor
*/
var scroll=document.getElementById('studentViewGrid').rows[i+1];
selectRow(scroll,i);
scroll.scrollIntoView();
}
}

window.addEventListener('load',initializeView);
</script>