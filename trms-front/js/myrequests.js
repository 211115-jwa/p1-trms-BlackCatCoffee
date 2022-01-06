showRequests();

function showRequests(requests) {
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