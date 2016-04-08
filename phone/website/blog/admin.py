from django.contrib import admin
from blog.models import Blog,Tag,Author,Category,Files
# Register your models here.
admin.site.register(Blog)
admin.site.register(Tag)
admin.site.register(Author)
admin.site.register(Category)
admin.site.register(Files)