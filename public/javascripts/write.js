const $form = document.querySelector("form")
$form.onsubmit = (e) => {
    if (!$form.title.value || !$form.contents.value) {
        alert("제목 또는 내용을 입력하세요")
        e.preventDefault()
    }
}
