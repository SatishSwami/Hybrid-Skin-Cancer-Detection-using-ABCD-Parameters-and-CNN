# 🩺 Hybrid Skin Cancer Detection using ABCD Parameters and CNN

An AI-assisted medical image analysis system developed in MATLAB for automated skin cancer detection using image processing, ABCD dermatological analysis, texture feature extraction, and Convolutional Neural Networks (CNN).

---

## 📖 Project Overview

Skin cancer is one of the most common cancers worldwide. Early detection plays a crucial role in successful treatment.

This project combines traditional dermatological ABCD analysis with deep learning techniques to classify skin lesions as **Benign** or **Malignant** using dermoscopic images.

The system performs:

- Image Preprocessing
- Lesion Segmentation
- ABCD Feature Extraction
- Texture Analysis
- CNN-Based Classification
- GUI-Based Visualization

---

## 🚀 Features

### Image Preprocessing
- Image Resizing
- Grayscale Conversion
- Median Filtering
- Histogram Equalization
- Low Pass Filtering (LPF)
- High Pass Filtering (HPF)
- Frequency Spectrum Analysis

### Lesion Segmentation
- Threshold-Based Segmentation
- Morphological Operations
- Edge Detection
- Lesion Mask Generation

### ABCD Analysis
- Asymmetry
- Border Irregularity
- Color Variation
- Diameter Measurement

### Texture Analysis
- Contrast
- Energy
- Homogeneity
- Correlation

### Deep Learning Classification
- Custom CNN Architecture
- Benign / Malignant Classification
- Confidence Score Prediction

### MATLAB GUI
- Original Image Display
- Preprocessing Outputs
- Segmentation Results
- ABCD Parameters
- Prediction Results
- Confidence Score

---

## 🏗 System Workflow

```text
Input Skin Lesion Image
           │
           ▼
    Image Preprocessing
           │
           ▼
    Lesion Segmentation
           │
           ▼
    ABCD Feature Extraction
           │
           ▼
      Texture Analysis
           │
           ▼
    CNN Classification
           │
           ▼
  Benign / Malignant Result
           │
           ▼
         GUI Output
```

---

## 📂 Project Structure

```text
SkinCancerProject/
│
├── preprocess.m
├── segmentation.m
├── featureExtraction.m
├── trainCNN.m
├── predictCNN.m
├── SkinCancerGUI.m
├── trainedCNN.mat
│
├── Dataset/
│   ├── Benign/
│   └── Malignant/
│
└── README.md
```

---

## 🛠 Technologies Used

- MATLAB
- Image Processing Toolbox
- Deep Learning Toolbox
- Computer Vision
- Convolutional Neural Networks (CNN)
- Medical Image Processing

---

## 📊 Dataset

The model is trained using dermoscopic skin lesion images containing:

- Benign Lesions
- Malignant Lesions

### Recommended Datasets

- ISIC Dataset
- HAM10000 Dataset

### Dataset Structure

```text
Dataset/
│
├── Benign/
│   ├── image1.jpg
│   ├── image2.jpg
│   └── ...
│
└── Malignant/
    ├── image1.jpg
    ├── image2.jpg
    └── ...
```

---

## ⚙ Installation

### 1. Clone Repository

```bash
git clone https://github.com/your-username/Hybrid-Skin-Cancer-Detection.git
```

### 2. Open MATLAB

Open the project folder in MATLAB.

### 3. Train CNN Model

Run:

```matlab
trainCNN
```

This generates:

```text
trainedCNN.mat
```

---

## ▶ Run Application

Launch the GUI:

```matlab
SkinCancerGUI
```

### Steps

1. Click Upload & Analyze Image
2. Select a skin lesion image
3. View preprocessing outputs
4. View segmentation result
5. Analyze ABCD parameters
6. Get CNN prediction and confidence score

---

## 📈 Sample Output

```text
Prediction : Malignant

Confidence : 94.72%

Asymmetry : 0.63
Border     : 2.14
Color      : 0.57
Diameter   : 6.85 mm
```

---

## 🖼 GUI Preview

Add your screenshots inside an `assets` folder.

```text
assets/
├── gui_output.png
├── workflow.png
├── segmentation_result.png
```

Then add:

```markdown
## GUI Preview

![GUI](assets/gui_output.png)

## Workflow

![Workflow](assets/workflow.png)
```

---

## 🎯 Applications

- Computer-Aided Diagnosis (CAD)
- Skin Cancer Screening
- Medical Image Analysis
- Healthcare AI Systems
- Dermatology Research
- Educational Demonstrations

---

## 🔮 Future Enhancements

- Multi-Class Lesion Classification
- Melanoma Stage Prediction
- Transfer Learning using ResNet50
- Cloud-Based Deployment
- Mobile Application Support
- Explainable AI (XAI)

---

## 🧠 Key Skills Demonstrated

- Medical Image Processing
- Deep Learning
- Computer Vision
- CNN Architecture Design
- MATLAB Programming
- Feature Extraction
- Image Segmentation
- GUI Development
- Pattern Recognition
- Healthcare AI

---

## 👨‍💻 Author

**Satish Swami**

Electronics & Telecommunication Engineering  
MIT Academy of Engineering (MITAOE)

---

## 📜 License

This project is intended for educational and research purposes only.

---

## ⭐ Support

If you found this project useful, consider giving the repository a star.
