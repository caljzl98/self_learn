import cv2 as cv
import numpy as np

haystack_img = cv.imread('images/albion_farm.jpg', cv.IMREAD_UNCHANGED)
needle_img = cv.imread('images/albion_cabbage.jpg', cv.IMREAD_UNCHANGED)

result = cv.matchTemplate(haystack_img, needle_img, cv.TM_CCOEFF_NORMED)

# # testing..
# cv.imshow('Result', result)
# cv.waitKey()

#  get the best match position
min_val, max_val, min_loc, max_loc = cv.minMaxLoc(result)

print('Best match top left position: %s' % str(max_loc))
print('Best match confidence: %s' % max_val)