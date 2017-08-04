import uuid
import datetime
from django.db import models
from django.utils import timezone
from django.utils.crypto import get_random_string

class Personal(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    nombre = models.CharField(max_length=100)
    apellido_paterno = models.CharField(max_length=100)
    apellido_materno = models.CharField(max_length=100)
    fecha_creacion = models.DateTimeField('dia_creado',default=timezone.now())
    puesto = models.CharField(max_length=100)
    correo = models.EmailField(default='')

    def __str__(self):
        return self.nombre

class Usuarios(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    id_personal = models.ForeignKey('Personal', on_delete=models.CASCADE,)
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    fecha_creacion = models.DateTimeField('dia_creado',default=timezone.now())

    def __str__(self):
        return self.username

class Sesiones(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    token = models.CharField(max_length=30,default=get_random_string(length=30))
    fecha_creacion = models.DateTimeField('dia_creado',default=timezone.now())
    fecha_expiracion = models.DateTimeField('dia_creado',default=timezone.now()+datetime.timedelta(minutes=30))
    id_usuario = models.ForeignKey('Usuarios', on_delete=models.CASCADE,)

    def __str__(self):
        return self.id_usuario
# Create your models here.
