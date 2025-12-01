# Pet Image Classifier

This is the first project as part of the [Udacity AI Programming with Python](https://www.udacity.com/course/ai-programming-python-nanodegree--nd089) Nanodegree. It is an image classification application that identifies dog breeds from images. The application uses pre-trained CNN models to classify the images and then compares the results to the actual labels to evaluate the models' performance.

## Project Architecture

The application is composed of several Python modules that work together to perform the image classification task. The overall flow is as follows:

1. `check_images.py`: Entry Point
2. `get_input_args.py`: Read CLI Arguments
3. `get_pet_labels.py`: Create Pet Labels from Filenames
4. `classify_images.py`: Classify Images using CNN Model
5. `adjust_results4_isadog.py`: Check if Classified as Dog
6. `calculates_results_stats.py`: Calculate Performance Statistics
7. `print_results.py`: Display Results

### Modules

- **`check_images.py`**: The main script that orchestrates the entire workflow.
- **`get_input_args.py`**: Retrieves command-line arguments, allowing the user to specify the image directory, CNN model, and dog names file.
- **`get_pet_labels.py`**: Extracts the ground truth pet labels from the image filenames.
- **`classifier.py`**: This is the core classification function that uses a pretrained model to classify an image.
- **`classify_images.py`**: Compares the classifier's labels with the pet labels and adds the results to a dictionary.
- **`adjust_results4_isadog.py`**: Adjusts the results to indicate whether the classifier correctly identified an image as a dog.
- **`calculates_results_stats.py`**: Calculates statistics on the classification results, such as the percentage of correct matches.
- **`print_results.py`**: Prints the final results and performance statistics.

## How to Run

1.  **Prerequisites**: Ensure you have Python 3 installed. The script relies on `torch` and `torchvision` which you may need to install.

2.  **Execution**: You can run the application using the `run_models_batch.sh` script, which will test multiple models, or by running the `check_images.py` script directly.

    **Using the shell script:**
    ```bash
    ./run_models_batch.sh
    ```

    **Running the Python script directly:**
    ```bash
    python check_images.py --dir <path_to_images> --arch <model_name> --dogfile <path_to_dognames>
    ```

### Command-Line Arguments

-   `--dir`: Path to the folder of images. (Default: `pet_images/`)
-   `--arch`: The CNN model architecture to use. Choices are `vgg`, `alexnet`, or `resnet`. (Default: `vgg`)
-   `--dogfile`: Path to the text file containing dog names. (Default: `data/dognames.txt`)

## Dependencies

The project relies on the following Python libraries:

-   `torch`
-   `torchvision`

You can typically install these using pip:
```bash
pip install torch torchvision
```
