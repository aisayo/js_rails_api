const authorsList = document.querySelector("#books-list")

fetch('http://localhost:3000/authors')
.then(resp => resp.json())
.then(renderAuthors)

function renderAuthors(authors){
        // authors.data returns array of author objects
        let authorsArray = authors.data
        let authorsElements = authorsArray.map((author) => {
            // author returns: {id: "1", type: "author", attributes: {…}, relationships: {…}}
            return createAuthorElement(author)
        })
        appendAuthor(authorsElements)
}

function createAuthorElement(author){
    let authorName = author.attributes.name
    let authorId = author.attributes.id
    let li = document.createElement('li')
    li.id = authorId
    li.innerText = `${authorName}`
    return li
}

function appendAuthor(authorsElements){
    authorsElements.forEach(author => {
        authorsList.append(author)
    });
}