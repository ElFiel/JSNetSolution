# coding: utf-8
module ApplicationHelper

def google_analytics
  txt = <<HTML
  <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-34164487-1']);
    _gaq.push(['_setDomainName', 'jsnetsolution.com']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

  </script>
HTML
  txt.html_safe
end

# ----- SEO ----->
def page_title
  @title  ||  "JSnet Solution, diseño y desarrollo web"
  #@h1 || params[:page]
end

def poner_title(text)
  @title  = "#{text} || JSnet Solution"
  @h1     = "#{text}"
end

def page_description
  @content  ||  "JSnet Solution, Agencia de diseño y desarrollo web de calidad con personal calificado, visualiza tus sitios en Pcs, tablets y hasta móviles sin gastar mas."
end

def poner_description(text)
  @content  = text
end

# ----- FIN SEO ---->

def texto_vertical(texto)
  texto.split('').join('<br>').html_safe
  #Funciona con clase .con_pre
end

end
