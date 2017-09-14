# **Finding Lane Lines on the Road**

[//]: # (Image References)

[image1]: ./pipeline_img/gray_1.jpg "Grayscale"
[image2]: ./pipeline_img/blur_2.jpg "Blurred"
[image3]: ./pipeline_img/canny_3.jpg "Canny"
[image4]: ./pipeline_img/roi_4.jpg "ROI"
[image5]: ./pipeline_img/lane_5.jpg "lanes"
[image6]: ./pipeline_img/final_6.jpg "Final"

---

### Reflection

### 1. Describe your pipeline. As part of the description, explain how you modified the draw_lines() function. Pipeline

Pipeline in this project consists of six steps. Step one the image is converted into grayscale image. Then a gaussian blur is applied to the grayscale image to smooth the image. Canny edge detection is applied to the blurred image to select the edges. Only the important viewing direction is selected by applying a mask to remove surrounding information. Hough transform is used to detect lines form the masked image. Here the detected lines may not be continuous, therefore left and right lanes have to be averaged and extended respectively. So draw_lines() function is modified to detect left and right lanes based on the slopes; slopes and y-intercepts of the both lanes are averaged to draw a continuous line starting from the lowest y-coordinate in the mask to highest y-coordinate.  Both left and right lanes are drawn on the original image to show the lines.

![alt text][image1]
![alt text][image2]
![alt text][image3]
![alt text][image4]
![alt text][image5]
![alt text][image6]


### 2. Shortcomings with the current pipeline

This pipeline can only work well if the road and lines are straight. It is not good when road has curves.

In bright sunlight the lane lines are difficult to detect especially yellow.

### 3. Improvements to the pipeline

Instead of averaging all the slope information a algorithm which can connect ends of two lines can produce a desirable result.

On a bright sunny day both lines cannot be detected properly using this pipeline. It can be solved by choosing a mask which highlight white and yellow.
