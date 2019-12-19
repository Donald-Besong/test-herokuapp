import json
from bokeh.io import curdoc
from bokeh.models import Button
import os
import imp

file_dir = os.path.dirname(os.path.abspath(__file__))
working_dir = os.getcwd()
path_to_other = working_dir + "/OTHER/other_code.py"

print("testing ....****************************************************************")
print(path_to_other)
#other_code_local = imp.load_source('', path_to_other)
##print(other_code_local.number().age)
#
#print("Loading function ......")
#def lambda_handler(event, context):
#    # TODO implement
#    number_obj = other_code_local.number("Donald")
#    name = number_obj.name
#    age = number_obj.age
#    event_key1 = event['key1']
#    print(other_code_local.x)
#    print("value1 = " + event.get("key1"))
#    print("hello there. This is a test")
#    print("My name is = " + name)
#    print("My age is = " + str(age))
#    return {  #this return will only appear if I reun in within AWS
#        'my name': name,
#        'my age': age,
#        'statusCode': 200,
#        'event': event_key1,
#        'body': json.dumps('Hello from Lambda!')
#    }
#
#if __name__ == "__main__":
#    class Event:
#        def __init__(self):
#             self.e = { "key1": "key1_value",
#                  "key2": "key2_value",
#                  "key3": "key3_value"
#                  }
#        def get(self, key):
#            return(self.e[key])
#    event_obj = Event()
#    event = event_obj.e
#    context ="arbitrary context"
#    lambda_handler(event, context)
#    
#bt = Button(label=other_code.x)
#doc=curdoc()
#doc.add_root(bt)
#
##4. For Bokeh Server: Displaying the document using (note Microsft edge does not work well. Use Chrome)
##on the command line, run "bokeh serve --show main.py"
#
##5, In heroku, debug with "heroku logs --tail --app test-herokuapp-instance"