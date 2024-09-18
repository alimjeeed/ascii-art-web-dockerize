# ASCII Art Web Dockerize

**ASCII Art Web Dockerize** is an updated version of **ASCII Art Web Stylize**, now containerized with Docker for easier deployment and consistent execution. This project maintains the core functionality of transforming text into ASCII art while leveraging Docker for streamlined setup.

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

## Usage

1. **Install Docker**:
   - Ensure Docker is installed on your system. You can download and install Docker from [Docker’s official website](https://www.docker.com/products/docker-desktop).

2. **Clone the Repository**:
    ```bash
    git clone https://github.com/alimjeeed/ascii-art-web-dockerize.git
    cd ascii-art-web-dockerize
    ```

3. **Build the Docker Image**:
    ```bash
    docker build -t ascii-art-web-dockerize .
    ```

4. **Run the Docker Container**:
    ```bash
    docker run -p 8000:8000 ascii-art-web-dockerize
    ```

5. **Access the Web Interface**:
    Open your web browser and go to `http://localhost:8000`.

6. **Generate ASCII Art**:
    Enter your text, choose a banner style (Standard, Shadow, Thinkertoy), and click "Generate" to see the result.

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
