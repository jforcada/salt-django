# Salt Django

## Description
A Vagrant setup, with set of Salt states, to build a development environment with the following stack:

- Python 3
- Django
- uWSGI
- Nginx
- PostgreSQL

After clone, just customize the following:
- In **salt/roots/uwsgi/app_wsgi.ini**, change the **module** key with the name of your Django project.
- In the **Vagrantfile**, change the host shared folder pointed by **/home/vagrant/app/**, to the one containing your Django project.

Read the blog post at: [blog.jforcada.com](http://blog.jforcada.com/2014/09/automated-development-environment-for-django-with-vagrant-and-salt-2/)

**NOTE: This configuration has no security consideration at all**
