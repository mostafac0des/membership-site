from django.conf import settings


def web_settings(request):
    return {
        "web_settings": {
            "feature_switches": settings.FEATURE_SWITCHES,
        },
    }
