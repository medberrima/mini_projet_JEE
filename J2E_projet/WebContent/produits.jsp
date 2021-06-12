<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Recherche des Teliphone</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	<style>
/*----------Search btn */
.header-search {
  padding: 15px 0px;
}

.header-search form .search-btn {
  height: 40px;
  width: 100px;
  background: #fac000;
  color: #FFF;
  font-weight: 700;
  border: none;
  border-radius: 0px 40px 40px 0px;
  margin-top : 20px;
}
.input {
  height: 40px;
  padding: 0px 15px;
  border: 1px solid #E4E7ED;
  background-color: #FFF;
  width: 250px ;
  margin-right: -4px;
  border-radius: 40px 0px 0px 40px;
}
</style>
</head>
<body>
  <%@include file="header.jsp" %>
  <div class="home " style=" height: 800px;  background-image: url('https://images.unsplash.com/photo-1488509082528-cefbba5ad692?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'); background-size: cover;">
    <div class="font-weight-bold" style="padding-top:15%; text-align: center;">
      <p style="font-size: 120px;" class="text-white font-weight-bold" href="#">PHO<span class="text-warning">NY</span>.TN</p>
      <p style="font-size: 35px; color: #fff;font-weight: 100; margin-top: -50px; ">Samsung,Huawei et bien plus de technologie en illimité</p>
    </div>
  </div>  
	<p></p>
  <div class="container">
    <div class="text-center h6" >
      Recherche des Phones
    </div>
    <div class="header-search">
      <form action="chercher.do" method="get" class="text-center header-search"">
        <input type="text" name="motCle" class="input" value="${model.motCle}" />
        <button type="submit" class="search-btn">Search</button>
      </form> 
    </div>
    <div class="container py-5 ">
      <header class="text-center mb-5">
          <h1 class="display-4 font-weight-bold">Nos Teliphones</h1>
      </header>
      <div class="row pb-5 mb-4">
        <c:forEach items="${model.produits}" var="p">
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 " >
              <div class="card rounded shadow-sm border-0 mb-5">
                <div class="card-body p-3"><img src="https://cdn.vox-cdn.com/thumbor/SwKwsHX6EfWoL85a-t80ys2AP7o=/0x0:2040x1360/1800x1800/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/22388897/bfarsace_4481_20210317_0073_Edit.jpg" alt="" class="img-fluid d-block mx-auto mb-3">
                    <h5 class=" mb-3"> <a href="#" class="text-dark text-center"><i class="fa fa-hashtag" ></i> ${p.idProduit }- ${p.nomProduit }</a></h5>
                    <p >
                        <span class="text-dark"><i class="fas fa-dollar-sign mr-2"></i>${p.prix }</span>
                        <!-- <br><span class="  text-dark"><i class="fas fa-calendar-alt mr-2"></i>{{film.dateSortie | date:'dd/MM/yyyy'}}</span>
                        <br><span class="text-dark"><i class="fas fa-film mr-2"></i>{{film.genreFilm}}</span> -->
                    </p>
                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-secondary"></i></li><span class="badge badge-pill badge-secondary ml-2">4.0</span>
                    </ul>
                    <span class="p-5 ">
              <a onclick="return confirm('Etes-vous s�r ?')"
        href="supprimer.do?id=${p.idProduit }" class="btn btn-danger ml-2">Supprimer</a>
              <a href="editer.do?id=${p.idProduit}" class="btn btn-success">Mofidier</a>
                    </span>
                </div>
              </div>
            </div>
        </c:forEach>
      </div>
    </div>
  </div>
	<footer>
    <div class="bg-dark ">
      <p class="text-white text-center p-3 mb-0"> 2021 © <span class="text-warning">Mohamed Berrima</span> - Tous droits réservés  </p> 
    </div>
  </footer>
	
</body>
</html>