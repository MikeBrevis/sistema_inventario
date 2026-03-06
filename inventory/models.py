from django.db import models
from django.contrib.auth.models import user 

class Office(models.Model):
     office_name= models.CharField(max_length=50)

     def __str__(self):
        return self.office_name

class Supplies(models.Model):
    supplies_name = models.CharField(max_length=50)
    description = models.CharField(max_length=200)

    def __str__(self):
        return self.supplies_name

class inventory(models.Model):
    office = models.ForeignKey(Office, on_delete=models.CASCADE)
    Supplies = models.ForeignKey(Supplies, on_delete=models.CASCADE)
    units = models.IntegerField(default=0)











    
    
