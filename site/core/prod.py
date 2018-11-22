from core.settings import *
import os
import environ


BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Env
env = environ.Env()
environ.Env.read_env(os.path.join(BASE_DIR, '.env'))

DEBUG = False

ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': env('ENGINE', default=''),
        'NAME': env('NAME', default=''),
        'USER': env('USER', default=''),
        'HOST': env('HOST', default='db'),
        'PORT': env('PORT', default=5432),
    }
}
