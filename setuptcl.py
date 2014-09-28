# Basically a huge hack to compensate for the missing setuptools package
# in Tiny Core Linux. It seems that only find_packages is needed, so let's
# just hardcode it here...

def find_packages(exclude=()):
    allpackages = ['tests', 'influxdb', 'tests.influxdb']
    return [a for a in allpackages if a not in exclude]

import setup