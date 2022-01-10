getMyRequests();
//getPetsAjax();

async function getMyRequests() {
    let response = await fetch(trmsAppUrl + '/myrequests/requestor/'+ empId );
    // let response = await fetch('http://localhost:8080/pets/8',{method:'PUT', body:JSON.stringify(petObj)});
    
    if (response.status === 200) {
        let myrequests = await response.json();
        console.log(myrequests);
        showrequests(myrequests);
    }
}



function showrequests(myrequests) {
    let requestTable = document.getElementById('myReimbursements');

    // for each pet in the array of pets that we got from the back end
    for (let Request of myrequests) {
        let rowForrequest = document.createElement('tr');

        // for each field in the pet (yes, we can iterate through fields)
        for (let field in Request) {
            let column = document.createElement('td');
            if (field!=='status') {
                
                column.innerText = Request[field];
            } 
            rowForrequest.appendChild(column);
        }
        requestTable.appendChild(rowForPet);
        document.getElementById('adopt' + Reimbursement.id).onclick = adoptPet;
    }
}

