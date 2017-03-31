json.usuarios do
  json.array! @usuarios do |usuario|
    json.id usuario.id
    json.nombre usuario.nombre
    json.apellido usuario.apellido
    json.usuario usuario.usuario
    json.twitter usuario.twitter
  end
end
json.total @usuarios.count
