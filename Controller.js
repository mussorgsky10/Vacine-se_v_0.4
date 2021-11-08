//nodemon Controller.js

const express=require('express');
const cors=require('cors');
const models=require('./models');

const app=express();
app.use(cors());
app.use(express.json()) //For JSON requests
app.use(express.urlencoded({extended: true}));
let vacinado=models.Vacinado;
let uso=models.Uso;
let recompensa=models.Recompensa;
let sorteio=models.Sorteio;
let sorteado=models.Sorteado;

app.post('/create',async (req,res)=>{
    let create = await vacinado.create({
        nome: req.body.name,
        telefone: req.body.phone,
        createdAt: new Date(),
        updatedAt: new Date()
    });
});

app.post('/create-recompensa',async (req,res)=>{
    let create = await recompensa.create({
        item: req.body.item,
        descricao: req.body.descricao,
        createdAt: new Date(),
        updatedAt: new Date()
    });
});

app.post('/create-sorteado',async (req,res)=>{
    let create = await sorteado.create({
        numero_sorteado: req.body.numero_sorteado,
        createdAt: new Date(),
        updatedAt: new Date()
    });
});

app.post('/create-uso',async (req,res)=>{
    let create = await uso.create({
        userId: req.body.userId,
        nome: req.body.nome,
        badge: req.body.badge,
        createdAt: new Date(),
        updatedAt: new Date()
    });
});

app.post('/read', async (req,res)=>{
    try {
    const users = await vacinado.findAll();
    if(response === null){
        res.send(JSON.stringify(`Nenhum usuário encontrado`));
    }else{
        res.send(JSON.stringify(response))
    }} catch (error) {
        console.error(error);
      }
});

app.post('/uso-cracha', async (req,res)=>{
    let response=await uso.findOne({
        where:{userId:req.body.userId},
        include:[{all:true}]
    });
    if(response === null){
        res.send(JSON.stringify(`Sem crachá!`));
    }else{
        res.send(JSON.stringify(response.badge))
    }
});

app.get('/create',async (req,res)=>{
    let create=await vacinado.create({
        nome: "joao",
        telefone: "12348456123",
        createdAt: new Date(),
        updatedAt: new Date()
    });
    res.send('Usuário criado com sucesso!');
});

app.get('/create-recompensa',async (req,res)=>{
    let create=await recompensa.create({
        item: "Maria",
        descricao: "Mole",
        createdAt: new Date(),
        updatedAt: new Date()
    });
    res.send('Recompensa criada com sucesso!');
});

app.get('/read', async (req,res)=>{
    let read=await vacinado.findAll({
        raw:true,
    });
    //console.log(read);
    res.send(read);
});

app.get('/read-sorteados', async (req,res)=>{
    let read=await sorteado.findAll({
        raw:true,
    });
    //console.log(read);
    res.send(read);
});

app.get('/uso-cracha', async (req,res)=>{
    let response=await uso.findByPk(1);
    if(response === null){
        res.send(JSON.stringify(`Sem crachá!`));
    }else{
        res.send(JSON.stringify(response))
    }
});

app.get('/read-recompensas', async (req,res)=>{
    let read=await recompensa.findAll({
        raw:true,
    });
    //console.log(read);
    res.send(read);
});

app.get('/create-sorteado',async (req,res)=>{
    let create = await sorteado.create({
        numero_sorteado: "25",
        createdAt: new Date(),
        updatedAt: new Date()
    });
    res.send('Número armazenado com sucesso!');
});

let port=process.env.PORT || 3000   ;
app.listen(port,(req,res)=>{
    console.log('Servidor Rodando');
});