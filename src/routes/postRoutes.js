const express = require('express');

const router = express.Router();
const apiKeyMiddleware = require("../config/apiKey");
const postController = require("../controllers/postControllers");

router.use(apiKeyMiddleware);

/**
 * @swagger
 * tags:
 *   name: Posts
 *   description: Gerenciamento de posts
 */

/**
 * @swagger
 * /api/post:
 *   get:
 *     summary: Lista todos os posts
 *     tags: [Posts]
 *     responses:
 *       200:
 *         description: Lista de posts
 * compnents:
 *      securtySchemes:
 *         apiKey:
 *         type: "apiKey"
 *         name: "x-api-key"
 *         in: "header"
 
 */
router.get("/", postController.getAllPosts);

/**
 * @swagger
 * /api/post/{id}:
 *   get:
 *     summary: Buscar post por ID
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post encontrado
 *       404:
 *         description: Post não encontrado
 */

router.get("/:id", postController.getById);

/**
 * @swagger
 * /api/post:
 *   post:
 *     summary: Cria um novo post
 *     tags: [Posts]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *               photo:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: Post criado
 */

router.post("/", postController.createPost);


/**
 * @swagger
 * /api/post/{id}:
 *   put:
 *     summary: Atualiza um post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *     responses:
 *       200:
 *         description: Post atualizado
 */

router.put("/:id", postController.updatePost);

/**
 * @swagger
 * /api/post/{id}:
 *   delete:
 *     summary: Deleta um post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post deletado
 */
router.delete("/:id", postController.deletePost);

module.exports = router;