# Bounding Box

Create a new bounding_box object.

## Usage

``` r
bounding_box(min, max)
```

## Arguments

- min:

  A numeric vector of length 3. Minimum vertex box-corner.

- max:

  A numeric vector of length 3. Maximum vertex box-corner.

## Value

A bounding_box

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct BoundingBox {
        Vector3 min;        // Minimum vertex box-corner
        Vector3 max;        // Maximum vertex box-corner
    } BoundingBox;
