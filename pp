<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raisan Tach - Premium Web UI with Custom PNG Logos</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Bengali:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        :root {
            --primary-gradient: linear-gradient(135deg, #7b1fa2, #e91e63);
            --secondary-gradient: linear-gradient(135deg, #d81b60, #8e24aa);
            --splash-gradient: linear-gradient(135deg, #2c0c4d, #00332c);
            --teal-bg: #e0f2f1;
            --teal-dark: #004d40;
            --teal-accent: #26a69a;
            --telegram-color: #0088cc;
            --body-bg: #f5f7fb;
            --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Noto Sans Bengali', sans-serif;
        }

        body {
            background-color: var(--body-bg);
            color: #333;
            overflow-x: hidden;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* ===================================================
           ১. SPLASH SCREEN STYLES (PNG Logo Support Included)
           =================================================== */
        #splash-screen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: var(--splash-gradient);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
            color: white;
            transition: opacity 0.6s ease, visibility 0.6s ease;
        }

        .splash-content {
            text-align: center;
            animation: fadeIn 1.2s ease-out;
        }

        .splash-logo {
            width: 110px;
            height: 110px;
            background: #fff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.4);
            animation: pulseGlow 2s infinite alternate;
            overflow: hidden; /* লোগো যেন বৃত্তের বাইরে না যায় */
            padding: 12px; /* লোগোর চারপাশে সামান্য গ্যাপের জন্য */
        }

        .splash-logo img {
            width: 100%;
            height: 100%;
            object-fit: contain; /* লোগোর রেশিও ঠিক রাখবে */
        }

        .splash-title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 12px;
            letter-spacing: 1px;
            background: linear-gradient(to right, #ff80ab, #b9f6ca);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .splash-text {
            font-size: 16px;
            opacity: 0.85;
            margin-bottom: 35px;
            font-weight: 500;
        }

        .splash-loader {
            border: 4px solid rgba(255,255,255,0.15);
            border-radius: 50%;
            border-top: 4px solid #b9f6ca;
            width: 45px;
            height: 45px;
            animation: spin 1s linear infinite;
            margin: 0 auto;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ===================================================
           MAIN WEBSITE STYLES
           =================================================== */
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            flex: 1;
        }

        /* Top Header */
        .main-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #fff;
            padding: 20px;
            border-radius: 20px;
            box-shadow: var(--card-shadow);
            margin-bottom: 25px;
            gap: 20px;
            position: relative;
        }

        .brand-box {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            min-width: 100px;
        }

        .logo-circle {
            width: 65px;
            height: 65px;
            background: #f0f0f5;
            border: 3px solid #7b1fa2;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            overflow: hidden;
            padding: 8px;
        }

        .logo-circle img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .brand-name {
            font-size: 15px;
            font-weight: 700;
            color: #222;
            margin-top: 8px;
            letter-spacing: 0.5px;
        }

        /* Tagline Box with Animated Effect */
        .tagline-box {
            flex: 1;
            background: linear-gradient(145deg, #ffffff, #f9f9ff);
            padding: 18px 25px;
            border-radius: 15px;
            font-size: 18px;
            font-weight: 700;
            text-align: center;
            color: #4a148c;
            border: 2px solid transparent;
            background-image: linear-gradient(white, white), linear-gradient(135deg, #7b1fa2, #e91e63);
            background-origin: border-box;
            background-clip: padding-box, border-box;
            box-shadow: 0 8px 20px rgba(123, 31, 162, 0.15);
            animation: pulseGlow 3s infinite alternate;
        }

        @keyframes pulseGlow {
            0% { transform: scale(1); box-shadow: 0 5px 15px rgba(123, 31, 162, 0.15); }
            100% { transform: scale(1.02); box-shadow: 0 8px 25px rgba(233, 30, 99, 0.35); }
        }

        /* টেলিগ্রাম বৃত্তাকার বাটন */
        .telegram-wrapper {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .telegram-circle {
            width: 55px;
            height: 55px;
            background: var(--telegram-color);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 26px;
            text-decoration: none;
            box-shadow: 0 5px 15px rgba(0, 136, 204, 0.4);
            transition: var(--transition);
        }

        .telegram-circle:hover {
            transform: scale(1.1) rotate(15deg);
            background: #0077b5;
            box-shadow: 0 8px 20px rgba(0, 136, 204, 0.6);
        }

        /* Top Feature Banners (PNG Logo Support) */
        .feature-banners {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-bottom: 30px;
        }

        .banner-card {
            display: flex;
            align-items: center;
            padding: 25px;
            border-radius: 20px;
            color: #fff;
            text-decoration: none;
            transition: var(--transition);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            position: relative;
            overflow: hidden;
        }

        .banner-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.2);
        }

        .banner-1 { background: var(--primary-gradient); }
        .banner-2 { background: var(--secondary-gradient); }

        .banner-icon {
            background: rgba(255, 255, 255, 0.9); /* সাদা ব্যাকগ্রাউন্ড দিলে লোগো ফুটে উঠবে */
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin-right: 20px;
            overflow: hidden;
            padding: 10px; /* বৃত্তের ভেতরে পিএনজি লোগোর মার্জিন */
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        .banner-icon img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .banner-info h2 {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .banner-info p {
            font-size: 14px;
            opacity: 0.9;
        }

        /* Categories Section */
        .categories-title {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 15px;
            color: #444;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(8, 1fr);
            gap: 15px;
            margin-bottom: 35px;
        }

        .category-item {
            background: #fff;
            padding: 20px 10px;
            border-radius: 18px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-size: 13px;
            font-weight: 600;
            color: #444;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 4px 10px rgba(0,0,0,0.03);
            border: 1px solid #edf0f5;
            text-decoration: none;
        }

        .category-item:hover {
            transform: translateY(-5px);
            background: #f3e5f5;
            color: #7b1fa2;
            border-color: #e1bbe7;
        }

        .category-icon-box {
            font-size: 28px;
            margin-bottom: 10px;
            color: #6a1b9a;
            transition: var(--transition);
        }

        .category-item:hover .category-icon-box {
            transform: scale(1.15);
        }

        /* Sliding Ticker (শিরোনাম) */
        .ticker-container {
            display: flex;
            align-items: center;
            background: var(--teal-bg);
            border-radius: 30px;
            overflow: hidden;
            margin-bottom: 35px;
            box-shadow: 0 4px 15px rgba(0, 77, 64, 0.05);
        }

        .ticker-label {
            background: var(--teal-accent);
            color: white;
            padding: 12px 25px;
            font-weight: 700;
            font-size: 15px;
            white-space: nowrap;
            border-radius: 30px 0 0 30px;
            box-shadow: 3px 0 10px rgba(0,0,0,0.1);
            z-index: 2;
        }

        .ticker-content {
            flex: 1;
            overflow: hidden;
            white-space: nowrap;
            display: flex;
            align-items: center;
        }

        .ticker-text {
            display: inline-block;
            padding-left: 100%;
            font-weight: 600;
            color: var(--teal-dark);
            font-size: 14px;
            animation: smoothMarquee 20s linear infinite;
        }

        @keyframes smoothMarquee {
            0% { transform: translate3d(0, 0, 0); }
            100% { transform: translate3d(-100%, 0, 0); }
        }

        /* OTT Content Showcase */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .section-header h3 {
            font-size: 20px;
            font-weight: 700;
            color: #222;
        }

        .view-more {
            color: #7b1fa2;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            transition: var(--transition);
        }

        .view-more:hover {
            text-decoration: underline;
        }

        .ott-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-bottom: 60px;
        }

        .movie-card {
            background: #fff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            transition: var(--transition);
            border: 1px solid #edf0f5;
            text-decoration: none;
            display: block;
        }

        .movie-card:hover {
            transform: scale(1.03);
            box-shadow: 0 15px 35px rgba(0,0,0,0.12);
        }

        .poster-wrapper {
            width: 100%;
            height: 280px;
            background: #e2e8f0;
            position: relative;
            overflow: hidden;
        }

        .poster-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .movie-card:hover .poster-wrapper img {
            transform: scale(1.08);
        }

        .movie-details {
            padding: 15px;
            text-align: center;
        }

        .movie-details h4 {
            font-size: 16px;
            font-weight: 700;
            color: #222;
            margin-bottom: 5px;
        }

        .movie-details p {
            font-size: 12px;
            color: #666;
        }

        /* Premium Web Navigation / Dock Footer */
        .bottom-navigation {
            background: #b2dfdb;
            padding: 12px 0;
            position: sticky;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -5px 25px rgba(0, 77, 64, 0.1);
            z-index: 100;
        }

        .nav-container {
            max-width: 600px;
            margin: 0 auto;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .nav-link {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            color: var(--teal-dark);
            font-size: 12px;
            font-weight: 700;
            gap: 5px;
            transition: var(--transition);
            padding: 5px 15px;
            border-radius: 12px;
        }

        .nav-link i {
            font-size: 20px;
        }

        .nav-link:hover, .nav-link.active {
            color: #fff;
            background: var(--teal-dark);
        }


        /* ===================================================
           RESPONSIVE BREAKPOINTS
           =================================================== */
        @media (max-width: 1024px) {
            .categories-grid { grid-template-columns: repeat(4, 1fr); }
            .ott-grid { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width: 768px) {
            .main-header { padding-top: 50px; flex-direction: column; text-align: center; }
            .telegram-wrapper { position: absolute; top: 15px; right: 15px; }
            .tagline-box { width: 100%; font-size: 16px; padding: 15px; }
            .feature-banners { grid-template-columns: 1fr; gap: 15px; }
            .ott-grid { grid-template-columns: repeat(2, 1fr); gap: 15px; }
            .poster-wrapper { height: 230px; }
        }

        @media (max-width: 480px) {
            .container { padding: 12px; }
            .categories-grid { grid-template-columns: repeat(4, 1fr); gap: 10px; }
            .category-item { padding: 12px 5px; font-size: 11px; }
            .category-icon-box { font-size: 22px; margin-bottom: 6px; }
            .ott-grid { 
                display: flex;
                overflow-x: auto;
                scroll-snap-type: x mandatory;
                padding-bottom: 15px;
                gap: 15px;
            }
            .ott-grid::-webkit-scrollbar { display: none; }
            .movie-card { min-width: 150px; scroll-snap-align: start; }
            .poster-wrapper { height: 180px; }
            .movie-details h4 { font-size: 14px; }
            .bottom-navigation { position: fixed; }
        }
    </style>
</head>
<body>

    <div id="splash-screen">
        <div class="splash-content">
            <div class="splash-logo">
                <img src="https://i.postimg.cc/x8G2Sy9P/Capture-removebg-preview.png" alt="Raisan Tach Logo">
            </div>
            <h1 class="splash-title">Raisan Tach</h1>
            <p class="splash-text">থাকো তুমি যেখানে সব কিছুই এখানে...</p>
            <div class="splash-loader"></div>
        </div>
    </div>


    <div class="container">
        
        <header class="main-header">
            <div class="brand-box">
                <div class="logo-circle">
                    <img src="https://i.postimg.cc/x8G2Sy9P/Capture-removebg-preview.png" alt="Logo">
                </div>
                <div class="brand-name">Raisan tach</div>
            </div>
            
            <div class="tagline-box">
                থাকো তুমি যেখানে সব কিছু এখানে
            </div>

            <div class="telegram-wrapper">
                <a href="https://t.me/rrplex" target="_blank" class="telegram-circle" title="টেলিগ্রাম চ্যানেলে জয়েন করুন">
                    <i class="fa-brands fa-telegram"></i>
                </a>
            </div>
        </header>

        <section class="feature-banners">
            <a href="
            https://pippotv.42web.io/" class="banner-card banner-1">
                <div class="banner-icon">
                    <img src="https://i.postimg.cc/wM5pdc9m/photo-6118685323161178401-y-removebg-preview.png" alt="PIPPO">
                </div>
                <div class="banner-info">
                    <h2>PIPPO</h2>
                    <p>লাইভ টিভি</p>
                </div>
            </a>
            <a href="rlive.page.gd" class="banner-card banner-2">
                <div class="banner-icon">
                    <img src="https://i.postimg.cc/mrZhpkNK/9f427951-9a87-425c-8fa5-b42e323f9b73-removebg-preview.png" alt="Rlive">
                </div>
                <div class="banner-info">
                    <h2>Rlive</h2>
                    <p>লাইভ টিভি ও মুভি</p>
                </div>
            </a>
        </section>

        <h3 class="categories-title"><i class="fa-solid fa-layer-group"></i> ক্যাটাগরি সমূহ</h3>
        <section class="categories-grid">
            <a href="#movies-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-video"></i></div>
                <span>মুভি</span>
            </a>
            <a href="#series-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-film"></i></div>
                <span>সিরিজ</span>
            </a>
            <a href="#music-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-headphones"></i></div>
                <span>সঙ্গীত</span>
            </a>
            <a href="#sports-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-futbol"></i></div>
                <span>খেলাধুলা</span>
            </a>
            <a href="#news-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-newspaper"></i></div>
                <span>সংবাদ</span>
            </a>
            <a href="#videos-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-play"></i></div>
                <span>ভিডিও</span>
            </a>
            <a href="#kids-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-children"></i></div>
                <span>বাচ্চাদের কন্টেন্ট</span>
            </a>
            <a href="#lifestyle-page" class="category-item">
                <div class="category-icon-box"><i class="fa-solid fa-masks-theater"></i></div>
                <span>লাইফস্টাইল</span>
            </a>
        </section>

        <section class="ticker-container">
            <div class="ticker-label">শিরোনাম</div>
            <div class="ticker-content">
                <div class="ticker-text">🔥 ব্রেকিং নিউজ: আমাদের প্ল্যাটফর্মে যুক্ত হলো নতুন ধামাকা ফিচার! আপনার পছন্দের সব নাটক ও সিনেমা এখন এক ক্লিকেই। এখানে যেকোনো নোটিশ সুন্দরভাবে স্লাইড করতে থাকবে...</div>
            </div>
        </section>

        <section class="ott-section">
            <div class="section-header">
                <h3>FiFa World Cap 2026</h3>
                <a href="#all-ott-content" class="view-more">View More <i class="fa-solid fa-angles-right"></i></a>
            </div>
            
            <div class="ott-grid">
                <a href="#movie-surongo-details" class="movie-card">
                    <div class="poster-wrapper">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPv_UKBggaIe8bycerK8q_hAZ7Q3DC2QHS1w&s" alt="সুড়ঙ্গ">
                    </div>
                    <div class="movie-details">
                        <h4>Mexico Vs South Africa</h4>
                        <p>FiFa World Cap 2026</p>
                    </div>
                </a>
                <a href="#series-sob-jenes-details" class="movie-card">
                    <div class="poster-wrapper">
                        <img src="https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?w=400&auto=format&fit=crop&q=80" alt="সব জেনেস">
                    </div>
                    <div class="movie-details">
                        <h4>সব জেনেস</h4>
                        <p>TV অরিজিনালস</p>
                    </div>
                </a>
                <a href="#movie-shohorer-raat-details" class="movie-card">
                    <div class="poster-wrapper">
                        <img src="https://images.unsplash.com/photo-1578301978693-85fa9c0320b9?w=400&auto=format&fit=crop&q=80" alt="শহরের রাত">
                    </div>
                    <div class="movie-details">
                        <h4>শহরের রাত</h4>
                        <p>নতুন রিলিজ</p>
                    </div>
                </a>
                <a href="#series-mayar-jaal-details" class="movie-card">
                    <div class="poster-wrapper">
                        <img src="https://images.unsplash.com/photo-1594909122845-11baa439b7bf?w=400&auto=format&fit=crop&q=80" alt="মায়ার জাল">
                    </div>
                    <div class="movie-details">
                        <h4>মায়ার জাল</h4>
                        <p>এক্সক্লুসিভ সিরিজ</p>
                    </div>
                </a>
            </div>
        </section>
    </div>

    <nav class="bottom-navigation">
        <div class="nav-container">
            <a href="#home-section" class="nav-link active">
                <i class="fa-solid fa-house"></i>
                <span>হোম</span>
            </a>
            <a href="#packages-section" class="nav-link">
                <i class="fa-solid fa-cubes"></i>
                <span>প্যাকেজ</span>
            </a>
            <a href="#livetv-section" class="nav-link">
                <i class="fa-solid fa-tv"></i>
                <span>লাইভ টিভি</span>
            </a>
            <a href="#media-section" class="nav-link">
                <i class="fa-solid fa-photo-film"></i>
                <span>মিডিয়া</span>
            </a>
            <a href="#account-section" class="nav-link">
                <i class="fa-solid fa-circle-user"></i>
                <span>একাউন্ট</span>
            </a>
        </div>
    </nav>

    <script>
        window.addEventListener('DOMContentLoaded', () => {
            setTimeout(() => {
                const splash = document.getElementById('splash-screen');
                splash.style.opacity = '0';
                splash.style.visibility = 'hidden';
            }, 4000); 
        });
    </script>

</body>
</html>
