from django.db import models
from django.db.models import permalink

# Create your models here.

class posts(models.Model):

	author = models.CharField(max_length = 45)
	title = models.CharField(max_length = 100)
	bodytext = models.TextField()
	timestamp = models.DateTimeField()
	image1 = models.ImageField(upload_to="/Users/Rusty Enchiladea/firstblog/blog/templates/static/images/heroimage/", default='')
	image2 = models.ImageField(upload_to="/Users/Rusty Enchiladea/firstblog/blog/templates/static/images/optional/", default='')
	category = models.ForeignKey('blog.Category', default='')


	def __unicode__(self):
	 return '%s' % self.title

	@permalink
	def get_absolute_url(self):
	 return ('view_blog_post', None, { 'slug': self.slug })



class Category(models.Model):
	title = models.CharField(max_length=100, db_index=True)
	slug = models.SlugField(max_length=100, db_index=True)
		

	def __unicode__(self):
	 return '%s' % self.title

	@permalink
	def get_absolute_url(self):
	 return ('view_blog_category', None, { 'slug': self.slug })




