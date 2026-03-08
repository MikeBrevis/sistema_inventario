from django.db import models
from django.contrib.auth.models import User

class Office(models.Model):
     office_name= models.CharField(max_length=50)

     def __str__(self):
        return self.office_name

class Supplies(models.Model):
    supplies_name = models.CharField(max_length=50)
    description = models.CharField(max_length=200)

    def __str__(self):
        return self.supplies_name

class Inventory(models.Model):
    office = models.ForeignKey(Office, on_delete=models.CASCADE)
    Supplies = models.ForeignKey(Supplies, on_delete=models.CASCADE)
    units = models.IntegerField(default=0)

class Request(models.Model):
    type_request = [
        ('INGRESO', 'Ingreso'),
        ('ENTREGA', 'Entrega'),
    ]

    status_request = [
        ('PEN', 'Pendiente'),
        ('APR', 'Aprobado'),
        ('REJ', 'Rechazado'),
    ]

    user = models.ForeignKey(User, on_delete=models.CASCADE)
    office = models.ForeignKey(Office, on_delete=models.CASCADE)
    type_request = models.CharField(max_length=10, choices=type_request)
    status_request = models.CharField(max_length=10, choices=status_request, default='PEN')
    date_request = models.DateTimeField(auto_now_add=True)

class Request_detail(models.Model):
    request = models.ForeignKey(Request, on_delete=models.CASCADE)
    Supplies = models.ForeignKey(Supplies, on_delete=models.CASCADE)
    units = models.IntegerField(default=0)

class Delivery_history(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    office = models.ForeignKey(Office, on_delete=models.CASCADE)
    supplies = models.ForeignKey(Supplies, on_delete=models.CASCADE)
    name_receptor = models.CharField(max_length=50)
    units = models.IntegerField(default=0)
    date_delivery = models.DateTimeField(auto_now_add=True)


    
    














    
    
