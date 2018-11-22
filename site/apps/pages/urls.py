from django.urls import path

from . import views

urlpatterns = [
    path('', views.HomePageView.as_view(), name='home'),
    path('members/', views.MembersPageView.as_view(), name='members'),
]
