from django.views.generic import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin


class HomePageView(TemplateView):
    template_name = 'pages/home.html'


class MembersPageView(LoginRequiredMixin, TemplateView):
    template_name = 'pages/members.html'
    login_url = 'accounts/login'
