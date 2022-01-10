checkLogin().then(() => {
    console.log(loggedInEmployee);
    if(loggedInEmployee.viewrequests || loggedInEmployee.viewrequests.size>0)
        showRequests(loggedInEmployee.viewrequests);
    else {
        document.getElementById('emprequest').remove();

        let noRequests = document.createElement('p');
        noRequests.innerHTML = 'you dont have any requests'
    }
})
showRequests();

function showEmpRequests(requests) {
    let requestTable = document.getElementById('myReimbursements');

    for(let request of requests) {
        let rowForRequest = document.createElement('tr');

        for (let field in request) {
            let column = document.createElement('td');
            if(field!=='status') {
                column.innerText = request[field];
            }
            rowForRequest.appendChild(column);
        }
        requestTable.appendChild(rowForRequest);
    }
}