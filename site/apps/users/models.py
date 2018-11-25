from django.contrib.auth.models import AbstractUser
from django.contrib.sites.models import Site
from django.db import models


class CustomUser(AbstractUser):
    site = models.ForeignKey(Site, on_delete=models.CASCADE)
    pass

    def __str__(self):
        return self.email
