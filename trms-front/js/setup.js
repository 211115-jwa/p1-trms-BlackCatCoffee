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
        <a href="requestform.html"><b>Submit Request</b></a>
        <a href="myrequests.html">Employee Requests</a>
        <a hidden>Employee Requests</a>
        </span>
        <span id="navRight">
        <button id="login">Log In</button>
        </span>`;

        document.getElementById('login').addEventListener('click',openLogin);
    }else if (loggedInEmployee.role.name === 'Employee'){
        nav.innerHTML = `<span id="navLeft">
        <a href="requestform.html"><b>Submit Request</b></a>
        <a href="myrequests.html">My Requests</a>
        <a hidden>Employee Requests</a>
        </span>
        <span id="navRight">
        <button id="logout">Log Out</button>
        </span>`;
        
        document.getElementById('logout').addEventListener('click',logOut);
    }else if (loggedInEmployee.role.name === 'Direct Supervisor'){
        nav.innerHTML = `<span id="navLeft">
        <a href="submitrequest.html"><b>Submit Request</b></a>
        <a href="myrequests.html.html">My Requests</a>
        <a hidden>Employee Requests</a>
        </span>
        <span id="navRight">
        <a id="manageUser" href="manage.html">${loggedInPerson.username}</a>
        <button id="logout">Log Out</button>
        <button id="veiwRequests">View Requests</button>
        </span>`;
        document.getElementById('veiwRequests').addEventListener('click',veiwRequest);
        document.getElementById('logout').addEventListener('click',logOut);
    }else if (loggedInEmployee.role.name === 'Department Head') {
        nav.innerHTML = `<span id="navLeft">
        <a href="submitrequest.html"><b>Submit Request</b></a>
        <a href="myrequests.html.html">My Requests</a>
        <a hidden>Employee Requests</a>
        </span>
        <span id="navRight">
        <a id="manageUser" href="manage.html">${loggedInPerson.username}</a>
        <button id="logout">Log Out</button>
        <button id="veiwRequests">View Requests</button>
        </span>`;
        document.getElementById('veiwRequests').addEventListener('click',veiwRequest);
        document.getElementById('logout').addEventListener('click',logOut);
    }else if (loggedInEmployee.role.name === 'BenCo Coordinator') {
        nav.innerHTML = `<span id="navLeft">
        <a href="altercost.html"><b>Cost Covered</b></a>
        <a href="myrequests.html.html">My Requests</a>
        <a hidden>Employee Requests</a>
        </span>
        <span id="navRight">
        <a id="manageUser" href="manage.html">${loggedInPerson.username}</a>
        <button id="logout">Log Out</button>
        <button id="veiwRequests">View Requests</button>
        </span>`;
        document.getElementById('veiwRequests').addEventListener('click',veiwRequest);
        document.getElementById('logout').addEventListener('click',logOut);
    
}

function openLogin() {
    let loginPane = document.createElement('section');
    loginPane.id = 'loginPane';
    loginPane.innerHTML = `
        <form class="loginForm" id="loginForm">
            <h2>Log In</h2>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username">
            &nbsp;
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
            <button id="loginBtn" type="button">Submit</button>
            </form>
            `;
            document.getElementsByTagName('main')[0].insertAdjacentElement("beforebegin",loginPane)
            document.getElementById('login').removeEventListener('click',openLogin);
            document.getElementById('loginBtn').addEventListener('click',submitLogin);
            document.getElementById('login').addEventListener('click',closeLogin);
}

function closeLogin(){
    if(document.getElementById('loginForm')) {
        document.getElementById('loginForm').remove();
    }
    if (document.getElementById('login')) {
        document.getElementById('login').addEventListener('click',openLogin);
    }
}

async function submitLogin() {
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;

    let credentials = {
        'username':username,
        'password':password
    };

    let response = await fetch(trmsAppUrl + 'employee/auth',{method:'POST',body:JSON.stringify(credentials)});
    if(response.status===200) {
        let token = await response.text();
        localStorage.setItem('Token',token);
        checkLogin().then(setupNav);
    }else if (response.status===404){
        let msg = await response.text();
        alert(msg);
    }
}

function logOut() {
    localStorage.removeItem('Token');
    loggedInEmployee=null;
    checkLogin().then(setupNav);
}

}