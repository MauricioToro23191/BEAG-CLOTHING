<%-- 
    Document   : index
    Created on : 4/11/2020, 01:54:49 AM
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/bulma.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/Estilo_carrito.css">
        <title>BEAG Clothing</title>
    </head>
    <body>
        <!-- Barra de navegación -->
        <header>

            <nav class="navbar">
                <header class="nabvar-mobile is-size-5-mobile">
                    <a class="navbar-mobile-link has-text-white" href="#" id="btn-mobile">MENÚ</a>
                    <a class="navbar-mobile-link has-text-white" href="index.jsp">BEAG CLOTHING</a>
                </header>
                <nav class="nav-menu --nav-dark-light" id="mySidenav">
                    <form class="form-group " action="#">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" placeholder="Buscar...">
                        </div>
                    </form>
                    <div class="form-group-container">
                        <img src="img/LogoNav.png" width="103" height="38" alt="logo"/>
                    </div>

                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="index.jsp">BEAG CLOTHING</a>
                    <ul class="nav-menu-ul">

                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu active" href="#">Inicio</a>
                        </li>
                        <li class="nav-menu-item"><a href="index.jsp   " class="nav-menu-link ">Hombre</a></li>
                        <li class="nav-menu-item"><a href="index.jsp" class="nav-menu-link">Mujer</a></li>
                        <li class="nav-menu-item"><a href="Inicio_Sesion.jsp" class="nav-menu-link">Iniciar Sesión</a></li>
                        <li class="nav-menu-item"><a href="Registro.jsp" class="nav-menu-link">Registrar</a></li>

                    </ul>
                </nav>
            </nav>
        </header>
        <!-- Banner -->
        <div class="banner banner-cover">
            <div class="banner-container ">
            </div>
        </div>

        <!-- Barra de navegacion secundaria -->
        <div class="container">
            <nav class="nav">
                <p class="nav-item active has-text-weight-semibold" href="#">Categorías</p>
                <a class="nav-item has-text-weight-semibold" href="#">Hombres</a>
                <a class="nav-item has-text-weight-semibold" href="#">Mujeres</a>
                <a class="nav-item has-text-weight-semibold" href="#">Niños</a>
                <a class="nav-item has-text-weight-semibold" href="#">Niñas</a>
            </nav>
        </div>
        <!-- Sección de fotografías -->
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-full-mobile">
                    <div class="columns is-centered is-mobile is-multiline">
                        <!-- 1 Sección de fotografías -->
                        <div class="column is-half column-full"  >
                            <div class="card" style="width: 98%">
                                <a href="#">
                                    <span class="price">$89.99</span>
                                    <img src="img/catalogo/Blanca.jpeg" alt=""/>
                                </a>
                                <div class="card-info">

                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        Algodon</p>
                                </div> 
                            </div>
                        </div>
                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$47.50</span>
                                <img src="img/catalogo/BlancaMangaAul.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold">Camiceta asul Claro $47.50 </h4>
                                    <p class="has-text-centered">Camiceta deportiva 
                                        para Hombre  100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$65.95</span>

                                <img src="img/catalogo/VinotintoMangaBlanca.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $65.95 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$65.95</span>

                                <img src="img/catalogo/AzulMangaEstamp.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $65.95 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/CamisaAzul.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/CamisaGris.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/Chaqueta.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/VerdeMangasNegras.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/BusoCamuflado.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>
                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/GorraVerde.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/GorraNegra.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>



                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/catalogo/GorraAmarilla.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> camiseta vinotinto
                                        con mangas blancas $89.99 </h4>
                                    <p class="has-text-centered">camiceta deportiva 100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- Segunda sección de fotografías -->
                <div class="column is-half is-full-mobile">
                    <div class="columns is-mobile is-multiline">

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/BlancaMangaNegra.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/BlancaMangaRoja.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$34.79</span>
                                <img src="img/catalogo/BlancaMangaVerde.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $34.79 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>
                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$34.79</span>
                                <img src="img/catalogo/GrisMangaAzul.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $34.79 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/GrisMangaRoja.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/GrisMangaVerde.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>



                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/NegraLLamaVerde.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/NegraMangasVerdes.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/Pantaloneta.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/GorraBlanca.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/GorraGris.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>

                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$29.99</span>
                                <img src="img/catalogo/GorraNegra.jpeg" alt=""/>
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $29.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/main.js"></script>
    </body>
</html>
