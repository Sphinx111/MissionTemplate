//save as briefing.sqf and execVM from init.sqf
//Sphinx: Should be run after player has initialised using the code on next line
//   (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

//Switch (side player) checks which side the player loading the briefing file belongs to.
//Switch command takes a little longer to process than "if" statements, but are much much easier to use and read.

switch (side player) do 
{

case WEST: // BLUFOR briefing goes here
{
//player createDiaryRecord ["Diary", ["*The Note Title*", "*The Note Message*"]];


//Sphinx: The command CreateDiaryRecord creates a subheading underneath the main topics when you open the map screen ingame.
//In the code above ""CreateDiaryRecord ["Diary",["" will create a subheading underneath the Diary topic.
//If you want to create an entirely new heading, you can use the command: CreateDiarySubject. An example is given on the next line
//     player createDiarySubject ["Name to refer to topic, ie Diary","Topic name shown to player"]; 
//or:  player createDiarySubject ["Name to refer to topic, ie Diary","Topic name shown to player","Path to Image to add to the topic"];

_notes = player createDiaryRecord ["Diary",["Credits","
<font color='#FF0000'>Credits</font>
<br/><br/>
Mission by:
<br/><br/>
<br/>

"]];

_notes = player createDiaryRecord ["Diary",["Scripts","
Resources 
<br/><br/>
 <br/>
INS Revive<br>
Custom Cleanup script on enemy troops and vehicles
Custom HALO script in \Para

"]];

_notes = player createDiaryRecord ["Diary",["Mission Notes","
Win/Loose
<br/><br/>

"]];

_notes = player createDiaryRecord ["Diary",["OPORD","
1. SITUATION
<br/>----------------------<br/>
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor 
in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at 
vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br/>
Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. 
<font color='#FF0000'><marker name='unw'>West UN checkpoint</marker></font> 
and also provoked the UN troops by sporadic small arms fire. <br/><br/>

  
  1.a Enemy Forces<br/><br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/>
  <img image='101hq.jpg'/>
  <br/><br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/>
  <img image='unw.jpg'/>
  <br/><br/>
    Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/>
  <img image='radar.jpg'/>
  <br/><br/>
    Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/>
  <img image='field.jpg'/>
  <br/><br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.  <br/>
  <img image='town.jpg'/>
  <br/><br/>
  
  1.b Friendly Forces<br/><br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
  
  1.c Attachments/Detachments<br/><br/>

Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
2. MISSION
<br/>----------------------<br/>
Intent:<br/>
Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. 
<br/><br/>
Recon:<br/>
<br/><br/>
Plan:<br/>
Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
Coordination:<br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
ROE:<br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
Environment:<br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
Force Procection:<br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
3. SUSTAINMENT
<br/>----------------------<br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/><br/>
4. COMMAND AND CONTROL
<br/>----------------------<br/>
  Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. <br/>
"]];



//Sphinx: "CreateSimpleTask" command is now deprecated. Use the function "BIS_Fnc_SetTask" instead.
//instructions for use can be found in Function Browser in 2d editor or online at http://pastebin.com/d9iPpeCE
//An example replacement is provided in the next line below.
//   ["taskname",west,["Description of the example task","Example task name (pops up in screen)","What will be displayed on the map"],[TargetObject,50],1,true,false] call BIS_fnc_SetTask;
//This function does not need to be run from the briefing.sqf file and can be used anywhere.
//If the file containing this function is loaded by each client, the last argument should read false, if the file containing it is on the server only, it should read true (to send the task to all clients).

//Task1 - COMMENT
//task_1 = player createSimpleTask ["TASKNAME"]; 
//task_1 setSimpleTaskDescription ["TASK DESCRIPTION","Example Task","WHAT WILL BE DISPLAYED ON THE MAP"]; 
//task_1 setSimpleTaskDestination (getMarkerPos "task_1");
//task_1 setTaskState "Assigned"; 
//player setCurrentTask task_1;

//Task2 - COMMENT
//task_2 = player createSimpleTask ["TASKNAME"]; 
//task_2 setSimpleTaskDescription ["TASK DESCRIPTION","Example Task","WHAT WILL BE DISPLAYED ON THE MAP"]; 
//task_2 setSimpleTaskDestination (getMarkerPos "task_2");



};


case EAST: // OPFOR briefing goes here
{ 
};


case RESISTANCE: // RESISTANCE/INDEPENDENT briefing goes here
{ 
};


case CIVILIAN: // CIVILIAN briefing goes here
{ 
};
};
