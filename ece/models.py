from django.db import models

# Create your models here.

class homepage(models.Model):
	extra_inf = models.CharField(max_length=200000,null=True,blank=True)
	extra_inf = models.CharField(max_length=200000,null=True,blank=True)
	extra_inf = models.CharField(max_length=200000,null=True,blank=True)
	img1=models.ImageField(null=True,upload_to = 'home_folder/')
	img2=models.ImageField(null=True,upload_to = 'home_folder/')
	img3=models.ImageField(null=True,upload_to = 'home_folder/')
	img4=models.ImageField(null=True,upload_to = 'home_folder/')
	img5=models.ImageField(null=True,upload_to = 'home_folder/')
	img6=models.ImageField(null=True,upload_to = 'home_folder/')

class createGroup(models.Model):
	title=models.CharField(max_length=2000)
	about=models.CharField(max_length=800000)
	category = models.CharField(max_length=2000,null=True,blank=True)
	img1=models.ImageField(null=True,upload_to = 'pic_folder/')
	img2=models.ImageField(null=True,upload_to = 'pic_folder/')
	img3=models.ImageField(null=True,upload_to = 'pic_folder/')
	img4=models.ImageField(null=True,upload_to = 'pic_folder/')
	img5=models.ImageField(null=True,upload_to = 'pic_folder/')
	img6=models.ImageField(null=True,upload_to = 'pic_folder/')
	extra_inf = models.CharField(max_length=200000,null=True,blank=True)
	extra_inf1 = models.CharField(max_length=200000,null=True,blank=True)
	def __unicode__(self):  # Python 3: def __str__(self):
		return self.title

#class latestPub(models.Model):
#	pub_id = models.ForeignKey(createGroup) 
#	pubHeading=models.CharField(max_length=20000)
#	pubDetail=models.CharField(max_length=800000)
#	pubDate = models.DateTimeField('date published')
#	extra_inf = models.CharField(max_length=200000,null=True,blank=True)
#	extra_inf1 = models.CharField(max_length=200000,null=True,blank=True)

class News(models.Model):
    heading = models.CharField(max_length=2000)
    category = models.CharField(max_length=2000)
    pub_date = models.DateTimeField('date published')
    main_text = models.CharField(max_length=80000)
    extra_inf = models.CharField(max_length=20000,null=True,blank=True)
    def __unicode__(self):  # Python 3: def __str__(self):
    	return self.heading

class News_image(models.Model):
	news_id = models.ForeignKey(News) 	
	img1=models.ImageField(null=True,upload_to = 'pic_folder/')
	extra_inf = models.CharField(max_length=20000,null=True, blank=True)

class Comingevent(models.Model):
    heading = models.CharField(max_length=2000)
    category = models.CharField(max_length=2000)
    pub_date = models.DateTimeField('date published')
    main_text = models.CharField(max_length=20000)
    extra_inf = models.CharField(max_length=20000,null=True,blank=True)
    def __unicode__(self):  # Python 3: def __str__(self):
    	return self.heading

class Comingevent_image(models.Model):
	comingevent_id = models.ForeignKey(Comingevent) 	
	img1=models.ImageField(null=True,upload_to = 'event_folder/')
	extra_inf = models.CharField(max_length=20000,null=True, blank=True)


class publications(models.Model):
	category = models.CharField(max_length=2000)
	pubHeading=models.CharField(max_length=20000)
	pubDetail=models.CharField(max_length=20000)
	pubDate = models.DateTimeField('date published')
	extra_inf = models.CharField(max_length=20000,null=True,blank=True)
	title = models.CharField(max_length=20000,null=True,blank=True)
	pubtype = models.CharField(max_length=20000,null=True,blank=True)
	yearofpub = models.CharField(max_length=20000,null=True,blank=True)
	journal = models.CharField(max_length=20000,null=True,blank=True)
	volume = models.CharField(max_length=20000,null=True,blank=True)
	pagination = models.CharField(max_length=20000,null=True,blank=True)
	abstract = models.CharField(max_length=20000,null=True,blank=True)
	url = models.CharField(max_length=20000,null=True,blank=True) 
	doi = models.CharField(max_length=20000,null=True,blank=True)
	def __unicode__(self):  # Python 3: def __str__(self):
		return self.pubDetail

