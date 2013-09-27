/*-----------------------------------------------------------------------------
Filename        : ossimErrorStatusInterface.i
Author          : Vipul Raheja, Rashad M
License         : See top level LICENSE.txt file.
Description     : Contains SWIG-Python of class ossimErrorStatusInterface
-----------------------------------------------------------------------------*/

%module pyossim

%{
#include <iosfwd>
#include <ossim/base/ossimConstants.h>
#include <ossim/base/ossimRtti.h>
#include <ossim/base/ossimErrorCodes.h>
%}

/* Handling operator */
%rename(__lshift__) operator<<;

/* Handling the reserved function print */
%rename(ossimErrorStatusInterface_print) ossimErrorStatusInterface::print;
%rename(const_ossimErrorStatusInterface_getErrorStatus) ossimErrorStatusInterface::getErrorStatus() const;
%rename(const_ossimErrorStatusInterface_getErrorStatusString) ossimErrorStatusInterface::getErrorStatusString() const;


/* Wrapping the class */
%include "ossim/base/ossimConstants.h"

/*!
 *  class ossimErrorStatusInterface
 *  Provides common interfaces for error handling.
 *
 *  Note: For error codes and associated strings use the ossimErrorCodes class.
 */
%include "ossim/base/ossimErrorStatusInterface.h"

