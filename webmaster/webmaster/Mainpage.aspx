<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="webmaster.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet2.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container1">



        <h1>"We are here to hear you. Talk to us."</h1>

        <p><span class="typed-text"></span><span class="cursor">&nbsp;</span></p>
    </div>


    <div class="divclass">




        <div class="button" id="button-7">
            <div id="dub-arrow">
                <img src="ICONS/right_round_64px.png" />
            </div>  <a href="#articles" runat="server">Learn More</a>
          
        </div>
    </div>
        
        <div class="containcard" id="articles">
            <h1 class="mt-3 pb-3 mb-4 border-bottom text-center">
                Article Section
            </h1>
            <div class="row" id="articlerow" runat="server">
                <div class="col-md-3" id="card1" runat="server">
                    <div class="card">
                        <img class="card-img-top vimag" src="http://mymodernmet.com/wp/wp-content/uploads/2017/03/sonaksha-iyengar-anxiety-alaphabet-a.jpg" alt="Card image cap"/>
                        <div class="card-body" id="card1body" runat="server">
                            <h3 class="card-title border-bottom pb-3" id="card1title" runat="server"></h3>
                            <p class="card-text" id="card1content" runat="server"></p>
                            <a href="Articles.aspx" class="float-right"><p class="tealp">Read more <i class="fas fa-angle-double-right"></i></p></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card">
                        <img class="card-img-top vimag" src="https://i.pinimg.com/originals/b2/ee/de/b2eedec01c158e563692fee6c4d1a317.jpg" alt="Card image cap"/>
                        <div class="card-body">
                            <h3 class="card-title border-bottom pb-3" id="cardt2" runat="server">Card title</h3>
                            <p class="card-text" id="cardc2" runat="server">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="Articles.aspx" class="float-right"><p class="tealp">Read more <i class="fas fa-angle-double-right"></i></p></a>
                        </div>
                    </div>
                    </div>
                <div class="col-md-3">
                    <div class="card">
                        <img class="card-img-top vimag" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnQ-t6sMqFlfWm4C1_5pzcbEAk5jTn2lKXCb3bJUj8QKxRUsv4&s" alt="Card image cap"/>
                        <div class="card-body">
                            <h3 class="card-title border-bottom pb-3" id="cardt3" runat="server">Card title</h3>
                            <p class="card-text" id="cardc3" runat="server">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="Articles.aspx" class="float-right"><p class="tealp">Read more <i class="fas fa-angle-double-right"></i></p></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <img class="card-img-top vimag" src="https://static.vecteezy.com/system/resources/previews/000/364/421/non_2x/vector-mental-health-illustration.jpg" alt="Image result for mental health illustration"/>
                        <div class="card-body">
                            <h3 class="card-title border-bottom pb-3" id="cardt4" runat="server">Card title</h3>
                            <p class="card-text" id="cardc4" runat="server">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="Articles.aspx" class="float-right"><p class="tealp">Read more <i class="fas fa-angle-double-right"></i></p></a>
                        </div>
                    </div>
                </div>
           
                
            </div>
            
        </div>
    =
    <div class="servicecont">
        <h1 class="text-center"> WE CARE ABOUT YOU</h1>
      
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox">
                        <div class="service-icon any">
                            <span><img src="https://www.mydiscprofile.com/_images/homepage-ideal-job.png" /></span>
                        </div>
                        <h3 class="title">Emergency help available</h3>
                        <p class="description">Our psychologists are here to help you out in your difficult times. Connect with us anytime, anywhere without any problems. </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox gray">
                        <div class="service-icon any">
                            <span><img src="https://www.mydiscprofile.com/_images/homepage-free-personality-test.png" alt="Related image"/>"></span>
                        </div>
                        <h3 class="title">Personality tests available</h3>
                        <p class="description">Take our free personality tests to find out the diagnosis for problems you’re facing without having to interact directly with anyone. Your results and identity will remain anonymous.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox">
                        <div class="service-icon any">
                            <span><img src="PikPng.com_anonymous-png_2959987.png" /></span>
                        </div>
                        <h3 class="title">Anonymity</h3>
                        <h3 class="title"> </h3>
                        <p class="description">Don’t feel like revealing your identity? We got you! Select the anonymous option before starting a session and stay anonymous throughout the session. </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox gray">
                        <div class="service-icon any">
                            <span><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Mental_Disorder_Silhouette.png/1200px-Mental_Disorder_Silhouette.png" /></span>
                        </div>
                        <h3 class="title">Understand Mental Health</h3>
                        <p class="description">Millions of people suffer from mental health problems and most of them have a lot they want to share with the world. If you have anything you want to convey to people regarding mental health, we are pleased to provide you a platform to share your thoughts.</p>
                    </div>
                </div>
            </div>
        </div>
    

    <div class="containtest">
      
        <section id="testim" class="testim">

            <!--         <div class="testim-cover"> -->
            <div class="wrap">
               <h1 class="text-center">FEW WORDS FROM OUR USERS</h1>
                <span id="right-arrow" class="arrow right fa fa-chevron-right"></span>
                <span id="left-arrow" class="arrow left fa fa-chevron-left "></span>
                <ul id="testim-dots" class="dots">
                    <li class="dot active"></li>
                    <!--
                -->
                    <li class="dot"></li>
                    <!--
                -->
                    <li class="dot"></li>
                    <!--
                -->
                    <li class="dot"></li>
                    <!--
                -->
                    <li class="dot"></li>
                </ul>
                <div id="testim-content" class="cont">

                    <div class="active">
                        <div class="img"><img src="https://image.ibb.co/hgy1M7/5a6f718346a28820008b4611_750_562.jpg" alt=""/></div>
                        <h2>Jenny Richard</h2>

                        <p>“Easy to use and super reliable. I really like the anonymity feature they provide to users. Keep up the good work!”</p>
                        <h3>Sofware Engineer, 2019.</h3>

                    </div>

                    <div>
                        <div class="img"><img src="https://image.ibb.co/cNP817/pexels_photo_220453.jpg" alt=""/></div>
                        <h2>Mr. Farooq Zaman</h2>
                        <p>“I’m an introverted person who finds it difficult to share his feelings with people. Auroras’s article section has connected me with people all over the world through their words and mine.” </p>
                        <h3>Chartered Accountant, 2018.</h3>
                    </div>

                    <div>
                        <div class="img"><img src="https://image.ibb.co/iN3qES/pexels_photo_324658.jpg" alt=""/></div>
                        <h2>Ana Favero</h2>
                        <p> “With busy schedules it becomes really hard to find time for your mental health. I like the fact that Aurora lets you book sessions according to what suits you best”</p>
                        <h3>Vlogger,Media Student, 2019.</h3>

                    </div>

                    <div>
                        <div class="img"><img src="https://image.ibb.co/kL6AES/Top_SA_Nicky_Oppenheimer.jpg" alt=""/></div>
                        <h2>Mr. Richard Red</h2>
                        <p>“I want to commend the people behind this idea who want to help people all over the world through this platform, and that too, free of cost. Kudos to you all!.</p>
                        <h3>Trader, 2019.</h3>
                    </div>

                    <div>
                        <div class="img"><img src="https://image.ibb.co/gUPag7/image.jpg" alt=""/></div>
                        <h2>Daniel Gray</h2>
                        <p>“I trust aurora. Would definitely recommend to everyone who going through a tough time."</p>
                        <h3>Medical Student, 2020.</h3>
                    </div>

                </div>


            </div>

        </section>

    </div>
    
    

      <script>
  
    const typedTextSpan = document.querySelector(".typed-text");
    const cursorSpan = document.querySelector(".cursor");

    const textArray = ["Anonymous sessions with psychologists.", "Emergency help 24/7.", "100s of articles on mental health.", "A platform to write about mental illness.","Multiple satisfied users.","Professional help one button away."];
    const typingDelay = 100;
    const erasingDelay = 50;
    const newTextDelay = 1000; // Delay between current and next text
    let textArrayIndex = 0;
    let charIndex = 0;

    function type() {
        if (charIndex < textArray[textArrayIndex].length) {
            if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
            typedTextSpan.textContent += textArray[textArrayIndex].charAt(charIndex);
            charIndex++;
            setTimeout(type, typingDelay);
        }
        else {
            cursorSpan.classList.remove("typing");
            setTimeout(erase, newTextDelay);
        }
    }

    function erase() {
        if (charIndex > 0) {
            if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
            typedTextSpan.textContent = textArray[textArrayIndex].substring(0, charIndex - 1);
            charIndex--;
            setTimeout(erase, erasingDelay);
        }
        else {
            cursorSpan.classList.remove("typing");
            textArrayIndex++;
            if (textArrayIndex >= textArray.length) textArrayIndex = 0;
            setTimeout(type, typingDelay + 1100);
        }
    }

    document.addEventListener("DOMContentLoaded", function () { // On DOM Load initiate the effect
        if (textArray.length) setTimeout(type, newTextDelay + 250);
    });
</script>
    
       
</asp:Content>

