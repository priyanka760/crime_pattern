"""crime_pattern URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from crime import views as crime_views

urlpatterns = [
    url('admin/', admin.site.urls),

    url(r'^$',crime_views.index,name='index'),

    url(r'^about/$', crime_views.about, name='about'),

    url(r'^login/$', crime_views.login, name='login'),
    
    url(r'^AdminHome/$', crime_views.AdminHome, name='AdminHome'),

    

    url(r'^stolenRecovery/$', crime_views.stolenRecovery, name='stolenRecovery'),

    url(r'^autoTeft/$', crime_views.autoTeft, name='autoTeft'),

    
    url(r'^seriousFraud/$', crime_views.seriousFraud, name='seriousFraud'),

  
    url(r'^murderVictim/$', crime_views.murderVictim, name='murderVictim'),

    url(r'^trailofviolence/$', crime_views.trailofviolence, name='trailofviolence'),
    url(r'^decissiontree/$', crime_views.decissiontree, name='decissiontree'),
url(r'^comparechart/$', crime_views.comparechart, name='comparechart'),



    
]
