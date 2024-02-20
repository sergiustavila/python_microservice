# Create helm chart
helm create pychart

# Package pychart
helm package mywebapp

# Install pychart
helm install pychart ./pychart-0.1.0.tgz

# Uninstall pychart
helm uninstall pychart