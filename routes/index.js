const express = require("express")
const router = express.Router()
const db = require("../bin/db")

/* GET home page. */
router.get("/", function (req, res, next) {
    db.query(`SELECT * FROM posts`, function (err, rows) {
        if (err) throw err
        res.render("index", { rows: rows })
    })
})

router.get("/write", (req, res) => {
    res.render("write")
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

module.exports = router
