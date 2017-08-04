from .models import Usuarios

class myBakend(object):
    """docstring formyBakend."""

    def authenticate(username, password):
        if Usuarios.objects.get(username=username):
            pass
