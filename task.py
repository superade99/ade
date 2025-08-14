import modal

app = modal.App("dockerhub-task")

# Public Docker Hub image
image = modal.Image.from_dockerhub("jenny951/mbc:latest")

@app.function(image=image)
def run_task():
    print("Hello from Docker Hub image!")

if name == "main":
    app.deploy()
