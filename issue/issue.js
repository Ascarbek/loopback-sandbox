/**
 * Created by Ascarbek on 27.04.2016.
 */
var app = require('../server/server');
var City = app.models.City;
City.find({
  include: [{
    relation: 'cityCountry',
    scope: {
      fields: {id: true, name: true}
    }
  }],
  fields: {id: true, name: true}
}).then(function(data){
  console.log(data);
  app.server.close();
});

