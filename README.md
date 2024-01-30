# Multidimensional Scaling (MDS) in R

## Description
This R script performs Multidimensional Scaling (MDS) on a given distance matrix, transforming high-dimensional data into a lower-dimensional space. The resulting matrix is displayed and visualized through a scatter plot.

## Usage
1. Input your distance matrix, `data`, to be analyzed.
2. Define the distance matrix `A` using the `dist()` function.
3. Enter the desired number of dimensions for the new data when prompted.
4. The script calculates the MDS result and displays the lower-dimensional matrix.
5. The scatter plot illustrates the data points in the reduced space.

## Code Explanation
- `A`: The distance matrix is computed from the input data.
- User input: Specify the number of dimensions for the new data.
- The script calculates the MDS result using matrix operations.
- Eigenvalues and eigenvectors are computed for the matrix.
- Singular values and vectors are derived, and the lower-dimensional matrix is obtained.
- The resulting matrix is printed, and a scatter plot visualizes the MDS mapping.

## Visualization
The script generates a scatter plot titled "MDS map," displaying data points in the reduced space. Each point corresponds to an observation, labeled with identifiers such as "cph," "aar," "ode," and "aal."

## Additional Notes
Ensure that you have the necessary libraries installed, such as `base` for basic functions and `graphics` for plotting.
Enjoy exploring your data in a reduced-dimensional space using Multidimensional Scaling in R!
