<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online bill payment</title>
    <style>
    		#cla{
    			texty-color:#8B0000;
    		}
			.body{
			    background-color: #080710;
			    font-family: 'Poppins',sans-serif;
			    color: #ffffff;
			}
			.titre{
				texty-color:#8B0000;
			}
    
    </style>
</head>

<body>
    <h1 id="cla" class="text-primary">Facture de Paiement en ligne</h1>
    <div class="container mt-5">

        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="titre" class="text-info" >
                        <h3>les informations de client</h3>
                    </div>
                    <div class="card-body">
                    <c:out value="${today }"></c:out>
                        <h6>Mr/Mrs :  <%= session.getAttribute("name")%></h6>
				          <h6>Number  : <%= session.getAttribute("phone")%></h6>
				          <h6>Email Adress : <%= session.getAttribute("email")%> </h6>
				          
				          
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="titre" class="text-info">
                        <h3>les informations sur l'Abonnement</h3>
                    </div>
                    <div class="card-body">
                        
                          
				           <h6>Invoice type:  <%= session.getAttribute("nomAbonement")%> </h6>
                        
                    </div>
                </div>
            </div>

        </div>
        <div class="row mt-5">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="titre" class="text-info">
                        <h3>les informations du paiement</h3>
                    </div>
                    <div class="card-body">
                        <h6>Invoice amount : <%= session.getAttribute("facture")  %> DH</h6>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        window.print();
    </script>
</body>

</html>