from django.shortcuts import render
from django.http import HttpResponse
from django.template import RequestContext, loader
from users.forms import LoginForm
from django.contrib.auth import authenticate, login
from .models import Usuarios, Sesiones
import datetime
from django.utils import timezone
from django.utils.crypto import get_random_string

def index(request):
    message = None

    print(request.COOKIES)

    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username,password=password)
            if Usuarios.objects.filter(username=username):
                p=Usuarios.objects.get(username=username)
                id = Usuarios.objects.only('id').get(username=username)
                if p.password == password:
                    print("usuario y cotraseña correcto")
                    q=Sesiones(token=get_random_string(length=30),fecha_creacion=timezone.now(),fecha_expiracion=timezone.now()+datetime.timedelta(minutes=30),id_usuario=id)
                    q.save()
                else:
                    print("Pass incorrecto")
            else:
                print("Usuario incorrecto")
            print(user)

            if user is not None:
                login (request,user)
                message = 'Te has autentificado correctamente'
            else:
                message = 'Tu usuario y/o contraseña son incorrectos'
        else:
            message = 'Nombre y password falta'
    else:
        form = LoginForm()
    context={'messages':message, 'form':form}

    return HttpResponse(render(request, 'users/login.html', context))
# Create your views here.
