/*
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Don't edit this file!  It is auto-generated by frameworks/rs/api/generate.sh.

/*
 * rs_allocation_create.rsh: Allocation Creation Functions
 *
 * The functions below can be used to create Allocations from a Script.
 *
 * These functions can be called directly or indirectly from an invokable
 * function.  If some control-flow path can result in a call to these functions
 * from a RenderScript kernel function, a compiler error will be generated.
 */

#ifndef RENDERSCRIPT_RS_ALLOCATION_CREATE_RSH
#define RENDERSCRIPT_RS_ALLOCATION_CREATE_RSH

/*
 * rsCreateElement: Creates an rs_element object of the specified data type
 *
 *  Creates an rs_element object of the specified data type.  The data kind of
 *  the Element will be set to RS_KIND_USER and vector_width will be set to 1,
 *  indicating non-vector.
 *
 * Parameters:
 *   data_type: Data type of the Element
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_element __attribute__((overloadable))
    rsCreateElement(rs_data_type data_type);
#endif

/*
 * rsCreateVectorElement: Creates an rs_element object of the specified data type and vector width
 *
 *  Creates an rs_element object of the specified data type and vector width.
 *  Value of vector_width must be 2, 3 or 4.  The data kind of the Element will
 *  be set to RS_KIND_USER.
 *
 * Parameters:
 *   data_type: Data type of the Element
 *   vector_width: Vector width (either 2, 3, or 4)
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_element __attribute__((overloadable))
    rsCreateVectorElement(rs_data_type data_type, uint32_t vector_width);
#endif

/*
 * rsCreatePixelElement: Creates an rs_element object of the specified data type and data kind
 *
 *  Creates an rs_element object of the specified data type and data kind.  The
 *  vector_width of the Element will be set to 1, indicating non-vector.
 *
 * Parameters:
 *   data_type: Data type of the Element
 *   data_kind: Data kind of the Element
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_element __attribute__((overloadable))
    rsCreatePixelElement(rs_data_type data_type, rs_data_kind data_kind);
#endif

/*
 * rsCreateType: Creates an rs_type object with the specified Element and shape attributes
 *
 *  Creates an rs_type object with the specified Element and shape attributes.
 *
 *  dimX specifies the size of the X dimension.
 *
 *  dimY, if present and non-zero, indicates that the Y dimension is present and
 *  indicates its size.
 *
 *  dimZ, if present and non-zero, indicates that the Z dimension is present and
 *  indicates its size.
 *
 *  mipmaps indicates the presence of level of detail (LOD).
 *
 *  faces indicates the  presence of cubemap faces.
 *
 *  yuv_format indicates the associated YUV format (or RS_YUV_NONE).
 *
 * Parameters:
 *   element: Element to be associated with the Type
 *   dimX: Size along the X dimension
 *   dimY: Size along the Y dimension
 *   dimZ: Size along the Z dimension
 *   mipmaps: Flag indicating if the Type has a mipmap chain
 *   faces: Flag indicating if the Type is a cubemap
 *   yuv_format: YUV layout for the Type
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_type __attribute__((overloadable))
    rsCreateType(rs_element element, uint32_t dimX, uint32_t dimY, uint32_t dimZ, bool mipmaps,
                 bool faces, rs_yuv_format yuv_format);
#endif

#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_type __attribute__((overloadable))
    rsCreateType(rs_element element, uint32_t dimX, uint32_t dimY, uint32_t dimZ);
#endif

#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_type __attribute__((overloadable))
    rsCreateType(rs_element element, uint32_t dimX, uint32_t dimY);
#endif

#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_type __attribute__((overloadable))
    rsCreateType(rs_element element, uint32_t dimX);
#endif

/*
 * rsCreateAllocation: Create an rs_allocation object of given Type.
 *
 *  Creates an rs_allocation object of the given Type and usage.
 *
 *  RS_ALLOCATION_USAGE_SCRIPT and RS_ALLOCATION_USAGE_GRAPHICS_TEXTURE are the
 *  only supported usage flags for Allocations created from within a RenderScript
 *  Script.
 *
 * Parameters:
 *   type: Type of the Allocation
 *   usage: Usage flag for the allocation
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_allocation __attribute__((overloadable))
    rsCreateAllocation(rs_type type, uint32_t usage);
#endif

#if (defined(RS_VERSION) && (RS_VERSION >= 4294967295) && (defined(RS_DECLARE_EXPIRED_APIS) || RS_VERSION <= 4294967295))
extern rs_allocation __attribute__((overloadable))
    rsCreateAllocation(rs_type type);
#endif

#endif // RENDERSCRIPT_RS_ALLOCATION_CREATE_RSH
