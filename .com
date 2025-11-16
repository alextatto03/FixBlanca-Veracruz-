<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FixBlanca Veracruz - Reparación y Mantenimiento de Línea Blanca</title>
    <style>
        :root {
            --primary-blue: #0056b3;
            --dark-blue: #003d82;
            --light-blue: #e6f2ff;
            --white: #ffffff;
            --black: #333333;
            --gray: #f5f5f5;
            --dark-gray: #777777;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--white);
            color: var(--black);
            line-height: 1.6;
        }
        
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        
        /* Header */
        header {
            background-color: var(--white);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo h1 {
            color: var(--primary-blue);
            font-size: 1.8rem;
            margin-left: 10px;
        }
        
        .logo span {
            color: var(--black);
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-left: 25px;
        }
        
        nav ul li a {
            text-decoration: none;
            color: var(--black);
            font-weight: 500;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: var(--primary-blue);
        }
        
        .btn {
            display: inline-block;
            background-color: var(--primary-blue);
            color: var(--white);
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: background-color 0.3s;
        }
        
        .btn:hover {
            background-color: var(--dark-blue);
        }
        
        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(0, 86, 179, 0.8), rgba(0, 61, 130, 0.9)), url('https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            color: var(--white);
            padding: 100px 0;
            text-align: center;
        }
        
        .hero h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
        
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 30px;
        }
        
        /* Services Section */
        .services {
            padding: 80px 0;
            background-color: var(--gray);
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }
        
        .section-title h2 {
            font-size: 2rem;
            color: var(--primary-blue);
            margin-bottom: 15px;
        }
        
        .section-title p {
            color: var(--dark-gray);
            max-width: 700px;
            margin: 0 auto;
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }
        
        .service-card {
            background-color: var(--white);
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s;
        }
        
        .service-card:hover {
            transform: translateY(-10px);
        }
        
        .service-icon {
            font-size: 2.5rem;
            color: var(--primary-blue);
            margin-bottom: 20px;
        }
        
        .service-card h3 {
            margin-bottom: 15px;
            color: var(--black);
        }
        
        /* Brands Section */
        .brands {
            padding: 80px 0;
        }
        
        .brands-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }
        
        .brand-card {
            background-color: var(--white);
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s;
            border: 1px solid #eee;
        }
        
        .brand-card:hover {
            transform: scale(1.05);
        }
        
        .brand-logo {
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 15px;
        }
        
        .brand-logo img {
            max-height: 100%;
            max-width: 100%;
        }
        
        /* Form Section */
        .contact-form {
            padding: 80px 0;
            background-color: var(--light-blue);
        }
        
        .form-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: var(--white);
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        
        .form-title {
            text-align: center;
            margin-bottom: 30px;
            color: var(--primary-blue);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border-color 0.3s;
        }
        
        .form-control:focus {
            border-color: var(--primary-blue);
            outline: none;
        }
        
        .form-row {
            display: flex;
            gap: 20px;
        }
        
        .form-row .form-group {
            flex: 1;
        }
        
        .submit-btn {
            background-color: var(--primary-blue);
            color: var(--white);
            border: none;
            padding: 12px 30px;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }
        
        .submit-btn:hover {
            background-color: var(--dark-blue);
        }
        
        /* Footer */
        footer {
            background-color: var(--black);
            color: var(--white);
            padding: 60px 0 20px;
        }
        
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }
        
        .footer-column h3 {
            font-size: 1.2rem;
            margin-bottom: 20px;
            color: var(--white);
        }
        
        .footer-column ul {
            list-style: none;
        }
        
        .footer-column ul li {
            margin-bottom: 10px;
        }
        
        .footer-column ul li a {
            color: #ccc;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-column ul li a:hover {
            color: var(--white);
        }
        
        .social-links {
            display: flex;
            gap: 15px;
        }
        
        .social-links a {
            display: inline-block;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            color: var(--white);
            transition: background-color 0.3s;
        }
        
        .social-links a:hover {
            background-color: var(--primary-blue);
        }
        
        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #ccc;
            font-size: 0.9rem;
        }
        
        /* Responsive */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                text-align: center;
            }
            
            nav ul {
                margin-top: 20px;
                flex-wrap: wrap;
                justify-content: center;
            }
            
            nav ul li {
                margin: 5px 10px;
            }
            
            .hero h2 {
                font-size: 2rem;
            }
            
            .form-row {
                flex-direction: column;
                gap: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <div class="logo">
                <h1>Fix<span>Blanca</span> Veracruz</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="#inicio">Inicio</a></li>
                    <li><a href="#servicios">Servicios</a></li>
                    <li><a href="#marcas">Marcas</a></li>
                    <li><a href="#contacto">Solicitar Servicio</a></li>
                    <li><a href="#" class="btn">Llámanos</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="inicio">
        <div class="container">
            <h2>Expertos en Reparación de Línea Blanca en Veracruz</h2>
            <p>Servicio técnico especializado en lavadoras, secadoras, refrigeradores, hornos, estufas y más. Confianza y calidad garantizada.</p>
            <a href="#contacto" class="btn">Solicitar Servicio Ahora</a>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services" id="servicios">
        <div class="container">
            <div class="section-title">
                <h2>Nuestros Servicios</h2>
                <p>Ofrecemos soluciones completas para todos tus electrodomésticos de línea blanca</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">🧺</div>
                    <h3>Reparación de Lavadoras</h3>
                    <p>Solucionamos problemas de centrifugado, fugas, ruidos y más en todo tipo de lavadoras.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">🔥</div>
                    <h3>Reparación de Secadoras</h3>
                    <p>Reparamos problemas de calentamiento, tambor, temporizador y componentes eléctricos.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">❄️</div>
                    <h3>Reparación de Refrigeradores</h3>
                    <p>Solucionamos problemas de enfriamiento, fugas de gas, compresores y más.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">👨‍🍳</div>
                    <h3>Reparación de Estufas y Hornos</h3>
                    <p>Reparamos quemadores, hornos, termostatos y problemas eléctricos en cocinas.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">🌀</div>
                    <h3>Reparación de Campanas</h3>
                    <p>Solucionamos problemas de extracción, motores, iluminación y controles.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">🛠️</div>
                    <h3>Mantenimiento Preventivo</h3>
                    <p>Servicios de mantenimiento para prolongar la vida útil de tus electrodomésticos.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Brands Section -->
    <section class="brands" id="marcas">
        <div class="container">
            <div class="section-title">
                <h2>Marcas que Reparamos</h2>
                <p>Trabajamos con todas las marcas principales de electrodomésticos de línea blanca</p>
            </div>
            <div class="brands-grid">
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>SAMSUNG</span>
                    </div>
                    <p>Samsung</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>LG</span>
                    </div>
                    <p>LG</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>DAEWOO</span>
                    </div>
                    <p>Daewoo</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>WHIRLPOOL</span>
                    </div>
                    <p>Whirlpool</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>MAYTAG</span>
                    </div>
                    <p>Maytag</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>GE</span>
                    </div>
                    <p>General Electric</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>SUB-ZERO</span>
                    </div>
                    <p>Sub Zero</p>
                </div>
                <div class="brand-card">
                    <div class="brand-logo">
                        <span>MABE</span>
                    </div>
                    <p>Mabe</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="contact-form" id="contacto">
        <div class="container">
            <div class="form-container">
                <h2 class="form-title">Solicita Nuestro Servicio</h2>
                <p style="text-align: center; margin-bottom: 30px;">Completa el formulario y un técnico se pondrá en contacto contigo</p>
                <form id="service-request-form">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">Nombre completo *</label>
                            <input type="text" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Teléfono *</label>
                            <input type="tel" id="phone" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" id="email" class="form-control">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="appliance">Electrodoméstico *</label>
                            <select id="appliance" class="form-control" required>
                                <option value="">Selecciona un electrodoméstico</option>
                                <option value="lavadora">Lavadora</option>
                                <option value="secadora">Secadora</option>
                                <option value="refrigerador">Refrigerador</option>
                                <option value="estufa">Estufa</option>
                                <option value="horno">Horno</option>
                                <option value="campana">Campana extractora</option>
                                <option value="otros">Otros</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="brand">Marca *</label>
                            <select id="brand" class="form-control" required>
                                <option value="">Selecciona una marca</option>
                                <option value="samsung">Samsung</option>
                                <option value="lg">LG</option>
                                <option value="daewoo">Daewoo</option>
                                <option value="whirlpool">Whirlpool</option>
                                <option value="maytag">Maytag</option>
                                <option value="ge">General Electric</option>
                                <option value="subzero">Sub Zero</option>
                                <option value="mabe">Mabe</option>
                                <option value="otros">Otra marca</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="problem">Describe el problema *</label>
                        <textarea id="problem" class="form-control" rows="4" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="address">Dirección completa *</label>
                        <textarea id="address" class="form-control" rows="3" placeholder="Calle, número, colonia, referencia..." required></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Solicitar Servicio</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>FixBlanca Veracruz</h3>
                    <p>Expertos en reparación y mantenimiento de línea blanca en el Puerto de Veracruz.</p>
                    <div class="social-links">
                        <a href="#">FB</a>
                        <a href="#">IG</a>
                        <a href="#">WA</a>
                    </div>
                </div>
                <div class="footer-column">
                    <h3>Servicios</h3>
                    <ul>
                        <li><a href="#">Reparación de Lavadoras</a></li>
                        <li><a href="#">Reparación de Secadoras</a></li>
                        <li><a href="#">Reparación de Refrigeradores</a></li>
                        <li><a href="#">Reparación de Estufas</a></li>
                        <li><a href="#">Mantenimiento Preventivo</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Contacto</h3>
                    <ul>
                        <li>📍 Veracruz, Veracruz</li>
                        <li>📞 (229) 123-4567</li>
                        <li>📱 (229) 987-6543</li>
                        <li>✉️ info@fixblancaveracruz.com</li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 FixBlanca Veracruz. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <script>
        // Form submission handling
        document.getElementById('service-request-form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Get form values
            const name = document.getElementById('name').value;
            const phone = document.getElementById('phone').value;
            const appliance = document.getElementById('appliance').value;
            const brand = document.getElementById('brand').value;
            const problem = document.getElementById('problem').value;
            const address = document.getElementById('address').value;
            
            // In a real application, you would send this data to a server
            // For this example, we'll just show an alert
            alert(`¡Gracias ${name}! Hemos recibido tu solicitud de servicio para tu ${appliance} ${brand}. Un técnico se pondrá en contacto contigo al ${phone} en las próximas horas.`);
            
            // Reset form
            document.getElementById('service-request-form').reset();
        });
    </script>
</body>
</html>
