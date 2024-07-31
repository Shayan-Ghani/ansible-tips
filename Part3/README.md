|default
Jinja2 have a very special filter: ‘default’, which allows to provide a value if variable is not defined.

when: foo|default(False) == True or bar|default(False) == True 
The use of ‘default’ filter allows to eliminate use of ‘is defined’ and simplifies playbooks a lot. In roles you can use role/defaults/main.yaml to store default values for all variables, but for playbooks there is such option. Use ‘|default’ filter for that.

|d()
when: foo|d(False) == True or bar|d(False) == True