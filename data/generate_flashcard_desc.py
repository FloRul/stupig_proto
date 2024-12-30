import json
import boto3
import json
from datetime import datetime

config = {
    "model_id": "amazon.nova-pro-v1:0",
    "temperature": 0.5,
}


def get_bedrock_response(concept, subtheme, theme):
    bedrock = boto3.client(
        service_name="bedrock-runtime",
        region_name="us-east-1",
    )
    prompt = f"Create a humorous yet explicative enough 2-3 sentences, description of the following concept: {concept}, the subtheme is {subtheme} and the theme is {theme}"

    messages = [{"role": "user", "content": [{"text": prompt}]}]

    response = bedrock.converse(
        modelId=config["model_id"],
        messages=messages,
        inferenceConfig={
            "temperature": config["temperature"],
        },
    )

    output_message = response["output"]["message"]["content"][0]["text"]
    return output_message


# Read the JSON file
with open("data/flashcards.json", "r", encoding="utf8") as file:
    data = json.load(file)

# Iterate through themes, subthemes, and concepts
for theme in data["themes"]:
    theme_name = theme["name"]

    for subtheme in theme["subthemes"]:
        subtheme_name = subtheme["name"]

        for concept in subtheme["concepts"]:
            concept_name = concept["name"]

            # Generate description using Bedrock
            description = get_bedrock_response(concept_name, subtheme_name, theme_name)

            # Add description to the concept
            concept["description"] = description

            # Print for verification
            print(f"Theme: {theme_name}")
            print(f"Subtheme: {subtheme_name}")
            print(f"Concept: {concept_name}")
            print(f"Generated Description: {description}")
            print("-------------------")

# Save the updated JSON
# Get the current date
current_date = datetime.now().strftime("%Y%m%d")

# Save the updated JSON with the date in the file name
with open(f"data/updated_flashcards_{current_date}.json", "w", encoding="utf8") as file:
    json.dump(data, file, indent=4)
