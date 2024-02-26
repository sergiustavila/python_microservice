""" Unit tests docstring """
from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)


def test_read_root():
    """Function docstring"""
    response = client.get("/")

    assert response.status_code == 200
    assert response.json() == {"message": "Hello World!"}


def test_read_data():
    """Function docstring"""
    response = client.get("/data/sergiu")

    assert response.status_code == 200
    assert response.json() == {"message": "Hello World sergiu"}
