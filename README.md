# Shader-Classroom

Classroom to teach shaders, this is using OpenGL (3.3) SDL and Glew. The course 
is available 
[here](https://drive.google.com/drive/folders/1b6bY7fdPxs3LHLO13OZlNwwO73Ry0pzP?usp=sharing).

## Japanese Flag

This example is a simple draw on screen example. You will learn how to draw a
simple Japanese flag on screen by using basic geometry.

## Ray Marching

This example show you how you can use shaders to make a ray marching simple 
example. The goal is to have a sphere on top of a plane that is illuminated by
a rotating light. This is a typical demoscene example, and from there you could
make a full demo. The time is passed to the shader using the Time uniform.

## Simple

This example is using more classic approche to have 2 part rendering. First you
will learn how to use a basic Cube Map (an environment map) to have some 
context. Secondly you will have an apple that will be drawn on screen. This will
be a simple shader so just some shading (using a single light and the dot 
product) and the albedo.

## Remarks

You can use Visual Studio to edit your files. Just open the folder with Visual
Studio 2019 at the location you downloaded it. It should avoid uploading the 
```.vs/*``` files as instructed in the ```.gitignore``` file.

### GLSL extention

You can download an extention for Visual Studio to parse GLSL files 
[here](https://marketplace.visualstudio.com/items?itemName=DanielScherzer.GLSL).

### UV texture coordinates

The Color is mapped in space [0, 1] but as there is some fun going in the 
modeling space we can have some inverted texturing coordinate. So if you look
into the texture you can see that there is something only on the bottom, but 
looking into the obj file you can see the 'vt' is only applyed to the top part.
So the easy solution would be to use an inversion.

```glsl
vec2 vert_texcoord.y = 1 - vert_texcoord.y;
```

This is due to an invertion of standard between OpenGL and DirectX in OpenGL the
origin is suppose to be at the bottom left but in DirectX it is at the top left.
In a full 3D engine the texture would be inverted on the ```y``` axis not to 
have this change. But for teaching purpose this is nice! Most 2D image loader
support the flipping of images at load with some instructions like:

```cpp
stbi_set_flip_vertically_on_load(true);
```
