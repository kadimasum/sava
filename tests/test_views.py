from django.urls import reverse
from app.views import index

def test_index_view(client):
    response = client.get(reverse('index'))  
    assert response.status_code == 200
    assert 'index.html' in [template.name for template in response.templates]

