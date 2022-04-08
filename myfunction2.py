from json import loads, dumps, load
import boto3
import cv2 as cv
client = boto3.client('lambda')


def lambda_handler(event, context):
    # TODO implement
    data = dumps(event)
    data = loads(data)
    print(data)
    return {
        'statusCode': 200,
        'headers': {
            'Content-type': 'application/json'
        },
        'body': 'name'
    }
