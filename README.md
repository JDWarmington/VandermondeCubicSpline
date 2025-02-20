Vandermonde Matrix Interpolation

Overview

This MATLAB script, VandermondeMatrix.m, demonstrates polynomial interpolation using the Vandermonde matrix approach and compares it with natural cubic spline interpolation. It uses two sets of data points (5 and 10 points) and visualizes the results.

Features

Constructs a Vandermonde matrix for given data points.

Computes polynomial coefficients by solving a linear system.

Evaluates the polynomial at fine grid points.

Performs natural cubic spline interpolation for comparison.

Generates and displays plots comparing polynomial and spline interpolation.

Saves the combined results of the 5-point interpolation as a PDF.

Prerequisites

MATLAB (R2017 or later recommended)

How to Use

Open MATLAB and navigate to the directory containing VandermondeMatrix.m.

Run the script by typing:

VandermondeMatrix

The script will generate and display six figures:

Polynomial interpolation (5 points)

Spline interpolation (5 points)

Combined plot (5 points)

Polynomial interpolation (10 points)

Spline interpolation (10 points)

Combined plot (10 points)

The combined plot for 5 points is saved as CombinedResults5Point.pdf.

Code Breakdown

1. Define Data Points

Two sets of data points: x5, y5 (5 points) and x10, y10 (10 points).

2. Construct Vandermonde Matrix

Builds a Vandermonde matrix V where each column represents increasing powers of x.

3. Solve for Polynomial Coefficients

Uses MATLAB's matrix division operator \ to solve V * a = y.

4. Polynomial Evaluation

Computes values at fine grid points for smooth plotting.

5. Spline Interpolation

Uses MATLAB's spline function for natural cubic spline interpolation.

6. Plot Results

Displays the original data points, polynomial interpolation, and spline interpolation.

Uses different colors and markers for clarity.

Interpretation of Results

Polynomial interpolation is effective for small datasets but can oscillate for larger ones.

Spline interpolation often provides a smoother and more stable approximation.

Customization

Modify x5, y5 or x10, y10 to test with different datasets.

Adjust plot formatting to change colors, markers, or line styles.

Save additional plots by modifying the print command.

Troubleshooting

Ill-conditioned matrix warning: The Vandermonde matrix can become unstable for large n. Consider alternative interpolation methods.

MATLAB version compatibility: Ensure your MATLAB version supports the spline function.

License

This script is provided for educational and demonstration purposes. Modify and use as needed.

Contact

For questions or improvements, feel free to contribute or reach out!

