from fastapi import FastAPI, Query

app = FastAPI()

@app.get("/jobs/search")
def search_jobs(keyword: str = Query(...)):
    return {"jobs": [f"Example job for {keyword}"]}

@app.post("/jobs/save")
def save_job(job: dict):
    return {"message": "Job saved"}

@app.get("/jobs/history")
def get_history():
    return {"history": ["Job 1", "Job 2"]}
