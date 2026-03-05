from django.db import models

# Molde para las Sucursales
class Sucursal(models.Model):
    nombre_sucursal = models.CharField(max_length=100) # CharField es para textos cortos

    # Esta función le dice a Django cómo mostrar el nombre de la sucursal en texto
    def __str__(self):
        return self.nombre_sucursal


# Molde para el Catálogo de Insumos
class Insumo(models.Model):
    nombre = models.CharField(max_length=150)
    descripcion = models.TextField(blank=True, null=True) # TextField es para textos largos

    def __str__(self):
        return self.nombre
    
