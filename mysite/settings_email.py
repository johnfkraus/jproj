# allauthdemo/settings_email.py

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_USE_TLS = True
# Gmail SMTP server address: smtp.gmail.com
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
# Gmail SMTP username: Your full Gmail address (e.g. yourusername@gmail.com)
EMAIL_HOST_USER = 'project4journalism@gmail.com'  # my gmail account'

DEFAULT_FROM_EMAIL = 'project4journalism@gmail.com'   # my gmail account'
DEFAULT_TO_EMAIL = 'johnkraus3@gmail.com'  # to email'

"""
    Gmail SMTP port (TLS): 587
    Gmail SMTP port (SSL): 465
    Gmail SMTP TLS/SSL required: yes
"""
