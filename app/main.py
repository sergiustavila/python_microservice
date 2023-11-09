""" Module docstring """
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def read_root():
    """Function docstring"""
    return {"message": "Hello World!"}


@app.get("/data/{name}")
#pylint: disable=C0116
async def read_data(name: str):
    return {"message": f"Hell on World {name.capitalize()}"}
