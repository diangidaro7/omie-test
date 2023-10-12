import json


def get(event, context):
    response = {
        "statusCode": 200,
        "body": json.dumps({"message": "Get function response"}),
    }
    return response


def post(event, context):
    response = {
        "statusCode": 200,
        "body": json.dumps({"message": "Post function response"}),
    }
    return response


def delete(event, context):
    response = {
        "statusCode": 200,
        "body": json.dumps({"message": "Delete function response"}),
    }
    return response
