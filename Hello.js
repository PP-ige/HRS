var mysql = require('mysql');

var connection = mysql.createConnection({
    host: "localhost",
    database: "test",
    user: "root",
    password: "j03_m@m@"
});

connection.connect(function(err){
    if(err){
    console.error('Error connecting:' + err.stack);
    return; 
    }

    console.log('Connected as id' + connection.threadId);
});

connection.query('select * from testtable', function (error, results, fields){
    if(error)
        throw error;

    results.forEach(result => {
        console.log(result)
    });
});
