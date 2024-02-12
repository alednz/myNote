#too many executable, I need a script that creates a vnc server instance
#specific for the user, so the client get the correct resolution
#x0vncserver control the physical display output, so the client cannot get
#a correct resoluzione

#-localhost no, because:
#the solution with localhost:yes need a ssh tunnel, it can be done with
#tigervncserver [ip address] but the client should run the command
#vncviewer -via [ip address], very annoyng

#-SecurityTypes plain, because:
#I want username to be asked

#-PAMService login, because:
#I want username and password of the user that started the vncserver instance

#the basic concet is that a vnc display is assigned to a user, example:
#[ip address] : 1 for alessandro user
#the bind for user can be done also via configuration script /etc/vnc/[something]
#but I assume that the related vnc instances must be started as root

tigervncserver -localhost no -SecurityTypes plain -PAMService login
