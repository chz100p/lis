echo "download caffemodel..."
if not exist "python-agent\bvlc_alexnet.caffemodel" (
  if exist "..\deel\misc\bvlc_alexnet.caffemodel" (
    copy "..\deel\misc\bvlc_alexnet.caffemodel" "python-agent\."
  ) else (
    curl -o python-agent/bvlc_alexnet.caffemodel http://dl.caffe.berkeleyvision.org/bvlc_alexnet.caffemodel
  )
)
if not exist "python-agent\ilsvrc_2012_mean.npy" (
  if exist "..\deel\misc\ilsvrc_2012_mean.npy" (
    copy "..\deel\misc\ilsvrc_2012_mean.npy" "python-agent\."
  ) else (
    curl -f -L -o python-agent/ilsvrc_2012_mean.npy https://github.com/BVLC/caffe/raw/master/python/caffe/imagenet/ilsvrc_2012_mean.npy
  )
)
