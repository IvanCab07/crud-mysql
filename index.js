import express from 'express';
import pool from './config/conexion.js';
const app = express()
const port = 3000
//pool.getConnection()

app.use(express.json())

app.post('/personas', async (req, res) => {
    const values = req.body
    const sql = 'INSERT INTO personas SET ?'
    try {
        const connection = await pool.getConnection()
        const [rows] = await connection.query(sql, values);
        connection.release();
        res.status(201).send("registro creado")
    } catch(error) {
        console.log('error en la ejecucion', error)
        res.status(500).send('error en la ejecucion')
    }
})

app.get('/', (req, res) => {
res.send('ejemplo de api rest mysql');
});

app.get('/personas', async (req, res) => {
    const sql = "SELECT * from personas"
    try {
        const connection = await pool.getConnection()
        const [rows] = await connection.query(sql)
        connection.release()
        res.json(rows)
    } catch (error) {
        res.status(500).send("error, no se pudo realizar la consulta")
    }
});

app.get('/personas/:id', async (req, res) => {
    const id = req.params.id
    const sql = "SELECT * from personas WHERE id=?"
    try {
        const connection = await pool.getConnection()
        const [rows] = await connection.query(sql, [id])
        connection.release()
        rows[0] ? res.json(rows[0]) : res.status(404).send('404')
    } catch (error) {
        console.error("Error al consultar por ID:", error)
        res.status(500).send("error, no se pudo realizar la consulta")
    }
});

app.put('/personas/:id', async (req, res) => {
    const id = req.params.id
    const value = req.body
    const sql = "UPDATE personas SET ? WHERE id=?"
    try {
        const connection = await pool.getConnection()
        const [rows] = await connection.query(sql, [value,id])
        connection.release()
        rows.affectedRows == 0 ? res.send('no existe') : res.status(200).send()
    } catch (error) {
        console.error("Error al consultar por ID:", error)
        res.status(500).send("error, no se pudo realizar la consulta")
    }
});

app.delete('/personas/:id', async (req, res) => {
    const id = req.params.id
    const sql = "DELETE from personas WHERE id=?"
    try {
        const connection = await pool.getConnection()
        const [rows] = await connection.query(sql, [id])
        connection.release()
        rows.affectedRows == 0 ? res.send('no existe') : res.status(204).send()
    } catch (error) {
        console.error("Error al consultar por ID:", error)
        res.status(500).send("error, no se pudo realizar la consulta")
    }
});

app.use((req,res) => {
    res.status(404).send('la pagina no existe')
})

app.listen(port, () => {
    console.log(`servidor escuchando en http://localhost:${port}`)
})
