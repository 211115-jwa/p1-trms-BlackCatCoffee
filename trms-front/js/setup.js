"use strict";

let trmsAppUrl = 'http://localhost:8080/';
let loggedInEmployee;


checkLogin().then(setupNav);

async function checkLogin(){
    let empId = localStorage.getItem('Token');
    if(empId) {
        let response = await fetch(trmsAppUrl + 'requests/'+empId+ '/auth');
        if(response.status === 200){
            loggedInEmployee = await response.json();
        }
    }
}

function setupNav() {
    let nav = document.getElementById('nav');

    if(!loggedInEmployee) {
        nav.innerHTML = `<span id="navLeft">
        <a href="index.html"><b>Submit Request</b></a>
        <a href="myrequests.html">Employee Requests</a>
        <a hidden>My Pets</a>
        </span>
        <span id="navRight">
        <button id="login">Log In</button>
        </span>`;

        document.getElementById('login').addEventListener('click',openLogin);
    }else if (loggedInEmployee.role.name === 'Employee'){
        
    }
    
}