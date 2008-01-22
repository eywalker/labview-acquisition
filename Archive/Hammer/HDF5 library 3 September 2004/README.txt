
HDF 5 library notes
-----------------------

[cas 08.02.2004]

New features:
1. The DLLs and library files required are now in the folder containing the VIs. 
2. There are test suites for the VIs that write datasets of different types.

Known bugs:
1. Write_attribute_string_array_HDF5.vi doesn't really work. I'm still trying to figure this out. The encoding is somehow messed up. There's no VI for writing a vector of strings as an attribute. I tried to make one by hacking the API in H5Awrite string array but it doesn't work. So I may have to try writing a dataset instead of an attribute.








