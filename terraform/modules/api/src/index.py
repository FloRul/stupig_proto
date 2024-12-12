import os
from typing import Dict


import boto3
from aws_lambda_powertools import Logger, Tracer
from aws_lambda_powertools.event_handler import APIGatewayRestResolver, Response
from aws_lambda_powertools.utilities.typing import LambdaContext
from aws_lambda_powertools.logging import correlation_paths


tracer = Tracer()
logger = Logger()
app = APIGatewayRestResolver()


lambda_client = boto3.client("lambda")

HEADERS = {
    "Access-Control-Allow-Origin": os.environ.get("CORS_ORIGIN", "*"),
    "Access-Control-Allow-Headers": "Content-Type,Authorization",
    "Access-Control-Allow-Methods": "GET,POST,PUT,DELETE,OPTIONS",
    "Access-Control-Allow-Credentials": "true",
}


class HttpError(Exception):
    def __init__(self, status_code: int, message: str):
        self.status_code = status_code
        self.message = message


@app.exception_handler(HttpError)
def handle_http_error(error: HttpError):
    return Response(
        body=error.message,
        status_code=error.status_code,
        headers=HEADERS,
    )


@app.get("/project")
@tracer.capture_method
def get_random_project():
    theme = app.current_event.query_string_parameters["theme"]
    subtheme = app.current_event.query_string_parameters["subtheme"]
    try:
        return {
            "name": "Random Project",
            "description": "This is a project",
        }
    except Exception as e:
        raise HttpError(500, str(e))


@app.get("/event")
@tracer.capture_method
def get_random_event():
    try:
        return {
            "name": "Random Event",
            "description": "This is an event",
            "baseSuccessRate": 0.5,
        }
    except Exception as e:
        raise HttpError(500, str(e))


@logger.inject_lambda_context(
    correlation_id_path=correlation_paths.API_GATEWAY_REST,
    log_event=True,
)
@tracer.capture_lambda_handler
def lambda_handler(event: Dict, context: LambdaContext) -> Dict:
    return app.resolve(event, context)
