const $like = document.querySelectorAll('.like')
$like.forEach(like => {
    like.onclick = ({target}) => {
        const id = target.parentNode.dataset.id
        fetch(`http://localhost:3000/like?id=${id}&type=`)
            .then(response => response.json())
            .then(data => console.log(data));
    }
})