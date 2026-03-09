from django.contrib import admin
from .models import Office, Supplies, Inventory, Request, Request_detail, Delivery_history

admin.site.register(Office)
admin.site.register(Supplies)
admin.site.register(Inventory)
admin.site.register(Request)
admin.site.register(Request_detail)
admin.site.register(Delivery_history)


