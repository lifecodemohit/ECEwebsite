from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from ece.models import *
# Create your views here.

#def createGroup(request):
def index(request):
	homepage_slider = homepage.objects.all()
	latest_news_list = News.objects.all().order_by('-pub_date')[:3]
	rgroup_list = createGroup.objects.all()
	latest_events_list = Comingevent.objects.all().order_by('-pub_date')[:3]
	latest_publication_list = publications.objects.all().order_by('-pubDate')[:3]
	context={'homepage_slider' : homepage_slider, 'rgroup_list' : rgroup_list, 'latest_news_list': latest_news_list, 'latest_events_list': latest_events_list, 'latest_publication_list': latest_publication_list}
	return render(request, 'index.html', context)

def createGroup_detail(request, title):
	print title
	cGroup = get_object_or_404(createGroup, title=title)  
	publication_list = publications.objects.filter(category=title)
	pubCode_list = labPubCode.objects.filter(lpub_group=title)
	faculty_list = facultymem.objects.all()
	lab_list = lab.objects.all()
	context={'publication_list': publication_list, 'lab_list': lab_list, 'pubCode_list': pubCode_list, 'faculty_list': faculty_list, 'cGroup': cGroup }
	return render(request, 'createGroup.html', context)

def rMenu(request):
	context=""
	return render(request, 'researchMenu.html',context)

def rNews(request):
	news_list = News.objects.all().order_by('-pub_date')
	context={'news_list': news_list}
	return render(request, 'rNews.html',context)

def rLab(request):
	labs_list = lab.objects.all()
	context={'labs_list': labs_list}
	return render(request, 'rLab.html',context)

def news_detail(request, news_id_id):
	news = get_object_or_404(News, pk=news_id_id)                                                 
	return render(request, 'newsDetail.html', {'news': news})

def rComingMenu(request):
	context=""
	return render(request, 'comingEventMenu.html',context)

def rComingEvent(request):
	comingevent_list = Comingevent.objects.all().order_by('-pub_date')
	context={'comingevent_list': comingevent_list}
	return render(request, 'rComingEvent.html',context)

def ComingEvent_detail(request, comingevent_id_id):
	comingevent = get_object_or_404(Comingevent, pk=comingevent_id_id)                                                 
	return render(request, 'comingEventDetail.html', {'comingevent': comingevent})

def rcourses(request) :
	course_list = courses.objects.all()
	context={'course_list': course_list}
	return render(request, 'rCoursesMenu.html',context)

def course_detail(request, coursecode):
	print coursecode
	cCourse = get_object_or_404(courses, coursecode=coursecode)
	context = { 'cCourse': cCourse }
	return render(request, 'coursePage.html', context)

def rfaculty(request) :
	faculty_list = facultymem.objects.all()
	rgroup_list = createGroup.objects.all()
	course_list = courses.objects.all()
	context={'rgroup_list':rgroup_list,'course_list': course_list,'faculty_list': faculty_list}
	return render(request, 'rFacultyMenu.html',context)

def faculty_detail(request, facultycode):
	print facultycode
	rgroup_list = createGroup.objects.all()
	cFaculty = get_object_or_404(facultymem, facultycode=facultycode)
	publication_list = publications.objects.all()
	course_list = courses.objects.all()
	context = { 'rgroup_list':rgroup_list,'publication_list': publication_list,'course_list': course_list, 'cFaculty': cFaculty }
	return render(request, 'facultyPage.html', context)

def rpublication(request) :
	publication_list = publications.objects.all()
	context={'publication_list': publication_list}
	return render(request, 'rPublicationMenu.html',context)

def publication_detail(request, pubDetail):
	print pubDetail
	cPublication = get_object_or_404(publications, pubDetail=pubDetail)
	context = { 'cPublication': cPublication }
	return render(request, 'publicationPage.html', context)

def lab_detail(request, lab_code):
	print lab_code
	cLab = get_object_or_404(lab, lab_code=lab_code)  
	context={'cLab': cLab }
	return render(request, 'lab.html', context)

def labMem_detail(request, lab_code):
	print lab_code
	cLabMem = get_object_or_404(lab, lab_code=lab_code)  
	cLab = get_object_or_404(lab, lab_code=lab_code)
	context={'cLabMem': cLabMem , 'cLab': cLab }
	return render(request, 'labMem.html', context)

def labRes_detail(request, lab_code):
	print lab_code
	cLabMem = get_object_or_404(lab, lab_code=lab_code)
	cLab = get_object_or_404(lab, lab_code=lab_code)  
	context={'cLabMem': cLabMem, 'cLab': cLab  }
	return render(request, 'labRes.html', context)

def labPub_detail(request, lab_code):
	print lab_code
	cLabMem = get_object_or_404(lab, lab_code=lab_code) 
	cLab = get_object_or_404(lab, lab_code=lab_code)
	context={'cLabMem': cLabMem, 'cLab': cLab }
	return render(request, 'labPub.html', context)
