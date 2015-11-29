from django.shortcuts import render
# Create your views here.
# from django.shortcuts import redirect
# from django.utils import timezone
# from .models import Post, Comment  # , EmailMessage
# from django.shortcuts import render, get_object_or_404
# from .forms import PostForm, CommentForm, EncryptForm, DecryptForm, EmailMessageForm
# from django.contrib.auth.decorators import login_required
import inspect


def lineno():
    """Returns the current line number in our program.
    lineno() is a function to make it easy to grab the line
    number that we're on. Danny Yoo (dyoo@hkn.eecs.berkeley.edu)"""
    return inspect.currentframe().f_back.f_lineno


def index(request):
    print(lineno(), 'hello from jproj/jour/templates/jour/index.html')
    # return redirect('index.html')
    return render(request, 'jour/index.html')
