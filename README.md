# ascii-art-web-dockerize

**ascii-art-web-dockerize** is a Go-powered web app that transforms your text into stunning ASCII art with a fun, Minecraft-inspired design. Its responsive interface ensures a smooth, engaging experience on any device, from desktop to mobile, making your words come alive in creative, pixelated style.

### Docker Support

This project includes a `Dockerfile`, allowing you to easily containerize and deploy the application. With Docker, you can run the app in an isolated environment, ensuring consistency across different systems and simplifying the deployment process.

## Screenshot

![Screenshot of ascii-art-web-stylize](https://github.com/alimjeeed/ascii-art-web-stylize/blob/main/screenshot/ascii-art-web-stylize-screenshot.jpg)

## Example Output

```plaintext
 _    _          _   _          
| |  | |        | | | |         
| |__| |   ___  | | | |   ___   
|  __  |  / _ \ | | | |  / _ \  
| |  | | |  __/ | | | | | (_) | 
|_|  |_|  \___| |_| |_|  \___/  
                                
                                
```

## How to Use

1. **Install Docker**:
   - Ensure Docker is installed on your system. You can download and install Docker from [Docker’s official website](https://www.docker.com/products/docker-desktop).

2. **Clone the Repository**:
    ```bash
    git clone https://github.com/alimjeeed/ascii-art-web-dockerize.git
    cd ascii-art-web-dockerize
    ```

3. **Build the Docker Image**:
    ```bash
    make build
    ```

4. **Run the Docker Container**:
    ```bash
    make run
    ```

5. **Access the Web Interface**:
    Open your web browser and navigate to `http://localhost:8000`.

6. **Generate ASCII Art**:
    Enter your text, select a banner style (Standard, Shadow, Thinkertoy), and click "Generate" to view the result.

## Project Structure

```plaintext
.
├── Dockerfile
├── Makefile
├── README.md
├── banners
│   ├── shadow.txt
│   ├── standard.txt
│   └── thinkertoy.txt
├── go.mod
├── internal
│   ├── generateasciiart.go
│   ├── getasciiart.go
│   ├── isstringsliceempty.go
│   ├── readbannerfile.go
│   └── stringtoascii.go
├── main.go
├── screenshot
│   └── ascii-art-web-stylize-screenshot.jpg
├── static
│   ├── minecraft-day.webp
│   ├── minecraft-night.webp
│   ├── monaco.ttf
│   └── style.css
├── templates
│   └── index.html
└── web
    ├── asciiart.go
    └── home.go
```   

## How It Works (Algorithm)

The application converts text into ASCII art using the following steps:

1. **Input Validation**: The input is checked to ensure it contains only valid ASCII characters.
2. **Banner Style Selection**: Users can choose between different ASCII art styles (Standard, Shadow, Thinkertoy).
3. **ASCII Mapping**: Each character in the input text is mapped to the corresponding ASCII representation from the selected template.
4. **Output Generation**: The ASCII art is constructed and displayed on the web page.

## Authors

- **Ali** - [GitHub](https://github.com/alimjeeed)
- **Basem** - [GitHub](https://github.com/basem9999)
- **Osama** - [GitHub](https://github.com/oalmaska)

## License Information

The project uses the **Monaco** font, designed by Jamie Place, licensed under the Creative Commons Attribution Share Alike ([CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)) license.

**Font Source**: [Monaco FontStruction](http://fontstruct.com/fontstructions/show/753435)
