const express = require("express")
const router = express.Router()
const db = require("../bin/db")

/* GET home page. */
router.get("/", function (req, res, next) {
    db.query(`SELECT * FROM posts ORDER BY id DESC`, function (err, rows) {
        if (err) throw err
        res.render("index", { rows: rows })
    })
})

router.get("/write", (req, res) => {
    res.render("write", {
        pageTitle: "New Post",
        id: "",
        title: "",
        contents: "",
        action: "/create",
    })
})

router.post("/create", (req, res) => {
    db.query(
        `INSERT INTO posts(title, contents) VALUES('${req.body.title}', '${req.body.contents}')`,
        function (err, rows) {
            if (err) throw err
            res.redirect("/")
        }
    )
})

router.get("/edit", (req, res) => {
    db.query(`SELECT * FROM posts WHERE id=${req.query.id}`, (err, rows) => {
        if (err) throw err
        res.render("write", {
            pageTitle: "Edit Post",
            id: rows[0].id,
            title: rows[0].title,
            contents: rows[0].contents,
            action: "/edit",
        })
    })
})

router.post("/edit", (req, res) => {
    db.query(
        `UPDATE posts SET title='${req.body.title}', contents='${req.body.contents}' WHERE id=${req.body.id}`,
        (err, rows) => {
            res.redirect("/")
        }
    )
})

router.get("/delete", (req, res) => {
    db.query(`DELETE FROM posts WHERE id = ${req.query.id}`, (err, rows) => {
        res.redirect("/")
    })
})

router.get("/like", (req, res) => {
    const like = req.query.type == "increase" ? "1" : "0"
    db.query(`UPDATE posts SET \`like\` = ${like} WHERE id = ${req.query.id}`, (err, rows) => {
        res.sendStatus(200)
    })
})

module.exports = router
