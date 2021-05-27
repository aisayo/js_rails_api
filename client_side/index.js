const authorsList = document.querySelector("#books-list")

fetch('http://localhost:3000/authors')
.then(resp => resp.json())
.then(authors => {
    // authors.data returns array of author objects
    let authorsArray = authors.data

    authorsArray = authorsArray.map((author) => {
        // author returns: {id: "1", type: "author", attributes: {…}, relationships: {…}}

        let authorName = author.attributes.name
        let authorId = author.attributes.id
        let li = document.createElement('li')
        li.id = authorId
        li.innerText = `${authorName}`
        return li
    })

    authorsArray.forEach(author => {
        authorsList.append(author)
    });
})