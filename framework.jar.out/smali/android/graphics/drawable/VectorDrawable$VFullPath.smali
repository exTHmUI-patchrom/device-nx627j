.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_ALPHA_INDEX:I = 0x4

.field private static final FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_COLOR_INDEX:I = 0x3

.field private static final FILL_TYPE_INDEX:I = 0xb

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_ALPHA_INDEX:I = 0x2

.field private static final STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_COLOR_INDEX:I = 0x1

.field private static final STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_WIDTH_INDEX:I = 0x0

.field private static final TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_END_INDEX:I = 0x6

.field private static final TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_START_INDEX:I = 0x5

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFillColors:Landroid/content/res/ComplexColor;

.field private final mNativePtr:J

.field private mPropertyData:[B

.field mStrokeColors:Landroid/content/res/ComplexColor;

.field private mThemeAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1738
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 1753
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    .line 1766
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    .line 1779
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    .line 1792
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    .line 1805
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    .line 1818
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    .line 1831
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    .line 1844
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    .line 1857
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1881
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1877
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1878
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1882
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$4800()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1883
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1886
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1877
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1878
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1887
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$4900(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1888
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1889
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1890
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1891
    return-void
.end method

.method static synthetic access$4000()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4100()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4200()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4300()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4400()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4500()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4600()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4700()Landroid/util/Property;
    .locals 1

    .line 1721
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    return-object v0
.end method

.method private canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .locals 1
    .param p1, "complexColor"    # Landroid/content/res/ComplexColor;

    .line 2134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 46
    .param p1, "a"    # Landroid/content/res/TypedArray;

    move-object/from16 v0, p0

    .line 1972
    move-object/from16 v1, p1

    const/16 v2, 0x30

    .line 1973
    .local v2, "byteCount":I
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v3, :cond_0

    .line 1976
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 1981
    :cond_0
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/drawable/VectorDrawable;->access$5200(J[BI)Z

    move-result v3

    .line 1982
    .local v3, "success":Z
    if-eqz v3, :cond_b

    .line 1986
    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1987
    .local v4, "properties":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1988
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    .line 1989
    .local v6, "strokeWidth":F
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 1990
    .local v8, "strokeColor":I
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    .line 1991
    .local v10, "strokeAlpha":F
    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 1992
    .local v12, "fillColor":I
    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    .line 1993
    .local v13, "fillAlpha":F
    const/16 v14, 0x14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    .line 1994
    .local v14, "trimPathStart":F
    const/16 v15, 0x18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    .line 1995
    .local v15, "trimPathEnd":F
    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 1996
    .local v7, "trimPathOffset":F
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 1997
    .local v9, "strokeLineCap":I
    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .line 1998
    .local v11, "strokeLineJoin":I
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    .line 1999
    .local v5, "strokeMiterLimit":F
    move/from16 v16, v2

    const/16 v2, 0x2c

    .end local v2    # "byteCount":I
    .local v16, "byteCount":I
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 2000
    .local v2, "fillType":I
    const/16 v17, 0x0

    .line 2001
    .local v17, "fillGradient":Landroid/graphics/Shader;
    const/16 v18, 0x0

    .line 2003
    .local v18, "strokeGradient":Landroid/graphics/Shader;
    move/from16 v19, v3

    iget v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .end local v3    # "success":Z
    .local v19, "success":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v20

    or-int v3, v3, v20

    iput v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 2006
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2008
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2009
    .local v3, "pathName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2010
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 2011
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .local v21, "properties":Ljava/nio/ByteBuffer;
    .local v22, "pathName":Ljava/lang/String;
    move/from16 v23, v8

    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .end local v8    # "strokeColor":I
    .local v23, "strokeColor":I
    invoke-static {v3, v4, v8}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    goto :goto_0

    .line 2014
    .end local v21    # "properties":Ljava/nio/ByteBuffer;
    .end local v22    # "pathName":Ljava/lang/String;
    .end local v23    # "strokeColor":I
    .restart local v3    # "pathName":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/nio/ByteBuffer;
    .restart local v8    # "strokeColor":I
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v23, v8

    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .end local v8    # "strokeColor":I
    .restart local v21    # "properties":Ljava/nio/ByteBuffer;
    .restart local v22    # "pathName":Ljava/lang/String;
    .restart local v23    # "strokeColor":I
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2015
    .local v3, "pathString":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2016
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 2017
    move/from16 v24, v7

    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .end local v7    # "trimPathOffset":F
    .local v24, "trimPathOffset":F
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v7, v8, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$3900(JLjava/lang/String;I)V

    goto :goto_1

    .line 2020
    .end local v24    # "trimPathOffset":F
    .restart local v7    # "trimPathOffset":F
    :cond_2
    move/from16 v24, v7

    .end local v7    # "trimPathOffset":F
    .restart local v24    # "trimPathOffset":F
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v4

    .line 2022
    .local v4, "fillColors":Landroid/content/res/ComplexColor;
    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 2025
    instance-of v8, v4, Landroid/content/res/GradientColor;

    if-eqz v8, :cond_3

    .line 2026
    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2027
    move-object v8, v4

    check-cast v8, Landroid/content/res/GradientColor;

    invoke-virtual {v8}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v8

    .line 2033
    .end local v17    # "fillGradient":Landroid/graphics/Shader;
    .local v8, "fillGradient":Landroid/graphics/Shader;
    move-object/from16 v17, v8

    goto :goto_2

    .line 2028
    .end local v8    # "fillGradient":Landroid/graphics/Shader;
    .restart local v17    # "fillGradient":Landroid/graphics/Shader;
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2029
    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_2

    .line 2031
    :cond_4
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2033
    :goto_2
    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v12

    .line 2036
    .end local v17    # "fillGradient":Landroid/graphics/Shader;
    .restart local v8    # "fillGradient":Landroid/graphics/Shader;
    :cond_5
    move-object/from16 v8, v17

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v7

    .line 2038
    .local v7, "strokeColors":Landroid/content/res/ComplexColor;
    if-eqz v7, :cond_8

    .line 2041
    move-object/from16 v39, v3

    instance-of v3, v7, Landroid/content/res/GradientColor;

    .end local v3    # "pathString":Ljava/lang/String;
    .local v39, "pathString":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 2042
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2043
    move-object v3, v7

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    .line 2049
    .end local v18    # "strokeGradient":Landroid/graphics/Shader;
    .local v3, "strokeGradient":Landroid/graphics/Shader;
    move-object/from16 v18, v3

    goto :goto_3

    .line 2044
    .end local v3    # "strokeGradient":Landroid/graphics/Shader;
    .restart local v18    # "strokeGradient":Landroid/graphics/Shader;
    :cond_6
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2045
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_3

    .line 2047
    :cond_7
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2049
    :goto_3
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    .line 2052
    .end local v23    # "strokeColor":I
    .local v3, "strokeColor":I
    move/from16 v23, v3

    move-object/from16 v3, v18

    goto :goto_4

    .end local v39    # "pathString":Ljava/lang/String;
    .local v3, "pathString":Ljava/lang/String;
    .restart local v23    # "strokeColor":I
    :cond_8
    move-object/from16 v39, v3

    move-object/from16 v3, v18

    .end local v18    # "strokeGradient":Landroid/graphics/Shader;
    .local v3, "strokeGradient":Landroid/graphics/Shader;
    .restart local v39    # "pathString":Ljava/lang/String;
    :goto_4
    move/from16 v40, v14

    move/from16 v41, v15

    iget-wide v14, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2053
    .end local v14    # "trimPathStart":F
    .end local v15    # "trimPathEnd":F
    .local v40, "trimPathStart":F
    .local v41, "trimPathEnd":F
    const-wide/16 v17, 0x0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v25

    .line 2052
    move-object/from16 v43, v7

    move-object/from16 v42, v8

    move-wide/from16 v7, v25

    goto :goto_5

    .line 2053
    :cond_9
    nop

    .line 2052
    move-object/from16 v43, v7

    move-object/from16 v42, v8

    move-wide/from16 v7, v17

    .end local v7    # "strokeColors":Landroid/content/res/ComplexColor;
    .end local v8    # "fillGradient":Landroid/graphics/Shader;
    .local v42, "fillGradient":Landroid/graphics/Shader;
    .local v43, "strokeColors":Landroid/content/res/ComplexColor;
    :goto_5
    invoke-static {v14, v15, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    .line 2054
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2055
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v17

    .line 2054
    :goto_6
    move-wide/from16 v14, v17

    goto :goto_7

    .line 2055
    :cond_a
    goto :goto_6

    .line 2054
    :goto_7
    invoke-static {v7, v8, v14, v15}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    .line 2057
    const/16 v7, 0xc

    invoke-virtual {v1, v7, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 2059
    .end local v13    # "fillAlpha":F
    .local v7, "fillAlpha":F
    const/16 v8, 0x8

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2061
    .end local v9    # "strokeLineCap":I
    .local v8, "strokeLineCap":I
    const/16 v9, 0x9

    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 2063
    .end local v11    # "strokeLineJoin":I
    .local v9, "strokeLineJoin":I
    const/16 v11, 0xa

    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 2065
    const/16 v11, 0xb

    invoke-virtual {v1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 2067
    const/4 v11, 0x4

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 2069
    const/4 v11, 0x6

    move/from16 v13, v41

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 2071
    .end local v41    # "trimPathEnd":F
    .local v11, "trimPathEnd":F
    const/4 v13, 0x7

    move/from16 v14, v24

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 2073
    .end local v24    # "trimPathOffset":F
    .local v13, "trimPathOffset":F
    const/4 v14, 0x5

    move/from16 v15, v40

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 2075
    .end local v40    # "trimPathStart":F
    .restart local v14    # "trimPathStart":F
    const/16 v15, 0xd

    invoke-virtual {v1, v15, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2077
    move-object/from16 v45, v3

    move-object/from16 v44, v4

    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .end local v3    # "strokeGradient":Landroid/graphics/Shader;
    .end local v4    # "fillColors":Landroid/content/res/ComplexColor;
    .local v44, "fillColors":Landroid/content/res/ComplexColor;
    .local v45, "strokeGradient":Landroid/graphics/Shader;
    move-wide/from16 v25, v3

    move/from16 v27, v6

    move/from16 v28, v23

    move/from16 v29, v10

    move/from16 v30, v12

    move/from16 v31, v7

    move/from16 v32, v14

    move/from16 v33, v11

    move/from16 v34, v13

    move/from16 v35, v5

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v2

    invoke-static/range {v25 .. v38}, Landroid/graphics/drawable/VectorDrawable;->access$5500(JFIFIFFFFFIII)V

    .line 2080
    return-void

    .line 1983
    .end local v5    # "strokeMiterLimit":F
    .end local v6    # "strokeWidth":F
    .end local v7    # "fillAlpha":F
    .end local v8    # "strokeLineCap":I
    .end local v9    # "strokeLineJoin":I
    .end local v10    # "strokeAlpha":F
    .end local v11    # "trimPathEnd":F
    .end local v12    # "fillColor":I
    .end local v13    # "trimPathOffset":F
    .end local v14    # "trimPathStart":F
    .end local v16    # "byteCount":I
    .end local v19    # "success":Z
    .end local v21    # "properties":Ljava/nio/ByteBuffer;
    .end local v22    # "pathName":Ljava/lang/String;
    .end local v23    # "strokeColor":I
    .end local v39    # "pathString":Ljava/lang/String;
    .end local v42    # "fillGradient":Landroid/graphics/Shader;
    .end local v43    # "strokeColors":Landroid/content/res/ComplexColor;
    .end local v44    # "fillColors":Landroid/content/res/ComplexColor;
    .end local v45    # "strokeGradient":Landroid/graphics/Shader;
    .local v2, "byteCount":I
    .local v3, "success":Z
    :cond_b
    move/from16 v16, v2

    move/from16 v19, v3

    .end local v2    # "byteCount":I
    .end local v3    # "success":Z
    .restart local v16    # "byteCount":I
    .restart local v19    # "success":Z
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 2100
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2109
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2110
    .local v0, "fillCanApplyTheme":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 2112
    .local v1, "strokeCanApplyTheme":Z
    if-eqz v0, :cond_2

    .line 2113
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2114
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_1

    .line 2115
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/GradientColor;

    .line 2116
    invoke-virtual {v4}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    .line 2115
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    goto :goto_0

    .line 2117
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 2118
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    .line 2122
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 2123
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2124
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_3

    .line 2125
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/GradientColor;

    .line 2126
    invoke-virtual {v4}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    .line 2125
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    goto :goto_1

    .line 2127
    :cond_3
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4

    .line 2128
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    .line 2131
    :cond_4
    :goto_1
    return-void
.end method

.method public canApplyTheme()Z
    .locals 3

    .line 2084
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2085
    return v1

    .line 2088
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2089
    .local v0, "fillCanApplyTheme":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    .line 2090
    .local v2, "strokeCanApplyTheme":Z
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2093
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 2091
    :cond_2
    :goto_0
    return v1
.end method

.method getFillAlpha()F
    .locals 2

    .line 2190
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6200(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getFillColor()I
    .locals 2

    .line 2177
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6100(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1960
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    .line 1955
    const/16 v0, 0x108

    return v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1894
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    .line 1895
    .local v0, "p":Landroid/util/Property;
    if-eqz v0, :cond_0

    .line 1896
    return-object v0

    .line 1898
    :cond_0
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1899
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    return-object v1

    .line 1902
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getPropertyIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1907
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1908
    const/4 v0, -0x1

    return v0

    .line 1910
    :cond_0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 2

    .line 2165
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5900(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStrokeColor()I
    .locals 2

    .line 2140
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5600(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStrokeWidth()F
    .locals 2

    .line 2153
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5700(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTrimPathEnd()F
    .locals 2

    .line 2214
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6600(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTrimPathOffset()F
    .locals 2

    .line 2226
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6800(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTrimPathStart()F
    .locals 2

    .line 2202
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6400(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    .line 1947
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 1948
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 1950
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1947
    :goto_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1965
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1967
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1968
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1969
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1942
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onStateChange([I)Z
    .locals 7
    .param p1, "stateSet"    # [I

    .line 1916
    const/4 v0, 0x0

    .line 1918
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 1919
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v1

    .line 1920
    .local v1, "oldStrokeColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    .line 1921
    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1922
    .local v4, "newStrokeColor":I
    if-eq v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    or-int/2addr v0, v5

    .line 1923
    if-eq v1, v4, :cond_1

    .line 1924
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    .line 1928
    .end local v1    # "oldStrokeColor":I
    .end local v4    # "newStrokeColor":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 1929
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v1

    .line 1930
    .local v1, "oldFillColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1931
    .local v4, "newFillColor":I
    if-eq v1, v4, :cond_2

    move v2, v3

    nop

    :cond_2
    or-int/2addr v0, v2

    .line 1932
    if-eq v1, v4, :cond_3

    .line 1933
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    .line 1937
    .end local v1    # "oldFillColor":I
    .end local v4    # "newFillColor":I
    :cond_3
    return v0
.end method

.method setFillAlpha(F)V
    .locals 2
    .param p1, "fillAlpha"    # F

    .line 2195
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2196
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6300(JF)V

    .line 2198
    :cond_0
    return-void
.end method

.method setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    .line 2182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2183
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    .line 2186
    :cond_0
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 2
    .param p1, "strokeAlpha"    # F

    .line 2170
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6000(JF)V

    .line 2173
    :cond_0
    return-void
.end method

.method setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .line 2145
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2146
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    .line 2149
    :cond_0
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .line 2158
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5800(JF)V

    .line 2161
    :cond_0
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 2
    .param p1, "trimPathEnd"    # F

    .line 2219
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6700(JF)V

    .line 2222
    :cond_0
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 2
    .param p1, "trimPathOffset"    # F

    .line 2231
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6900(JF)V

    .line 2234
    :cond_0
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 2
    .param p1, "trimPathStart"    # F

    .line 2207
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2208
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6500(JF)V

    .line 2210
    :cond_0
    return-void
.end method
