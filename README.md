# Image Frequency Analysis

This MATLAB script performs frequency analysis on an image using a 2D Fast Fourier Transform (FFT). It demonstrates the effects of two different filters (average and custom) on the image in the frequency domain.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)


## Introduction

The script reads an input image in RGB format, converts it to the YCbCr color space, and extracts the luminance (grayscale) component. It then applies an average filter and a custom filter to the grayscale image and analyzes their effects using 2D FFT.

## Prerequisites

- MATLAB installed on your machine
- Input image in the 'images' directory (or update the file path in the script)

## Usage

1. Clone this repository to your local machine.

```bash
git clone https://github.com/exsun/image-frequency-analysis.git
