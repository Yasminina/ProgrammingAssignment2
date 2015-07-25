##Estas son un par de funciones de la Cache de un matriz que nos ayuda a evitar calculos costosos


##La funcion makeCacheMatrix crea una "matriz" que puede almacenar en cache su inversa

##makeCacheMatrix nos ayuda a realizar:


##1. Establecer el valor de una matriz 'x'
##2. Obtiene el valor de la matriz 'x'
##3. Calcula la inversa de la matriz 'x'


makeCacheMatrix<-function(x=matrix())
{
  m<-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
  }
 get<-function()x
 setinversa<-function(solve)m<<-solve
 getinversa<-function()m
 list(set=set,get=get,setinversa=setinvera,getinversa=getinversa)
}



##cacheSolve es una funcion que nos ayuda a calcular la inversa de la matriz devuelta por la funcion makeCacheMatrix; si la inversa ya ha sido calculada( y la matriz no cambia), entonces la funcion cacheSolve debe recuperar la inversa de la cache

##regresa la matriz que es la inversa de 'x'

cacheSolve<-function(x,...)
{
  m<-x$getinversa()
  if(!is.null(m))
  {
    message("usar los datos de cache")
    return(m)
  }
  else
    {
  data<-x$get()
  m<-solve(data)
  x$setinversa(m)
  return(m)
    }
}
