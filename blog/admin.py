from django.contrib import admin

# Register your models here.


from blog.models import posts, Category

admin.site.register(posts)
admin.site.register(Category)
