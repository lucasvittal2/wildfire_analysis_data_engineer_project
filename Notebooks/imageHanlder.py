from PIL import Image, ImageTk
import tkinter as tk
from tkinter import filedialog

def open_image():
    file_path = filedialog.askopenfilename(filetypes=[("Image files", "*.jpg *.png *.bmp *.gif *.jpeg")])
    if file_path:
        image = Image.open(file_path)
        show_image(image)

def show_image(image):
    zoom_factor = 1.0

    def zoom_in():
        nonlocal zoom_factor
        zoom_factor *= 1.2
        update_image()

    def zoom_out():
        nonlocal zoom_factor
        zoom_factor /= 1.2
        update_image()

    def update_image():
        zoomed_image = image.resize((int(image.width * zoom_factor), int(image.height * zoom_factor)), Image.ANTIALIAS)
        photo = ImageTk.PhotoImage(zoomed_image)
        label.config(image=photo)
        label.image = photo

    root = tk.Tk()
    root.title("Image Viewer")

    frame = tk.Frame(root)
    frame.pack(padx=10, pady=10)

    label = tk.Label(frame)
    label.pack()

    open_button = tk.Button(root, text="Open Image", command=open_image)
    open_button.pack()

    zoom_in_button = tk.Button(frame, text="Zoom In", command=zoom_in)
    zoom_in_button.pack(side=tk.LEFT)

    zoom_out_button = tk.Button(frame, text="Zoom Out", command=zoom_out)
    zoom_out_button.pack(side=tk.LEFT)

    root.mainloop()


