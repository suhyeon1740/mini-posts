const $like = document.querySelectorAll(".like")
$like.forEach((like) => {
    like.onclick = ({ target }) => {
        const id = target.parentNode.dataset.id
        const type = target.classList.contains("filled") ? "decrease" : "increase"
        fetch(`http://localhost:3000/like?id=${id}&type=${type}`).then(() => {
            if (type == "increase") {
                target.classList.add("fas", "filled")
                target.classList.remove("far")
            } else {
                target.classList.remove("fas", "filled")
                target.classList.add("far")
            }
        })
    }
})
