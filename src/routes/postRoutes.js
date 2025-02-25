const express = require("express");
const router = express.Router();
const postsController = require("../controllers/postsControllers");

router.get("/posts", postsController.getAllPosts);
router.get("/posts/:id", postsController.getPostById);
router.post("/posts", postsController.addPost);
router.delete("/posts/:id", postsController.deletePost);
router.put("/posts/:id", postsController.updatePost);

module.exports = router;