Hybrid Skin Cancer Detection using ABCD Parameters and CNN

AI-assisted medical image analysis system for automated skin cancer detection using image processing, dermatological ABCD analysis, texture feature extraction, and Convolutional Neural Networks (CNN) in MATLAB.

📌 Overview

Skin cancer is one of the most common forms of cancer worldwide. Early detection significantly improves treatment outcomes. This project presents a hybrid skin lesion analysis system that combines traditional dermatological ABCD analysis with deep learning-based classification.

The system processes dermoscopic skin lesion images, extracts clinically relevant features, and classifies lesions as Benign or Malignant using a trained CNN model. A user-friendly MATLAB GUI visualizes all preprocessing stages, segmentation results, extracted features, confidence scores, and final predictions.

🚀 Features
Image Preprocessing
Image Resizing
Grayscale Conversion
Median Filtering
Histogram Equalization
Low Pass Filtering (LPF)
High Pass Filtering (HPF)
Frequency Spectrum Analysis
Lesion Segmentation
Threshold-Based Segmentation
Morphological Operations
Boundary Detection
Lesion Mask Generation
Feature Extraction
ABCD Dermatological Analysis
Asymmetry (A)
Border Irregularity (B)
Color Variation (C)
Diameter (D)
Texture Analysis
Contrast
Energy
Homogeneity
Correlation
Deep Learning Classification
Custom CNN Architecture
Benign vs Malignant Classification
Confidence Score Prediction
GUI Visualization
Original Image
Preprocessing Outputs
Segmented Lesion
Edge Detection
ABCD Parameters
Prediction Result
Confidence Percentage
🏗 System Architecture
Input Dermoscopic Image
            │
            ▼
     Preprocessing
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
    Benign / Malignant
            │
            ▼
       GUI Output
📂 Project Structure
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
│      ├── Benign/
│      └── Malignant/
│
└── README.md
🛠 Technologies Used
MATLAB
Image Processing Toolbox
Deep Learning Toolbox
Computer Vision Techniques
Convolutional Neural Networks (CNN)
Medical Image Processing
📊 Dataset

The model is trained using dermoscopic skin lesion datasets containing benign and malignant lesion images.

Example datasets:

ISIC Archive
HAM10000 Dataset

Dataset Structure:

Dataset/
│
├── Benign/
│      ├── image1.jpg
│      ├── image2.jpg
│      └── ...
│
└── Malignant/
       ├── image1.jpg
       ├── image2.jpg
       └── ...
⚙ Installation
Clone Repository
git clone https://github.com/yourusername/Hybrid-Skin-Cancer-Detection.git
Open MATLAB

Open the project folder in MATLAB.

Train CNN Model

Run:

trainCNN

This generates:

trainedCNN.mat
▶ Running the Application

Launch GUI:

SkinCancerGUI

Steps:

Click Upload & Analyze Image
Select a skin lesion image
View preprocessing stages
View lesion segmentation
Analyze ABCD parameters
Get CNN prediction and confidence score
📈 Sample Outputs
Preprocessing Results
Original Image
Grayscale Image
Median Filtered Image
Enhanced Image
LPF Output
HPF Output
Frequency Spectrum
Segmentation Results
Lesion Mask
Edge Detection
Final Analysis
Prediction : Malignant

Confidence : 94.72%

Asymmetry : 0.63
Border : 2.14
Color : 0.57
Diameter : 6.85 mm
🎯 Applications
Computer-Aided Diagnosis (CAD)
Skin Lesion Screening
Medical Image Analysis
Healthcare AI Systems
Dermatology Research
Educational Demonstrations
🔮 Future Enhancements
Multi-class lesion classification
Melanoma stage prediction
Transfer Learning (ResNet, AlexNet, GoogLeNet)
Cloud-based deployment
Real-time mobile application
Explainable AI (XAI) integration
👨‍💻 Author

Satish Swami

Electronics & Telecommunication Engineering
MIT Academy of Engineering (MITAOE)

📜 License

This project is intended for educational, research, and academic purposes only.
