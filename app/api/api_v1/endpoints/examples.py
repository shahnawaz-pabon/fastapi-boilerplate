from fastapi import APIRouter, Depends, HTTPException
from fastapi.responses import JSONResponse

router = APIRouter()

@router.get("/hello")
def read_root():
    return JSONResponse(
        status_code=200,
        content={"status": "success", "message": "Hello World ⛄!!!"}
    )