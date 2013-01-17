/*

*/

%module pyplanet



//%include std_pair.i
//%include osg_header.i


%{
#include <osgText/Export>
#include <osgText/KerningType>
#include <osgText/TextBase>
#include <osgText/FadeText>
#include <osgText/Style>
#include <osgText/Glyph>
#include <osgText/Font>
#include <osgText/String>
#include <osgText/Text>
#include <osgText/Text3D>
#include <osgText/Version>

// using namespace osg;
// using namespace osgSim;

%}


/* remove the linkage macros */
%define OSG_EXPORT
%enddef
%define OSGTEXT_EXPORT
%enddef

// ignore nested stuff

%ignore osgText::Text::getGlyphQuads;
%ignore osgText::Text::getTextureGlyphQuadMap;
%ignore osgText::Font::getKerning;
%ignore osgText::Font::getGlyph;

/* include the actual headers */
%include osgText/Export
%include osgText/KerningType
%include osgText/String
%include osgText/Style
%include osgText/Glyph
%include osgText/Font
%include osgText/TextBase
%include osgText/Text
%include osgText/Text3D
%include osgText/FadeText
%include osgText/Version


# %template(FontResolution) std::pair<unsigned int,unsigned int>;
