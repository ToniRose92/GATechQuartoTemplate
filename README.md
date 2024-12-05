# GA Tech Quarto Template

This Quarto extension provides a Georgia Tech–branded PDF format with custom styling and formatting, including a side color band and a logo. It was inspired by the customization techniques outlined by [N. Rennie’s Quarto PDF blog post](https://nrennie.rbind.io/blog/pdf-quarto/making-pretty-pdf-quarto/) and leverages some ideas from their formatting approach.

## Features

- Georgia Tech branding with customizable logo and side band color.
- Underlined section headers.
- Modifiable header and configuration files to personalize further.
- Works with both R and Python Quarto projects and integrates smoothly in RStudio or JupyterLab environments.

## Prerequisites

1. **Quarto**: Make sure you have [Quarto installed](https://quarto.org/docs/get-started/).  
   - [Quarto Installation Docs](https://quarto.org/docs/get-started/)

2. **LaTeX distribution**: For PDF rendering, ensure that you have a LaTeX distribution installed (e.g., [TinyTeX](https://yihui.org/tinytex/), [TeX Live](https://www.tug.org/texlive/), or [MikTeX](https://miktex.org/)). Quarto requires this to render PDFs properly.

3. **R and RStudio (optional if using R)**:  
   - [Download R](https://cran.r-project.org/)  
   - [Download RStudio](https://posit.co/download/rstudio-desktop/) (for an easy-to-use GUI environment)

4. **Python and JupyterLab (optional if using Python)**:  
   - [Download Python](https://www.python.org/downloads/)  
   - [Install JupyterLab](https://jupyter.org/install) for a browser-based development environment

If you are using R, ensure any necessary R packages for Quarto documents are installed. Similarly, if you use Python, confirm that `quarto` and any needed Python libraries are available in your environment.

For more documentation on Quarto extensions, see the [Quarto Extensions Documentation](https://quarto.org/docs/extensions/).

## Templates vs. Extensions

**Templates** and **Extensions** serve different purposes within Quarto:

**Templates**: Provide a structured starting point for new documents or projects, often including preset layouts, formatting, and example content. They’re ideal if you want a quick, ready-made setup to begin authoring your content without starting from scratch.

**Extensions**: Enhance Quarto by adding new formats, tools, or functionality. They can be applied to existing projects and documents to change or improve their output appearance or capabilities.

Use a **template** if you’re starting a new project and want a head start with a proven layout. Use an **extension** if you already have a project and want to add new formatting options, like this GA Tech–branded PDF style, without restructuring your existing work.

Learn more about templates here: [Quarto Templates Documentation](https://quarto.org/docs/extensions/starter-templates.html).

## Using as a Template

To create a new project from this template, run the following command:

```bash

quarto use template ToniRose92/GATechQuartoTemplate
```
This will create a new directory with starter files and the configuration needed to produce GA Tech–branded PDFs. It’s an excellent way to begin a new document or report with the styling ready to go.

## Installation as an Extension for an Existing Project

### Option A: Using the Command Line

1. Open a terminal and navigate to the directory containing your Quarto project or the `.qmd` file you’d like to style.
2. Run the following command to install the GA Tech template:

    ```bash
    quarto install extension ToniRose92/GATechQuartoTemplate
    ```

   This will download and set up the extension in your current project.

3. The extension files (including `_extension.yml` and `header.tex`) will be placed in the `extensions/ToniRose92-GATechQuartoTemplate` directory (or similar). Ensure your `.qmd` file is at the same or a higher directory level as the `extensions` folder so that Quarto can find the format.

### Option B: Manual Installation

If you prefer to install manually:

1. Clone or download the [GitHub repository](https://github.com/ToniRose92/GATechQuartoTemplate) for this extension.
2. Move the entire extension directory (containing `_extension.yml` and related files) into your project directory, for example:

    ```
    your_project/
    ├─ your_document.qmd
    ├─ extensions/
    │  └─ gatech/
    │      ├─ _extension.yml
    │      ├─ header.tex
    │      └─ ...
    ```

   Ensure that the extension directory structure remains intact.

## Usage

Once the extension is installed, you can apply it to your `.qmd` files. 

### Using the Command Line

From your project directory:

```bash
quarto render your_document.qmd --to gatech-pdf
```

This will produce a PDF file styled with the GA Tech branding.

### Using RStudio

1. Open RStudio and load your `.qmd` file.
2. In the file’s YAML front matter, specify the format (as seen in the [template.qmd](https://github.com/ToniRose92/GATechQuartoTemplate/blob/main/template.qmd) file):

    ```yaml
    format:
      gatech-pdf: default
    ```

3. Click the “Render” button in RStudio to compile your document to a GA Tech–themed PDF.

### Using JupyterLab

1. Launch JupyterLab.
2. Open your `.qmd` file.
3. In the YAML front matter of your `.qmd` file, specify:

    ```yaml
    format:
      gatech-pdf: default
    ```

4. Open the Terminal within JupyterLab and run:

    ```bash
    quarto render your_document.qmd
    ```

   The rendered PDF will appear in your directory. You can also use JupyterLab’s command palette or buttons if available for Quarto rendering.

## Customization

- (TO DO/ In Progress) **Logo and Side Band Color:** Modify the `_extension.yml` file in the `extensions/GATechQuartoTemplate` directory to change the path to the logo and the side band color.  
- **Further Customizations:** For more advanced customizations, edit the `header.tex` file. You may adjust fonts, margins, header styles, and other LaTeX configurations. These modifications allow you to personalize the template to match other branding or stylistic requirements.

## Additional Resources

- **Quarto Extensions Documentation:** [https://quarto.org/docs/extensions/](https://quarto.org/docs/extensions/)
- **N. Rennie’s Blog Post (Inspiration):** [Making Pretty PDFs in Quarto](https://nrennie.rbind.io/blog/pdf-quarto/making-pretty-pdf-quarto/)  
- **Quarto with R:**  
  - [Install R](https://cran.r-project.org/) and [RStudio](https://posit.co/download/rstudio-desktop/)
- **Quarto with Python:**  
  - [Python Downloads](https://www.python.org/downloads/)  
  - [JupyterLab Installation Guide](https://jupyter.org/install)

If you encounter any issues or have questions, feel free to open an issue on the [GitHub repository](https://github.com/ToniRose92/GATechQuartoTemplate). Enjoy creating beautifully branded GA Tech PDFs!
