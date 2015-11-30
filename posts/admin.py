from django.contrib import admin

from embed_video.admin import AdminVideoMixin

from .models import Post


class PostAdmin(AdminVideoMixin, admin.ModelAdmin):
    list_display = ('title', 'video', 'id')
    # list_filter = ['published_date', 'author']
    # pass


admin.site.register(Post, PostAdmin)
