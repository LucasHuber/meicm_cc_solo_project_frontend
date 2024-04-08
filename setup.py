import os

__location__ = os.path.realpath(
    os.path.join(os.getcwd(), os.path.dirname(__file__)))

try:
    with open(os.path.join(__location__, 'index.html'), 'r') as file:
        filedata = file.read()
    
    filedata = filedata.replace("<SOCKET_URI_PLACEHOLDER>", os.environ["SOCKET_URI"])

    with open(os.path.join(__location__, 'index.html'), 'w') as file:
        file.write(filedata)
    
    print("Python executed successfully")
except:
    print("There was an error while executing")
