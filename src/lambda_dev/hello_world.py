import json

def lambda_handler(event, context):
    # Extracting information from the event
    name = event.get('name', 'World')

    # Constructing the response
    response = {
        'statusCode': 200,
        'body': json.dumps(f'Hello, {name}!')
    }

    return response
