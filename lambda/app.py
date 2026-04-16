import json

def build_response(status_code, body):
    return {
        "statusCode": status_code,
        "headers": {
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Headers": "Content-Type,Authorization",
            "Access-Control-Allow-Methods": "GET,OPTIONS"
        },
        "body": json.dumps(body)
    }

def handler(event, context):
    route_key = event.get("routeKey", "")
    request_context = event.get("requestContext", {})
    authorizer = request_context.get("authorizer", {})
    jwt = authorizer.get("jwt", {})
    claims = jwt.get("claims", {})

    if route_key == "GET /public":
        return build_response(200, {
            "message": "Public endpoint working",
            "project": "SentinelShield"
        })

    if route_key == "GET /protected":
        return build_response(200, {
            "message": "Protected endpoint working",
            "user": claims.get("username") or claims.get("cognito:username"),
            "claims_present": bool(claims)
        })

    return build_response(404, {"message": "Not found"})
