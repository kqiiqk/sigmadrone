#pragma once

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <stdexcept>
using namespace std;

typedef struct _POSITION {
	float x;
	float y;
	float z;
	float w;
} POSITION;

typedef struct _NORMAL {
	float x;
	float y;
	float z;
} NORMAL;

typedef struct _COLOR {
	float r;
	float g;
	float b;
	float a;
} COLOR;

typedef struct _TEXEL {
	float u;
	float v;
} TEXEL;

typedef struct _VERTEX {
	POSITION p;
	COLOR c;
	NORMAL n;
	TEXEL t;
} VERTEX;

typedef struct _TEXTUREINFO {
	unsigned char *data;
	unsigned int width;
	unsigned int height;
	unsigned int format;
} TEXTUREINFO;

typedef struct _TRIANGLE {
	unsigned short v1;
	unsigned short v2;
	unsigned short v3;
} TRIANGLE;

class GlShape
{
public:
	GlShape();
	~GlShape();
	void AddVertex(	float x = 0.0f, float y = 0.0f, float z = 0.0f,
					float r = 0.0f, float g = 0.0f, float b = 0.0f, float a = 0.0f,
					float Xn = 0.0f, float Yn = 0.0f, float Zn = 0.0f,
					float U = -1.0f, float V = -1.0f);
	void AddTriangle(unsigned int v1, unsigned int v2, unsigned int v3);
	void SetTexture(unsigned char *data, unsigned int width, unsigned int height, unsigned int format);
	bool LoadBitmap(const char * imagepath);
	void GpuMap();
	void Render();

private:
	void GpuAlloc();

public:
	typedef std::vector<VERTEX>::value_type vertex_type;
	typedef std::vector<TRIANGLE>::value_type triangle_type;
	std::vector<VERTEX> m_vertex;
	std::vector<TRIANGLE> m_index;
	TEXTUREINFO m_texinfo;
	unsigned int m_vao;			// Vertex Array Object
	unsigned int m_vbo;			// Vertex Buffer Object
	unsigned int m_ebo;			// Element Buffer Object
	unsigned int m_tex;			// Texture buffer
};
