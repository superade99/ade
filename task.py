import modal

app = modal.App("my-container-app")

custom_image = modal.Image.from_dockerhub("jenny951/mbc:latest")

@app.function(image=custom_image)
def run_in_container():
    import os
    print("Hello from container!")
    print("Current working dir:", os.getcwd())


