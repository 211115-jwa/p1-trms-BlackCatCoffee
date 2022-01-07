
function login(){
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value; 
    console.log(username);
    console.log(password);   
}

let logBtn = document.getElementById('logBtn');
logBtn.addEventListener('click',login);