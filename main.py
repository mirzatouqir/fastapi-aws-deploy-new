from fastapi import FastAPI

app = FastAPI()


@app.get("/home")
async def hello_world():
    return {"message": "Hello World"}
