const express = require('express')
const app = express()
app.set('view engine', 'pug')

const port = process.env.PORT || 3000;

app.get('/', function (req, res) {
    res.render('index', { 
        title: 'Hey', 
        workDir: `working directory: ${process.cwd()}`, 
        args: `args: ${JSON.stringify(process.argv, null, 2)}`,
        env: `env: ${JSON.stringify(process.env, null, 2)}` 
    })
        
})

app.get('/exit/:code', function (req, res) {
    res.redirect('/')
    setTimeout(()=> {
        console.log('exit', req.params.code )
        process.exit(req.params.code)
    }, 1000)
})

app.get('/error/:message', function (req, res, next) {
    res.redirect('/')
    setTimeout(()=> {
        throw Error(req.params.message)
    }, 1000)
    
})

console.log(`http://localhost:${port}/`)
app.listen(3002)