class author(models.Model):
	author_id = models.ForeignKey(publications)
	authorcode = models.CharField(max_length=20000,null=True,blank=True)  
	extrainf = models.CharField(max_length=20000,null=True,blank=True)
	extrainf1 = models.CharField(max_length=20000,null=True,blank=True)

class facultymem(models.Model):
	name = models.CharField(max_length=200,null=True,blank=True)
	about = models.CharField(max_length=5000,null=True,blank=True)
	img=models.ImageField(null=True,upload_to = 'faculty_folder/')
	facultycode = models.CharField(max_length=200,null=True,blank=True)
	extrainf = models.CharField(max_length=2000,null=True,blank=True)
	extrainf1 = models.CharField(max_length=2000,null=True,blank=True)
	#extrainf2 = models.CharField(max_length=2000,null=True,blank=True)
	#extrainf3 = models.CharField(max_length=2000,null=True,blank=True)
	def __unicode__(self):  # Python 3: def __str__(self):
		return self.facultycode

class facultycoursecode(models.Model):
	facultycourse_id = models.ForeignKey(facultymem)
	fcoursecode = models.CharField(max_length=200,null=True,blank=True) 
	extrainf = models.CharField(max_length=2000,null=True,blank=True)
	extrainf1 = models.CharField(max_length=2000,null=True,blank=True)
	def __unicode__(self):  # Python 3: def __str__(self):
		return self.fcoursecode

class courses(models.Model):
	img = models.ImageField(null=True,upload_to = 'course_folder/')
	coursecode = models.CharField(max_length=200,null=True,blank=True)
	coursename = models.CharField(max_length=200,null=True,blank=True)
	about = models.CharField(max_length=5000,null=True,blank=True)
	extrainf = models.CharField(max_length=2000,null=True,blank=True)
	extrainf1 = models.CharField(max_length=2000,null=True,blank=True)
	def __unicode__(self):  # Python 3: def __str__(self):
		return self.coursecode

class courseprerequisite(models.Model):
	precourse_id = models.ForeignKey(courses)
	coursecodepre = models.CharField(max_length=20000,null=True,blank=True)
	extrainf = models.CharField(max_length=20000,null=True,blank=True)
	extrainf = models.CharField(max_length=20000,null=True,blank=True)

class lab(models.Model):
	lab_code = models.CharField(max_length=2000)
	lab_name = models.CharField(max_length=2000)
	lab_about = models.TextField()
	lab_extra = models.CharField(max_length=2000)
	lab_extra1 = models.CharField(max_length=2000)
	lab_extra2 = models.CharField(max_length=2000)
	img1=models.ImageField(null=True,upload_to = 'lab_folder/')
	img2=models.ImageField(null=True,upload_to = 'lab_folder/')
	img3=models.ImageField(null=True,upload_to = 'lab_folder/')
	img4=models.ImageField(null=True,upload_to = 'lab_folder/')
	def __unicode__(self):  # Python 3: def __str__(self):
		return self.lab_name

class labMember(models.Model):
	lmem_id =  models.ForeignKey(lab)
	lmem_name = models.CharField(max_length=200)
	lmem_email = models.CharField(max_length=200)
	lmem_link = models.CharField(max_length=200)
	lmem_about = models.CharField(max_length=5000)
	lmem_extra = models.CharField(max_length=5000)
	lmem_extra1 = models.CharField(max_length=5000)

class labPublication(models.Model):
	lpub_id = models.ForeignKey(lab)
	lpub_year = models.CharField(max_length=200)
	lpub_about = models.CharField(max_length=4000)
	lpub_pdf = models.CharField(max_length=200)
	lpub_extra = models.CharField(max_length=2000)
	lpub_extra1 = models.CharField(max_length=2000)

class labResearch(models.Model):
	lresearch_id = models.ForeignKey(lab)
	lresearch_title = models.CharField(max_length=200)
	lresearch_about = models.CharField(max_length=4000)
	lresearch_maintext = models.TextField()
	lresearch_extra = models.CharField(max_length=2000)
	lresearch_extra1 = models.CharField(max_length=2000)

