console.log(1)

document.querySelector('body').innerHTML = localStorage.a

var openRequest = indexedDB.open('teste',1)

openRequest.onupgradeneeded = e => {
    console.log('banco criado')
    conection = e.target.result;
    conection.createObjectStore('colection1')
}

openRequest.onsuccess = e => {
    console.log('banco conectado')
    conection = e.target.result;
}

openRequest.onerror = e => {
    console.log(e.target.error)
}