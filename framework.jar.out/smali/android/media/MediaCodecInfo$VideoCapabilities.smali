.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAllowMbOverride:Z

.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .locals 7
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    .line 1943
    const-string/jumbo v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1944
    const-string v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1946
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_1

    .line 1948
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1949
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1950
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1951
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v6

    .line 1948
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 1954
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1955
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1957
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1958
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1959
    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .line 1905
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v0, "blockWidth must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1906
    const-string v0, "blockHeight must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1908
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1909
    .local v0, "newBlockWidth":I
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1912
    .local v1, "newBlockHeight":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, v3

    .line 1914
    .local v2, "factor":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1915
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v4, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1916
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1918
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1922
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v0, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1924
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1927
    :cond_0
    mul-int v4, v0, v1

    div-int/2addr v4, p1

    div-int/2addr v4, p2

    .line 1928
    .end local v2    # "factor":I
    .local v4, "factor":I
    if-eq v4, v3, :cond_1

    .line 1929
    invoke-static {p3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 1930
    int-to-long v2, v4

    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 1931
    div-int v2, v1, p2

    div-int v3, v0, p1

    invoke-static {p5, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 1935
    :cond_1
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1936
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1937
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1938
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1939
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1940
    return-void
.end method

.method private applyLevelLimits()V
    .locals 54

    .line 2049
    move-object/from16 v12, p0

    const-wide/16 v0, 0x0

    .line 2050
    .local v0, "maxBlocksPerSecond":J
    const/4 v2, 0x0

    .line 2051
    .local v2, "maxBlocks":I
    const/4 v3, 0x0

    .line 2052
    .local v3, "maxBps":I
    const/4 v13, 0x0

    .line 2054
    .local v13, "maxDPBBlocks":I
    const/4 v4, 0x4

    .line 2055
    .local v4, "errors":I
    iget-object v5, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v14, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 2056
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget-object v5, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 2058
    .local v15, "mime":Ljava/lang/String;
    const-string/jumbo v5, "video/avc"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x4

    if-eqz v5, :cond_6

    .line 2059
    const/16 v2, 0x63

    .line 2060
    const-wide/16 v0, 0x5cd

    .line 2061
    const v3, 0xfa00

    .line 2062
    const/16 v5, 0x18c

    .line 2063
    .end local v13    # "maxDPBBlocks":I
    .local v5, "maxDPBBlocks":I
    array-length v13, v14

    move/from16 v17, v4

    const/4 v10, 0x0

    move v4, v2

    move/from16 v53, v5

    move v5, v3

    move-wide v2, v0

    move/from16 v1, v53

    .line 2063
    .end local v0    # "maxBlocksPerSecond":J
    .end local v3    # "maxBps":I
    .local v1, "maxDPBBlocks":I
    .local v2, "maxBlocksPerSecond":J
    .local v4, "maxBlocks":I
    .local v5, "maxBps":I
    .local v17, "errors":I
    :goto_0
    if-ge v10, v13, :cond_5

    aget-object v0, v14, v10

    .line 2064
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v18, 0x0

    .line 2064
    .local v18, "MBPS":I
    const/16 v19, 0x0

    .line 2064
    .local v19, "FS":I
    const/16 v20, 0x0

    .line 2064
    .local v20, "BR":I
    const/16 v21, 0x0

    .line 2065
    .local v21, "DPB":I
    const/16 v22, 0x1

    .line 2066
    .local v22, "supported":Z
    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v7, :sswitch_data_0

    .line 2108
    const-string v7, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized level "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    or-int/lit8 v17, v17, 0x1

    .line 2112
    .end local v18    # "MBPS":I
    .end local v19    # "FS":I
    .end local v20    # "BR":I
    .end local v21    # "DPB":I
    .local v6, "BR":I
    .local v7, "MBPS":I
    .local v8, "FS":I
    .local v24, "DPB":I
    :goto_1
    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v6, v20

    move/from16 v24, v21

    goto/16 :goto_2

    .line 2106
    .end local v6    # "BR":I
    .end local v7    # "MBPS":I
    .end local v8    # "FS":I
    .end local v24    # "DPB":I
    .restart local v18    # "MBPS":I
    .restart local v19    # "FS":I
    .restart local v20    # "BR":I
    .restart local v21    # "DPB":I
    :sswitch_0
    const/high16 v18, 0xff0000

    const v19, 0x22000

    const v20, 0xc3500

    const v21, 0xaa000

    goto :goto_1

    .line 2104
    :sswitch_1
    const v18, 0x7f8000

    const v19, 0x22000

    const v20, 0x75300

    const v21, 0xaa000

    goto :goto_1

    .line 2102
    :sswitch_2
    const v18, 0x3fc000

    const v19, 0x22000

    const v20, 0x3a980

    const v21, 0xaa000

    goto :goto_1

    .line 2100
    :sswitch_3
    const v18, 0x1fa400

    const v19, 0x9000

    const v20, 0x3a980

    const v21, 0x2d000

    goto :goto_1

    .line 2098
    :sswitch_4
    const/high16 v18, 0xf0000

    const v19, 0x9000

    const v20, 0x3a980

    const v21, 0x2d000

    goto :goto_1

    .line 2096
    :sswitch_5
    const/high16 v18, 0x90000

    const/16 v19, 0x5640

    const v20, 0x20f58

    const v21, 0x1af40

    goto :goto_1

    .line 2094
    :sswitch_6
    const v18, 0x7f800

    const/16 v19, 0x2200

    const v20, 0xc350

    const v21, 0x8800

    goto :goto_1

    .line 2092
    :sswitch_7
    const v18, 0x3c000

    const/16 v19, 0x2000

    const v20, 0xc350

    const v21, 0x8000

    goto :goto_1

    .line 2090
    :sswitch_8
    const v18, 0x3c000

    const/16 v19, 0x2000

    const/16 v20, 0x4e20

    const v21, 0x8000

    goto :goto_1

    .line 2088
    :sswitch_9
    const v18, 0x34bc0

    const/16 v19, 0x1400

    const/16 v20, 0x4e20

    const/16 v21, 0x5000

    goto/16 :goto_1

    .line 2086
    :sswitch_a
    const v18, 0x1a5e0

    const/16 v19, 0xe10

    const/16 v20, 0x36b0

    const/16 v21, 0x4650

    goto/16 :goto_1

    .line 2084
    :sswitch_b
    const v18, 0x9e34

    const/16 v19, 0x654

    const/16 v20, 0x2710

    const/16 v21, 0x1fa4

    goto/16 :goto_1

    .line 2082
    :sswitch_c
    const/16 v18, 0x4f1a

    const/16 v19, 0x654

    const/16 v20, 0xfa0

    const/16 v21, 0x1fa4

    goto/16 :goto_1

    .line 2080
    :sswitch_d
    const/16 v18, 0x4d58

    const/16 v19, 0x318

    const/16 v20, 0xfa0

    const/16 v21, 0x1290

    goto/16 :goto_1

    .line 2078
    :sswitch_e
    const/16 v18, 0x2e68

    const/16 v19, 0x18c

    const/16 v20, 0x7d0

    const/16 v21, 0x948

    goto/16 :goto_1

    .line 2076
    :sswitch_f
    const/16 v18, 0x2e68

    const/16 v19, 0x18c

    const/16 v20, 0x300

    const/16 v21, 0x948

    goto/16 :goto_1

    .line 2074
    :sswitch_10
    const/16 v18, 0x1770

    const/16 v19, 0x18c

    const/16 v20, 0x180

    const/16 v21, 0x948

    goto/16 :goto_1

    .line 2072
    :sswitch_11
    const/16 v18, 0xbb8

    const/16 v19, 0x18c

    const/16 v20, 0xc0

    const/16 v21, 0x384

    goto/16 :goto_1

    .line 2070
    :sswitch_12
    const/16 v18, 0x5cd

    const/16 v19, 0x63

    const/16 v20, 0x80

    const/16 v21, 0x18c

    goto/16 :goto_1

    .line 2068
    :sswitch_13
    const/16 v18, 0x5cd

    const/16 v19, 0x63

    const/16 v20, 0x40

    const/16 v21, 0x18c

    goto/16 :goto_1

    .line 2112
    .end local v18    # "MBPS":I
    .end local v19    # "FS":I
    .end local v20    # "BR":I
    .end local v21    # "DPB":I
    .restart local v6    # "BR":I
    .restart local v7    # "MBPS":I
    .restart local v8    # "FS":I
    .restart local v24    # "DPB":I
    :goto_2
    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v11, v9, :cond_2

    const/16 v9, 0x8

    if-eq v11, v9, :cond_1

    const/16 v9, 0x10

    if-eq v11, v9, :cond_3

    const/16 v9, 0x20

    if-eq v11, v9, :cond_2

    const/16 v9, 0x40

    if-eq v11, v9, :cond_2

    const/high16 v9, 0x10000

    if-eq v11, v9, :cond_0

    const/high16 v9, 0x80000

    if-eq v11, v9, :cond_1

    packed-switch v11, :pswitch_data_0

    .line 2131
    const-string v9, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v13

    const-string v13, "Unrecognized profile "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    or-int/lit8 v17, v17, 0x1

    .line 2134
    mul-int/lit16 v6, v6, 0x3e8

    goto :goto_6

    .line 2129
    :cond_0
    :pswitch_0
    move/from16 v25, v13

    goto :goto_5

    .line 2115
    :cond_1
    move/from16 v25, v13

    goto :goto_3

    .line 2121
    :cond_2
    move/from16 v25, v13

    goto :goto_4

    .line 2117
    :cond_3
    move/from16 v25, v13

    mul-int/lit16 v6, v6, 0xbb8

    goto :goto_6

    .line 2115
    :goto_3
    mul-int/lit16 v6, v6, 0x4e2

    goto :goto_6

    .line 2121
    :goto_4
    const-string v9, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported profile "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    or-int/lit8 v17, v17, 0x2

    .line 2124
    const/4 v9, 0x0

    .line 2129
    .end local v22    # "supported":Z
    .local v9, "supported":Z
    move/from16 v22, v9

    .line 2129
    .end local v9    # "supported":Z
    .restart local v22    # "supported":Z
    :goto_5
    mul-int/lit16 v6, v6, 0x3e8

    .line 2136
    :goto_6
    if-eqz v22, :cond_4

    .line 2137
    and-int/lit8 v9, v17, -0x5

    .line 2139
    .end local v17    # "errors":I
    .local v9, "errors":I
    move/from16 v17, v9

    .line 2139
    .end local v9    # "errors":I
    .restart local v17    # "errors":I
    :cond_4
    move-object/from16 v26, v14

    int-to-long v13, v7

    .line 2139
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v26, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2140
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2141
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2142
    move/from16 v9, v24

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2063
    .end local v0    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v6    # "BR":I
    .end local v7    # "MBPS":I
    .end local v8    # "FS":I
    .end local v22    # "supported":Z
    .end local v24    # "DPB":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v25

    move-object/from16 v14, v26

    const/4 v9, 0x4

    goto/16 :goto_0

    .line 2145
    .end local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_5
    move-object/from16 v26, v14

    .line 2145
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    mul-int/lit8 v0, v4, 0x8

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v10, v6

    .line 2146
    .local v10, "maxLengthInBlocks":I
    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, v12

    move v11, v1

    move v1, v10

    .line 2146
    .end local v1    # "maxDPBBlocks":I
    .local v11, "maxDPBBlocks":I
    move-wide v13, v2

    move v2, v10

    .line 2146
    .end local v2    # "maxBlocksPerSecond":J
    .local v13, "maxBlocksPerSecond":J
    move v3, v4

    move/from16 v16, v4

    move/from16 v18, v5

    move-wide v4, v13

    .line 2146
    .end local v4    # "maxBlocks":I
    .end local v5    # "maxBps":I
    .local v16, "maxBlocks":I
    .local v18, "maxBps":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2151
    .end local v10    # "maxLengthInBlocks":I
    nop

    .line 2645
    move/from16 v30, v11

    move/from16 v11, v18

    move-object/from16 v10, v26

    move-wide/from16 v18, v13

    move-object v13, v15

    goto/16 :goto_21

    .line 2151
    .end local v11    # "maxDPBBlocks":I
    .end local v16    # "maxBlocks":I
    .end local v17    # "errors":I
    .end local v18    # "maxBps":I
    .end local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBlocksPerSecond":J
    .local v2, "maxBlocks":I
    .restart local v3    # "maxBps":I
    .local v4, "errors":I
    .local v13, "maxDPBBlocks":I
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_6
    move-object/from16 v26, v14

    .line 2151
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string/jumbo v5, "video/mpeg2"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2152
    const/16 v5, 0xb

    .line 2152
    .local v5, "maxWidth":I
    const/16 v6, 0x9

    .line 2152
    .local v6, "maxHeight":I
    const/16 v7, 0xf

    .line 2153
    .local v7, "maxRate":I
    const/16 v2, 0x63

    .line 2154
    const-wide/16 v0, 0x5cd

    .line 2155
    const v3, 0xfa00

    .line 2156
    move-object/from16 v14, v26

    array-length v8, v14

    .line 2156
    .end local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move/from16 v17, v4

    move v9, v5

    const/4 v10, 0x0

    move-wide v4, v0

    move/from16 v53, v6

    move v6, v2

    move v2, v3

    move v3, v7

    move/from16 v7, v53

    .line 2156
    .end local v0    # "maxBlocksPerSecond":J
    .end local v5    # "maxWidth":I
    .local v2, "maxBps":I
    .local v3, "maxRate":I
    .local v4, "maxBlocksPerSecond":J
    .local v6, "maxBlocks":I
    .local v7, "maxHeight":I
    .local v9, "maxWidth":I
    .restart local v17    # "errors":I
    :goto_7
    if-ge v10, v8, :cond_9

    aget-object v0, v14, v10

    .line 2157
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v1, 0x0

    .line 2157
    .local v1, "MBPS":I
    const/16 v16, 0x0

    .line 2157
    .local v16, "FS":I
    const/16 v18, 0x0

    .line 2157
    .local v18, "BR":I
    const/16 v19, 0x0

    .line 2157
    .local v19, "FR":I
    const/16 v20, 0x0

    .line 2157
    .local v20, "W":I
    const/16 v21, 0x0

    .line 2158
    .local v21, "H":I
    const/16 v22, 0x1

    .line 2159
    .restart local v22    # "supported":Z
    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v11, :pswitch_data_1

    .line 2200
    move/from16 v27, v1

    move/from16 v28, v8

    .line 2200
    .end local v1    # "MBPS":I
    .local v27, "MBPS":I
    const-string v1, "VideoCapabilities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized profile "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    or-int/lit8 v17, v17, 0x1

    .line 2204
    .end local v16    # "FS":I
    .end local v18    # "BR":I
    .end local v19    # "FR":I
    .end local v20    # "W":I
    .end local v21    # "H":I
    .end local v27    # "MBPS":I
    .local v0, "W":I
    .restart local v1    # "MBPS":I
    .restart local v8    # "FS":I
    .local v11, "BR":I
    .local v13, "H":I
    .local v14, "FR":I
    .local v29, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v30, "maxDPBBlocks":I
    .local v31, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_8
    move-object/from16 v29, v0

    move/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v8, v16

    move/from16 v11, v18

    move/from16 v14, v19

    move/from16 v0, v20

    move/from16 v13, v21

    move/from16 v1, v27

    goto/16 :goto_a

    .line 2194
    .end local v8    # "FS":I
    .end local v11    # "BR":I
    .end local v29    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v30    # "maxDPBBlocks":I
    .end local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v13, "maxDPBBlocks":I
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v16    # "FS":I
    .restart local v18    # "BR":I
    .restart local v19    # "FR":I
    .restart local v20    # "W":I
    .restart local v21    # "H":I
    :pswitch_1
    const-string v11, "VideoCapabilities"

    move/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2194
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v8

    const-string v8, "Unsupported profile "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    or-int/lit8 v17, v17, 0x2

    .line 2197
    const/16 v22, 0x0

    .line 2198
    goto :goto_8

    .line 2172
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    :pswitch_2
    move/from16 v27, v1

    move/from16 v28, v8

    .line 2172
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v1, :pswitch_data_2

    .line 2184
    const-string v1, "VideoCapabilities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized profile/level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    or-int/lit8 v17, v17, 0x1

    .line 2189
    goto :goto_8

    .line 2182
    :pswitch_3
    const/16 v19, 0x3c

    const/16 v20, 0x78

    const/16 v21, 0x44

    const v1, 0x77880

    .line 2182
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v16, 0x1fe0

    const v18, 0x13880

    goto/16 :goto_9

    .line 2180
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    :pswitch_4
    const/16 v19, 0x3c

    const/16 v20, 0x78

    const/16 v21, 0x44

    const v1, 0x3bc40

    .line 2180
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v16, 0x1fe0

    const v18, 0x13880

    goto :goto_9

    .line 2178
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    :pswitch_5
    const/16 v19, 0x3c

    const/16 v20, 0x5a

    const/16 v21, 0x44

    const v1, 0x2cd30

    .line 2178
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v16, 0x17e8

    const v18, 0xea60

    goto :goto_9

    .line 2176
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    :pswitch_6
    const/16 v19, 0x1e

    const/16 v20, 0x2d

    const/16 v21, 0x24

    const v1, 0x9e34

    .line 2176
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v16, 0x654

    const/16 v18, 0x3a98

    goto :goto_9

    .line 2174
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    :pswitch_7
    const/16 v19, 0x1e

    const/16 v20, 0x16

    const/16 v21, 0x12

    const/16 v1, 0x2e68

    .line 2174
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v16, 0x18c

    const/16 v18, 0xfa0

    goto :goto_9

    .line 2161
    :pswitch_8
    move/from16 v27, v1

    move/from16 v28, v8

    .line 2161
    .end local v1    # "MBPS":I
    .restart local v27    # "MBPS":I
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v11, 0x1

    if-eq v1, v11, :cond_7

    .line 2165
    const-string v1, "VideoCapabilities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized profile/level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    or-int/lit8 v17, v17, 0x1

    .line 2170
    goto/16 :goto_8

    .line 2163
    :cond_7
    const/16 v19, 0x1e

    const/16 v20, 0x2d

    const/16 v21, 0x24

    const v1, 0x9e34

    .line 2163
    .end local v27    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v16, 0x654

    const/16 v18, 0x3a98

    .line 2204
    .end local v16    # "FS":I
    .end local v18    # "BR":I
    .end local v19    # "FR":I
    .end local v20    # "W":I
    .end local v21    # "H":I
    .local v0, "W":I
    .restart local v8    # "FS":I
    .restart local v11    # "BR":I
    .local v13, "H":I
    .local v14, "FR":I
    .restart local v29    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v30    # "maxDPBBlocks":I
    .restart local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_9
    move-object/from16 v29, v0

    move/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v8, v16

    move/from16 v11, v18

    move/from16 v14, v19

    move/from16 v0, v20

    move/from16 v13, v21

    :goto_a
    if-eqz v22, :cond_8

    .line 2205
    and-int/lit8 v16, v17, -0x5

    .line 2207
    .end local v17    # "errors":I
    .local v16, "errors":I
    move/from16 v17, v16

    .line 2207
    .end local v16    # "errors":I
    .restart local v17    # "errors":I
    :cond_8
    move/from16 v33, v14

    move-object/from16 v32, v15

    int-to-long v14, v1

    .line 2207
    .end local v14    # "FR":I
    .end local v15    # "mime":Ljava/lang/String;
    .local v32, "mime":Ljava/lang/String;
    .local v33, "FR":I
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2208
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2209
    mul-int/lit16 v14, v11, 0x3e8

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2210
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2211
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2212
    move/from16 v14, v33

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2156
    .end local v0    # "W":I
    .end local v1    # "MBPS":I
    .end local v8    # "FS":I
    .end local v11    # "BR":I
    .end local v13    # "H":I
    .end local v22    # "supported":Z
    .end local v29    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v33    # "FR":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v28

    move/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    goto/16 :goto_7

    .line 2214
    .end local v30    # "maxDPBBlocks":I
    .end local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v32    # "mime":Ljava/lang/String;
    .local v13, "maxDPBBlocks":I
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v15    # "mime":Ljava/lang/String;
    :cond_9
    move/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    .line 2214
    .end local v13    # "maxDPBBlocks":I
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v15    # "mime":Ljava/lang/String;
    .restart local v30    # "maxDPBBlocks":I
    .restart local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v32    # "mime":Ljava/lang/String;
    const/16 v8, 0x10

    const/16 v10, 0x10

    const/4 v11, 0x1

    const/4 v13, 0x1

    move-object v0, v12

    move v1, v9

    move v14, v2

    move v2, v7

    .line 2214
    .end local v2    # "maxBps":I
    .local v14, "maxBps":I
    move v15, v3

    move v3, v6

    .line 2214
    .end local v3    # "maxRate":I
    .local v15, "maxRate":I
    move-wide/from16 v18, v4

    .line 2214
    .end local v4    # "maxBlocksPerSecond":J
    .local v18, "maxBlocksPerSecond":J
    move/from16 v16, v6

    move v6, v8

    .line 2214
    .end local v6    # "maxBlocks":I
    .local v16, "maxBlocks":I
    move/from16 v20, v7

    move v7, v10

    .line 2214
    .end local v7    # "maxHeight":I
    .local v20, "maxHeight":I
    move v8, v11

    move v10, v9

    move v9, v13

    .line 2214
    .end local v9    # "maxWidth":I
    .local v10, "maxWidth":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2218
    iget-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2219
    .end local v10    # "maxWidth":I
    .end local v15    # "maxRate":I
    .end local v20    # "maxHeight":I
    nop

    .line 2645
    move v11, v14

    move-object/from16 v10, v31

    move-object/from16 v13, v32

    goto/16 :goto_21

    .line 2219
    .end local v14    # "maxBps":I
    .end local v16    # "maxBlocks":I
    .end local v17    # "errors":I
    .end local v18    # "maxBlocksPerSecond":J
    .end local v30    # "maxDPBBlocks":I
    .end local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v32    # "mime":Ljava/lang/String;
    .local v0, "maxBlocksPerSecond":J
    .local v2, "maxBlocks":I
    .local v3, "maxBps":I
    .local v4, "errors":I
    .restart local v13    # "maxDPBBlocks":I
    .local v15, "mime":Ljava/lang/String;
    .restart local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_a
    move/from16 v30, v13

    move-object/from16 v32, v15

    move-object/from16 v31, v26

    .line 2219
    .end local v13    # "maxDPBBlocks":I
    .end local v15    # "mime":Ljava/lang/String;
    .end local v26    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v30    # "maxDPBBlocks":I
    .restart local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v32    # "mime":Ljava/lang/String;
    const-string/jumbo v5, "video/mp4v-es"

    move-object/from16 v13, v32

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 2219
    .end local v32    # "mime":Ljava/lang/String;
    .local v13, "mime":Ljava/lang/String;
    if-eqz v5, :cond_1a

    .line 2220
    const/16 v5, 0xb

    .line 2220
    .restart local v5    # "maxWidth":I
    const/16 v8, 0x9

    .line 2220
    .local v8, "maxHeight":I
    const/16 v9, 0xf

    .line 2221
    .local v9, "maxRate":I
    const/16 v2, 0x63

    .line 2222
    const-wide/16 v0, 0x5cd

    .line 2223
    const v3, 0xfa00

    .line 2224
    move-object/from16 v14, v31

    array-length v11, v14

    .line 2224
    .end local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move/from16 v17, v4

    move v15, v5

    const/4 v10, 0x0

    move-wide v4, v0

    move/from16 v53, v8

    move v8, v2

    move v2, v3

    move v3, v9

    move/from16 v9, v53

    .line 2224
    .end local v0    # "maxBlocksPerSecond":J
    .end local v5    # "maxWidth":I
    .local v2, "maxBps":I
    .local v3, "maxRate":I
    .local v4, "maxBlocksPerSecond":J
    .local v8, "maxBlocks":I
    .local v9, "maxHeight":I
    .local v15, "maxWidth":I
    .restart local v17    # "errors":I
    :goto_b
    if-ge v10, v11, :cond_19

    aget-object v0, v14, v10

    .line 2225
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v1, 0x0

    .line 2225
    .restart local v1    # "MBPS":I
    const/16 v18, 0x0

    .line 2225
    .local v18, "FS":I
    const/16 v19, 0x0

    .line 2225
    .local v19, "BR":I
    const/16 v20, 0x0

    .line 2225
    .local v20, "FR":I
    const/16 v21, 0x0

    .line 2225
    .local v21, "W":I
    const/16 v22, 0x0

    .line 2226
    .local v22, "H":I
    const/16 v23, 0x0

    .line 2227
    .local v23, "strict":Z
    const/16 v24, 0x1

    .line 2228
    .local v24, "supported":Z
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v6, :sswitch_data_1

    .line 2303
    move/from16 v34, v1

    .line 2303
    .end local v1    # "MBPS":I
    .local v34, "MBPS":I
    const-string v1, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    or-int/lit8 v17, v17, 0x1

    .line 2307
    .end local v18    # "FS":I
    .end local v19    # "BR":I
    .end local v20    # "FR":I
    .end local v21    # "W":I
    .end local v22    # "H":I
    .end local v34    # "MBPS":I
    .local v0, "W":I
    .restart local v1    # "MBPS":I
    .local v6, "FS":I
    .local v7, "BR":I
    .local v11, "H":I
    .local v14, "FR":I
    .local v35, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v37, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_c
    move-object/from16 v35, v0

    move/from16 v36, v11

    move-object/from16 v37, v14

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v14, v20

    move/from16 v0, v21

    move/from16 v11, v22

    move/from16 v1, v34

    goto/16 :goto_e

    .line 2257
    .end local v6    # "FS":I
    .end local v7    # "BR":I
    .end local v11    # "H":I
    .end local v35    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v18    # "FS":I
    .restart local v19    # "BR":I
    .restart local v20    # "FR":I
    .restart local v21    # "W":I
    .restart local v22    # "H":I
    :sswitch_14
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    const/4 v7, 0x4

    if-eq v6, v7, :cond_10

    const/16 v7, 0x8

    if-eq v6, v7, :cond_f

    const/16 v7, 0x10

    if-eq v6, v7, :cond_e

    const/16 v7, 0x18

    if-eq v6, v7, :cond_d

    const/16 v7, 0x20

    if-eq v6, v7, :cond_c

    const/16 v7, 0x80

    if-eq v6, v7, :cond_b

    .line 2272
    const-string v6, "VideoCapabilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v1

    const-string v1, "Unrecognized profile/level "

    .line 2272
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    or-int/lit8 v17, v17, 0x1

    .line 2277
    goto :goto_c

    .line 2270
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    :cond_b
    move/from16 v34, v1

    .line 2270
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const/16 v20, 0x1e

    const/16 v21, 0x2d

    const/16 v22, 0x24

    const v1, 0xbdd8

    .line 2270
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x654

    const/16 v19, 0x1f40

    goto/16 :goto_d

    .line 2268
    :cond_c
    move/from16 v34, v1

    .line 2268
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const/16 v20, 0x1e

    const/16 v21, 0x2c

    const/16 v22, 0x24

    const/16 v1, 0x5cd0

    .line 2268
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x318

    const/16 v19, 0xbb8

    goto/16 :goto_d

    .line 2266
    :cond_d
    move/from16 v34, v1

    .line 2266
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const/16 v20, 0x1e

    const/16 v21, 0x16

    const/16 v22, 0x12

    const/16 v1, 0x2e68

    .line 2266
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x18c

    const/16 v19, 0x5dc

    goto/16 :goto_d

    .line 2264
    :cond_e
    move/from16 v34, v1

    .line 2264
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const/16 v20, 0x1e

    const/16 v21, 0x16

    const/16 v22, 0x12

    const/16 v1, 0x2e68

    .line 2264
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x18c

    const/16 v19, 0x300

    goto/16 :goto_d

    .line 2262
    :cond_f
    move/from16 v34, v1

    .line 2262
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const/16 v20, 0x1e

    const/16 v21, 0x16

    const/16 v22, 0x12

    const/16 v1, 0x1734

    .line 2262
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x18c

    const/16 v19, 0x180

    goto/16 :goto_d

    .line 2260
    :cond_10
    move/from16 v34, v1

    .line 2260
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const/16 v20, 0x1e

    const/16 v21, 0xb

    const/16 v22, 0x9

    const/16 v1, 0xb9a

    .line 2260
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x63

    const/16 v19, 0x80

    goto/16 :goto_d

    .line 2297
    :sswitch_15
    move/from16 v34, v1

    .line 2297
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    const-string v1, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    or-int/lit8 v17, v17, 0x2

    .line 2300
    const/16 v24, 0x0

    .line 2301
    goto/16 :goto_c

    .line 2230
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    :sswitch_16
    move/from16 v34, v1

    .line 2230
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x4

    if-eq v1, v6, :cond_16

    const/16 v6, 0x8

    if-eq v1, v6, :cond_15

    const/16 v6, 0x10

    if-eq v1, v6, :cond_14

    const/16 v6, 0x40

    if-eq v1, v6, :cond_13

    const/16 v6, 0x80

    if-eq v1, v6, :cond_12

    const/16 v6, 0x100

    if-eq v1, v6, :cond_11

    packed-switch v1, :pswitch_data_3

    .line 2250
    const-string v1, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized profile/level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    or-int/lit8 v17, v17, 0x1

    .line 2255
    goto/16 :goto_c

    .line 2237
    :pswitch_9
    const/16 v23, 0x1

    .line 2238
    const/16 v20, 0xf

    const/16 v21, 0xb

    const/16 v22, 0x9

    const/16 v1, 0x5cd

    .line 2238
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x63

    const/16 v19, 0x80

    goto :goto_d

    .line 2232
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    :pswitch_a
    const/16 v23, 0x1

    .line 2233
    const/16 v20, 0xf

    const/16 v21, 0xb

    const/16 v22, 0x9

    const/16 v1, 0x5cd

    .line 2233
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x63

    const/16 v19, 0x40

    .line 2307
    .end local v18    # "FS":I
    .end local v19    # "BR":I
    .end local v20    # "FR":I
    .end local v21    # "W":I
    .end local v22    # "H":I
    .local v0, "W":I
    .restart local v6    # "FS":I
    .restart local v7    # "BR":I
    .restart local v11    # "H":I
    .local v14, "FR":I
    .restart local v35    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_d
    move-object/from16 v35, v0

    move/from16 v36, v11

    move-object/from16 v37, v14

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v14, v20

    move/from16 v0, v21

    move/from16 v11, v22

    goto :goto_e

    .line 2248
    .end local v1    # "MBPS":I
    .end local v6    # "FS":I
    .end local v7    # "BR":I
    .end local v11    # "H":I
    .end local v35    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v18    # "FS":I
    .restart local v19    # "BR":I
    .restart local v20    # "FR":I
    .restart local v21    # "W":I
    .restart local v22    # "H":I
    .restart local v34    # "MBPS":I
    :cond_11
    const/16 v20, 0x1e

    const/16 v21, 0x50

    const/16 v22, 0x2d

    const v1, 0x1a5e0

    .line 2248
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0xe10

    const/16 v19, 0x2ee0

    goto :goto_d

    .line 2246
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    :cond_12
    const/16 v20, 0x1e

    const/16 v21, 0x2d

    const/16 v22, 0x24

    const v1, 0x9e34

    .line 2246
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x654

    const/16 v19, 0x1f40

    goto :goto_d

    .line 2244
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    :cond_13
    const/16 v20, 0x1e

    const/16 v21, 0x28

    const/16 v22, 0x1e

    const v1, 0x8ca0

    .line 2244
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x4b0

    const/16 v19, 0xfa0

    goto :goto_d

    .line 2242
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    :cond_14
    const/16 v20, 0x1e

    const/16 v21, 0x16

    const/16 v22, 0x12

    const/16 v1, 0x2e68

    .line 2242
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x18c

    const/16 v19, 0x180

    goto :goto_d

    .line 2240
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    :cond_15
    const/16 v20, 0x1e

    const/16 v21, 0x16

    const/16 v22, 0x12

    const/16 v1, 0x1734

    .line 2240
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x18c

    const/16 v19, 0x80

    goto :goto_d

    .line 2235
    .end local v1    # "MBPS":I
    .restart local v34    # "MBPS":I
    :cond_16
    const/16 v20, 0x1e

    const/16 v21, 0xb

    const/16 v22, 0x9

    const/16 v1, 0x5cd

    .line 2235
    .end local v34    # "MBPS":I
    .restart local v1    # "MBPS":I
    const/16 v18, 0x63

    const/16 v19, 0x40

    goto :goto_d

    .line 2307
    .end local v18    # "FS":I
    .end local v19    # "BR":I
    .end local v20    # "FR":I
    .end local v21    # "W":I
    .end local v22    # "H":I
    .local v0, "W":I
    .restart local v6    # "FS":I
    .restart local v7    # "BR":I
    .restart local v11    # "H":I
    .local v14, "FR":I
    .restart local v35    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_e
    if-eqz v24, :cond_17

    .line 2308
    and-int/lit8 v17, v17, -0x5

    .line 2310
    :cond_17
    move-object/from16 v38, v13

    int-to-long v12, v1

    .line 2310
    .end local v13    # "mime":Ljava/lang/String;
    .local v38, "mime":Ljava/lang/String;
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2311
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2312
    mul-int/lit16 v12, v7, 0x3e8

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2313
    if-eqz v23, :cond_18

    .line 2314
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2315
    .end local v15    # "maxWidth":I
    .local v12, "maxWidth":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2316
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2224
    move v15, v12

    goto :goto_f

    .line 2319
    .end local v12    # "maxWidth":I
    .restart local v15    # "maxWidth":I
    :cond_18
    mul-int/lit8 v12, v6, 0x2

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 2320
    .local v12, "maxDim":I
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2321
    .end local v15    # "maxWidth":I
    .local v13, "maxWidth":I
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2322
    const/16 v15, 0x3c

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2224
    .end local v1    # "MBPS":I
    .end local v3    # "maxRate":I
    .end local v6    # "FS":I
    .end local v7    # "BR":I
    .end local v11    # "H":I
    .end local v12    # "maxDim":I
    .end local v14    # "FR":I
    .end local v23    # "strict":Z
    .end local v24    # "supported":Z
    .end local v35    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxRate":I
    move v3, v0

    move v15, v13

    .line 2224
    .end local v0    # "maxRate":I
    .end local v13    # "maxWidth":I
    .restart local v3    # "maxRate":I
    .restart local v15    # "maxWidth":I
    :goto_f
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v36

    move-object/from16 v14, v37

    move-object/from16 v13, v38

    move-object/from16 v12, p0

    goto/16 :goto_b

    .line 2325
    .end local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "mime":Ljava/lang/String;
    .local v13, "mime":Ljava/lang/String;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_19
    move-object/from16 v38, v13

    move-object/from16 v37, v14

    .line 2325
    .end local v13    # "mime":Ljava/lang/String;
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v38    # "mime":Ljava/lang/String;
    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v12, p0

    move-object v0, v12

    move v1, v15

    move v13, v2

    move v2, v9

    .line 2325
    .end local v2    # "maxBps":I
    .local v13, "maxBps":I
    move v14, v3

    move v3, v8

    .line 2325
    .end local v3    # "maxRate":I
    .local v14, "maxRate":I
    move-wide/from16 v18, v4

    .line 2325
    .end local v4    # "maxBlocksPerSecond":J
    .local v18, "maxBlocksPerSecond":J
    move/from16 v16, v8

    move v8, v10

    .line 2325
    .end local v8    # "maxBlocks":I
    .restart local v16    # "maxBlocks":I
    move v10, v9

    move v9, v11

    .line 2325
    .end local v9    # "maxHeight":I
    .local v10, "maxHeight":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2329
    iget-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2330
    .end local v10    # "maxHeight":I
    .end local v14    # "maxRate":I
    .end local v15    # "maxWidth":I
    nop

    .line 2645
    move v11, v13

    move-object/from16 v10, v37

    move-object/from16 v13, v38

    goto/16 :goto_21

    .line 2330
    .end local v16    # "maxBlocks":I
    .end local v17    # "errors":I
    .end local v18    # "maxBlocksPerSecond":J
    .end local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "mime":Ljava/lang/String;
    .local v0, "maxBlocksPerSecond":J
    .local v2, "maxBlocks":I
    .local v3, "maxBps":I
    .local v4, "errors":I
    .local v13, "mime":Ljava/lang/String;
    .restart local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1a
    move-object/from16 v38, v13

    move-object/from16 v37, v31

    .line 2330
    .end local v13    # "mime":Ljava/lang/String;
    .end local v31    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v38    # "mime":Ljava/lang/String;
    const-string/jumbo v5, "video/3gpp"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 2330
    .end local v38    # "mime":Ljava/lang/String;
    .restart local v13    # "mime":Ljava/lang/String;
    if-eqz v5, :cond_28

    .line 2331
    const/16 v5, 0xb

    .line 2331
    .restart local v5    # "maxWidth":I
    const/16 v6, 0x9

    .line 2331
    .local v6, "maxHeight":I
    const/16 v7, 0xf

    .line 2332
    .local v7, "maxRate":I
    move v8, v5

    .line 2332
    .local v8, "minWidth":I
    move v9, v6

    .line 2333
    .local v9, "minHeight":I
    const/16 v11, 0x10

    .line 2334
    .local v11, "minAlignment":I
    const/16 v2, 0x63

    .line 2335
    const-wide/16 v0, 0x5cd

    .line 2336
    const v3, 0xfa00

    .line 2337
    move-object/from16 v14, v37

    array-length v15, v14

    .line 2337
    .end local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move/from16 v17, v4

    move/from16 v18, v11

    move v11, v8

    move-wide v4, v0

    const/4 v0, 0x0

    move/from16 v53, v7

    move v7, v2

    move v2, v3

    move/from16 v3, v53

    .line 2337
    .end local v0    # "maxBlocksPerSecond":J
    .end local v5    # "maxWidth":I
    .local v2, "maxBps":I
    .local v3, "maxRate":I
    .local v4, "maxBlocksPerSecond":J
    .local v7, "maxBlocks":I
    .local v8, "maxWidth":I
    .local v11, "minWidth":I
    .restart local v17    # "errors":I
    .local v18, "minAlignment":I
    :goto_10
    if-ge v0, v15, :cond_26

    aget-object v1, v14, v0

    .line 2338
    .local v1, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v19, 0x0

    .line 2338
    .local v19, "MBPS":I
    const/16 v20, 0x0

    .line 2338
    .local v20, "BR":I
    const/16 v21, 0x0

    .line 2338
    .local v21, "FR":I
    const/16 v22, 0x0

    .line 2338
    .local v22, "W":I
    const/16 v23, 0x0

    .line 2338
    .local v23, "H":I
    move/from16 v24, v11

    .line 2338
    .local v24, "minW":I
    move/from16 v25, v9

    .line 2339
    .local v25, "minH":I
    const/16 v26, 0x0

    .line 2340
    .local v26, "strict":Z
    iget v10, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v39, v15

    const/4 v15, 0x4

    if-eq v10, v15, :cond_23

    const/16 v15, 0x8

    if-eq v10, v15, :cond_22

    const/16 v15, 0x10

    if-eq v10, v15, :cond_1e

    const/16 v15, 0x20

    if-eq v10, v15, :cond_1d

    const/16 v15, 0x40

    if-eq v10, v15, :cond_1c

    const/16 v15, 0x80

    if-eq v10, v15, :cond_1b

    packed-switch v10, :pswitch_data_4

    .line 2375
    const-string v10, "VideoCapabilities"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v40, v14

    const-string v14, "Unrecognized profile/level "

    .line 2375
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v40, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    or-int/lit8 v17, v17, 0x1

    .line 2379
    .end local v19    # "MBPS":I
    .end local v21    # "FR":I
    .end local v22    # "W":I
    .end local v23    # "H":I
    .local v0, "FR":I
    .local v10, "MBPS":I
    .local v14, "W":I
    .local v15, "H":I
    :goto_11
    move/from16 v41, v0

    move/from16 v10, v19

    move/from16 v0, v21

    move/from16 v14, v22

    move/from16 v15, v23

    goto/16 :goto_14

    .line 2345
    .end local v0    # "FR":I
    .end local v10    # "MBPS":I
    .end local v15    # "H":I
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v19    # "MBPS":I
    .restart local v21    # "FR":I
    .restart local v22    # "W":I
    .restart local v23    # "H":I
    :pswitch_b
    move-object/from16 v40, v14

    .line 2345
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v26, 0x1

    .line 2346
    const/16 v21, 0x1e

    const/16 v22, 0x16

    const/16 v23, 0x12

    const/16 v20, 0x2

    mul-int v10, v22, v23

    mul-int/lit8 v19, v10, 0xf

    goto :goto_11

    .line 2342
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :pswitch_c
    move-object/from16 v40, v14

    .line 2342
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v26, 0x1

    .line 2343
    const/16 v21, 0xf

    const/16 v22, 0xb

    const/16 v23, 0x9

    const/16 v20, 0x1

    mul-int v10, v22, v23

    mul-int v19, v10, v21

    goto :goto_11

    .line 2372
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1b
    move-object/from16 v40, v14

    .line 2372
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v18, 0x4

    .line 2373
    const/16 v21, 0x3c

    const/16 v22, 0x2d

    const/16 v23, 0x24

    const/16 v20, 0x100

    mul-int v10, v22, v23

    mul-int/lit8 v19, v10, 0x32

    goto :goto_11

    .line 2368
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1c
    move-object/from16 v40, v14

    .line 2368
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v18, 0x4

    .line 2369
    const/16 v21, 0x3c

    const/16 v22, 0x2d

    const/16 v23, 0x12

    const/16 v20, 0x80

    mul-int v10, v22, v23

    mul-int/lit8 v19, v10, 0x32

    goto :goto_11

    .line 2364
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1d
    move-object/from16 v40, v14

    .line 2364
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v18, 0x4

    .line 2365
    const/16 v21, 0x3c

    const/16 v22, 0x16

    const/16 v23, 0x12

    const/16 v20, 0x40

    mul-int v10, v22, v23

    mul-int/lit8 v19, v10, 0x32

    goto :goto_11

    .line 2355
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1e
    move-object/from16 v40, v14

    .line 2355
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v10, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v14, 0x1

    if-eq v10, v14, :cond_20

    iget v10, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v14, 0x4

    if-ne v10, v14, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v10, 0x0

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v10, 0x1

    :goto_13
    move/from16 v26, v10

    .line 2358
    if-nez v26, :cond_21

    .line 2359
    const/4 v10, 0x1

    .line 2359
    .end local v24    # "minW":I
    .local v10, "minW":I
    const/4 v14, 0x1

    .line 2359
    .end local v25    # "minH":I
    .local v14, "minH":I
    const/4 v15, 0x4

    .line 2361
    .end local v18    # "minAlignment":I
    .local v15, "minAlignment":I
    move/from16 v24, v10

    move/from16 v25, v14

    move/from16 v18, v15

    .line 2361
    .end local v10    # "minW":I
    .end local v14    # "minH":I
    .end local v15    # "minAlignment":I
    .restart local v18    # "minAlignment":I
    .restart local v24    # "minW":I
    .restart local v25    # "minH":I
    :cond_21
    const/16 v21, 0xf

    const/16 v22, 0xb

    const/16 v23, 0x9

    const/16 v20, 0x2

    mul-int v10, v22, v23

    mul-int v19, v10, v21

    goto/16 :goto_11

    .line 2351
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_22
    move-object/from16 v40, v14

    .line 2351
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v26, 0x1

    .line 2352
    const/16 v21, 0x1e

    const/16 v22, 0x16

    const/16 v23, 0x12

    const/16 v20, 0x20

    mul-int v10, v22, v23

    mul-int v19, v10, v21

    goto/16 :goto_11

    .line 2348
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_23
    move-object/from16 v40, v14

    .line 2348
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v26, 0x1

    .line 2349
    const/16 v21, 0x1e

    const/16 v22, 0x16

    const/16 v23, 0x12

    const/16 v20, 0x6

    mul-int v10, v22, v23

    mul-int v19, v10, v21

    goto/16 :goto_11

    .line 2379
    .end local v19    # "MBPS":I
    .end local v21    # "FR":I
    .end local v22    # "W":I
    .end local v23    # "H":I
    .restart local v0    # "FR":I
    .local v10, "MBPS":I
    .local v14, "W":I
    .local v15, "H":I
    :goto_14
    move/from16 v42, v9

    iget v9, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2379
    .end local v9    # "minHeight":I
    .local v42, "minHeight":I
    move/from16 v43, v11

    const/4 v11, 0x4

    .line 2379
    .end local v11    # "minWidth":I
    .local v43, "minWidth":I
    if-eq v9, v11, :cond_24

    const/16 v11, 0x8

    if-eq v9, v11, :cond_24

    const/16 v11, 0x10

    if-eq v9, v11, :cond_24

    const/16 v11, 0x20

    if-eq v9, v11, :cond_24

    const/16 v11, 0x40

    if-eq v9, v11, :cond_24

    const/16 v11, 0x80

    if-eq v9, v11, :cond_24

    const/16 v11, 0x100

    if-eq v9, v11, :cond_24

    packed-switch v9, :pswitch_data_5

    .line 2391
    const-string v9, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v44, v0

    const-string v0, "Unrecognized profile "

    .line 2391
    .end local v0    # "FR":I
    .local v44, "FR":I
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    or-int/lit8 v17, v17, 0x1

    goto :goto_15

    .line 2389
    .end local v44    # "FR":I
    .restart local v0    # "FR":I
    :cond_24
    :pswitch_d
    move/from16 v44, v0

    .line 2395
    .end local v0    # "FR":I
    .restart local v44    # "FR":I
    :goto_15
    if-eqz v26, :cond_25

    .line 2400
    const/16 v24, 0xb

    const/16 v25, 0x9

    .line 2407
    move/from16 v0, v24

    move/from16 v9, v25

    const/4 v11, 0x1

    goto :goto_16

    .line 2405
    :cond_25
    const/4 v11, 0x1

    iput-boolean v11, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    .line 2407
    move/from16 v0, v24

    move/from16 v9, v25

    .line 2407
    .end local v24    # "minW":I
    .end local v25    # "minH":I
    .local v0, "minW":I
    .local v9, "minH":I
    :goto_16
    and-int/lit8 v17, v17, -0x5

    .line 2408
    int-to-long v11, v10

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2409
    mul-int v11, v14, v15

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2410
    const v11, 0xfa00

    mul-int v11, v11, v20

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2411
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2412
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2413
    move/from16 v11, v44

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2414
    .end local v44    # "FR":I
    .local v11, "FR":I
    move/from16 v12, v43

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2415
    .end local v43    # "minWidth":I
    .local v12, "minWidth":I
    move/from16 v45, v10

    move/from16 v10, v42

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2337
    .end local v0    # "minW":I
    .end local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v10    # "MBPS":I
    .end local v11    # "FR":I
    .end local v14    # "W":I
    .end local v15    # "H":I
    .end local v20    # "BR":I
    .end local v26    # "strict":Z
    .end local v42    # "minHeight":I
    .local v9, "minHeight":I
    add-int/lit8 v0, v41, 0x1

    move v11, v12

    move/from16 v15, v39

    move-object/from16 v14, v40

    move-object/from16 v12, p0

    goto/16 :goto_10

    .line 2419
    .end local v12    # "minWidth":I
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v11, "minWidth":I
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_26
    move v10, v9

    move v12, v11

    move-object/from16 v40, v14

    .line 2419
    .end local v9    # "minHeight":I
    .end local v11    # "minWidth":I
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v10, "minHeight":I
    .restart local v12    # "minWidth":I
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v14, p0

    iget-boolean v0, v14, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v0, :cond_27

    .line 2420
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0xb

    const/16 v9, 0x9

    invoke-direct {v0, v1, v9}, Landroid/util/Rational;-><init>(II)V

    new-instance v1, Landroid/util/Rational;

    const/16 v9, 0xb

    const/16 v11, 0x9

    invoke-direct {v1, v9, v11}, Landroid/util/Rational;-><init>(II)V

    .line 2421
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v14, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2423
    :cond_27
    const/16 v9, 0x10

    const/16 v11, 0x10

    move-object v0, v14

    move v1, v12

    move v15, v2

    move v2, v10

    .line 2423
    .end local v2    # "maxBps":I
    .local v15, "maxBps":I
    move/from16 v46, v3

    move v3, v8

    .line 2423
    .end local v3    # "maxRate":I
    .local v46, "maxRate":I
    move-wide/from16 v19, v4

    move v4, v6

    .line 2423
    .end local v4    # "maxBlocksPerSecond":J
    .local v19, "maxBlocksPerSecond":J
    move v5, v7

    move/from16 v16, v6

    move/from16 v21, v7

    move-wide/from16 v6, v19

    .line 2423
    .end local v6    # "maxHeight":I
    .end local v7    # "maxBlocks":I
    .local v16, "maxHeight":I
    .local v21, "maxBlocks":I
    move/from16 v22, v8

    move v8, v9

    .line 2423
    .end local v8    # "maxWidth":I
    .local v22, "maxWidth":I
    move/from16 v23, v10

    move v9, v11

    .line 2423
    .end local v10    # "minHeight":I
    .local v23, "minHeight":I
    move/from16 v10, v18

    move/from16 v47, v12

    const/4 v12, 0x1

    move/from16 v11, v18

    .line 2423
    .end local v12    # "minWidth":I
    .local v47, "minWidth":I
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 2429
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v3, v46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2429
    .end local v46    # "maxRate":I
    .restart local v3    # "maxRate":I
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v14, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2430
    .end local v3    # "maxRate":I
    .end local v16    # "maxHeight":I
    .end local v18    # "minAlignment":I
    .end local v22    # "maxWidth":I
    .end local v23    # "minHeight":I
    .end local v47    # "minWidth":I
    nop

    .line 2645
    move v11, v15

    move-wide/from16 v18, v19

    move/from16 v16, v21

    move-object/from16 v10, v40

    goto/16 :goto_21

    .line 2430
    .end local v15    # "maxBps":I
    .end local v17    # "errors":I
    .end local v19    # "maxBlocksPerSecond":J
    .end local v21    # "maxBlocks":I
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBlocksPerSecond":J
    .local v2, "maxBlocks":I
    .local v3, "maxBps":I
    .local v4, "errors":I
    .restart local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_28
    move-object v14, v12

    move-object/from16 v40, v37

    const/4 v12, 0x1

    .line 2430
    .end local v37    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string/jumbo v5, "video/x-vnd.on2.vp8"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2431
    const v10, 0x7fffffff

    .line 2432
    .end local v2    # "maxBlocks":I
    .local v10, "maxBlocks":I
    const-wide/32 v15, 0x7fffffff

    .line 2435
    .end local v0    # "maxBlocksPerSecond":J
    .local v15, "maxBlocksPerSecond":J
    const v11, 0x5f5e100

    .line 2439
    .end local v3    # "maxBps":I
    .local v11, "maxBps":I
    move-object/from16 v9, v40

    array-length v0, v9

    .line 2439
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v9, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move/from16 v17, v4

    const/4 v1, 0x0

    .line 2439
    .end local v4    # "errors":I
    .restart local v17    # "errors":I
    :goto_17
    if-ge v1, v0, :cond_2b

    aget-object v2, v9, v1

    .line 2440
    .local v2, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v3, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_29

    const/16 v4, 0x8

    if-eq v3, v4, :cond_29

    packed-switch v3, :pswitch_data_6

    .line 2447
    const-string v3, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    or-int/lit8 v17, v17, 0x1

    goto :goto_18

    .line 2445
    :cond_29
    :pswitch_e
    nop

    .line 2451
    :goto_18
    iget v3, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v3, v12, :cond_2a

    .line 2455
    const-string v3, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    or-int/lit8 v17, v17, 0x1

    goto :goto_19

    .line 2453
    :cond_2a
    nop

    .line 2459
    :goto_19
    and-int/lit8 v17, v17, -0x5

    .line 2439
    .end local v2    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2462
    :cond_2b
    const/16 v18, 0x10

    .line 2463
    .local v18, "blockSize":I
    const/16 v1, 0x7fff

    const/16 v2, 0x7fff

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/16 v19, 0x1

    move-object v0, v14

    move v3, v10

    move-wide v4, v15

    move-object v12, v9

    move/from16 v9, v19

    .end local v9    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2466
    .end local v18    # "blockSize":I
    nop

    .line 2645
    move-wide/from16 v18, v15

    move/from16 v16, v10

    move-object v10, v12

    goto/16 :goto_21

    .line 2466
    .end local v10    # "maxBlocks":I
    .end local v11    # "maxBps":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v15    # "maxBlocksPerSecond":J
    .end local v17    # "errors":I
    .restart local v0    # "maxBlocksPerSecond":J
    .local v2, "maxBlocks":I
    .restart local v3    # "maxBps":I
    .restart local v4    # "errors":I
    .restart local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2c
    move-object/from16 v12, v40

    .line 2466
    .end local v40    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2467
    const-wide/32 v0, 0xca800

    .line 2468
    const v2, 0x9000

    .line 2469
    const v3, 0x30d40

    .line 2470
    const/16 v5, 0x200

    .line 2472
    .local v5, "maxDim":I
    array-length v6, v12

    move v11, v3

    move/from16 v17, v4

    move v10, v5

    move-wide v3, v0

    const/4 v0, 0x0

    .line 2472
    .end local v0    # "maxBlocksPerSecond":J
    .end local v4    # "errors":I
    .end local v5    # "maxDim":I
    .local v3, "maxBlocksPerSecond":J
    .local v10, "maxDim":I
    .restart local v11    # "maxBps":I
    .restart local v17    # "errors":I
    :goto_1a
    if-ge v0, v6, :cond_2e

    aget-object v1, v12, v0

    .line 2473
    .restart local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v7, 0x0

    .line 2474
    .local v7, "SR":J
    const/4 v5, 0x0

    .line 2475
    .local v5, "FS":I
    const/4 v9, 0x0

    .line 2476
    .local v9, "BR":I
    const/4 v15, 0x0

    .line 2477
    .local v15, "D":I
    move/from16 v48, v5

    iget v5, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2477
    .end local v5    # "FS":I
    .local v48, "FS":I
    sparse-switch v5, :sswitch_data_2

    .line 2507
    const-string v5, "VideoCapabilities"

    move/from16 v49, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v50, v7

    const-string v7, "Unrecognized level "

    .line 2507
    .end local v7    # "SR":J
    .local v50, "SR":J
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    or-int/lit8 v17, v17, 0x1

    .line 2511
    move/from16 v5, v48

    move-wide/from16 v7, v50

    goto/16 :goto_1c

    .line 2505
    .end local v50    # "SR":J
    .restart local v7    # "SR":J
    :sswitch_17
    const-wide v7, 0x118800000L

    const/high16 v5, 0x2200000

    .line 2505
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const v9, 0x75300

    const/16 v15, 0x41c0

    goto/16 :goto_1b

    .line 2503
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_18
    const-wide v7, 0x8c400000L

    const/high16 v5, 0x2200000

    .line 2503
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const v9, 0x3a980

    const/16 v15, 0x41c0

    goto/16 :goto_1b

    .line 2501
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_19
    const-wide/32 v7, 0x46200000

    const/high16 v5, 0x2200000

    .line 2501
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const v9, 0x2bf20

    const/16 v15, 0x41c0

    goto/16 :goto_1b

    .line 2499
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_1a
    const-wide/32 v7, 0x46200000

    const/high16 v5, 0x880000

    .line 2499
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const v9, 0x2bf20

    const/16 v15, 0x20c0

    goto :goto_1b

    .line 2497
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_1b
    const-wide/32 v7, 0x23100000

    const/high16 v5, 0x880000

    .line 2497
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const v9, 0x1d4c0

    const/16 v15, 0x20c0

    goto :goto_1b

    .line 2495
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_1c
    const-wide/32 v7, 0x12980000

    const/high16 v5, 0x880000

    .line 2495
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const v9, 0xea60

    const/16 v15, 0x20c0

    goto :goto_1b

    .line 2493
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_1d
    const-wide/32 v7, 0x9900000

    const/high16 v5, 0x220000

    .line 2493
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0x7530

    const/16 v15, 0x1040

    goto :goto_1b

    .line 2491
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_1e
    const-wide/32 v7, 0x4fb0000

    const/high16 v5, 0x220000

    .line 2491
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0x4650

    const/16 v15, 0x1040

    goto :goto_1b

    .line 2489
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_1f
    const-wide/32 v7, 0x2328000

    const/high16 v5, 0xf0000

    .line 2489
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0x2ee0

    const/16 v15, 0xac0

    goto :goto_1b

    .line 2487
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_20
    const-wide/32 v7, 0x13c6800

    const v5, 0x87000

    .line 2487
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0x1c20

    const/16 v15, 0x800

    goto :goto_1b

    .line 2485
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_21
    const-wide/32 v7, 0x8ca000

    const v5, 0x3c000

    .line 2485
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0xe10

    const/16 v15, 0x540

    goto :goto_1b

    .line 2483
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_22
    const-wide/32 v7, 0x465000

    const v5, 0x1e000

    .line 2483
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0x708

    const/16 v15, 0x3c0

    goto :goto_1b

    .line 2481
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_23
    const-wide/32 v7, 0x2a3000

    const v5, 0x12000

    .line 2481
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0x320

    const/16 v15, 0x300

    goto :goto_1b

    .line 2479
    .end local v5    # "FS":I
    .restart local v48    # "FS":I
    :sswitch_24
    const-wide/32 v7, 0xca800

    const v5, 0x9000

    .line 2479
    .end local v48    # "FS":I
    .restart local v5    # "FS":I
    const/16 v9, 0xc8

    const/16 v15, 0x200

    .line 2511
    :goto_1b
    move/from16 v49, v6

    :goto_1c
    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move-object/from16 v52, v12

    const/4 v12, 0x4

    .line 2511
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v52, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    if-eq v6, v12, :cond_2d

    const/16 v12, 0x8

    if-eq v6, v12, :cond_2d

    const/16 v12, 0x1000

    if-eq v6, v12, :cond_2d

    const/16 v12, 0x2000

    if-eq v6, v12, :cond_2d

    packed-switch v6, :pswitch_data_7

    .line 2520
    const-string v6, "VideoCapabilities"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrecognized profile "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    or-int/lit8 v17, v17, 0x1

    goto :goto_1d

    .line 2518
    :cond_2d
    :pswitch_f
    nop

    .line 2524
    :goto_1d
    and-int/lit8 v17, v17, -0x5

    .line 2525
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2526
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2527
    mul-int/lit16 v6, v9, 0x3e8

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2528
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2472
    .end local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v5    # "FS":I
    .end local v7    # "SR":J
    .end local v9    # "BR":I
    .end local v15    # "D":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v49

    move-object/from16 v12, v52

    move-object/from16 v14, p0

    goto/16 :goto_1a

    .line 2531
    .end local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2e
    move-object/from16 v52, v12

    .line 2531
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v12, 0x8

    .line 2532
    .local v12, "blockSize":I
    const/16 v0, 0x8

    invoke-static {v10, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v14

    .line 2533
    .local v14, "maxLengthInBlocks":I
    const/16 v0, 0x40

    invoke-static {v2, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v15

    .line 2534
    .end local v2    # "maxBlocks":I
    .local v15, "maxBlocks":I
    const-wide/16 v0, 0x40

    invoke-static {v3, v4, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v18

    .line 2536
    .end local v3    # "maxBlocksPerSecond":J
    .local v18, "maxBlocksPerSecond":J
    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object v0, v4

    move v1, v14

    move v2, v14

    move v3, v15

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2541
    .end local v10    # "maxDim":I
    .end local v12    # "blockSize":I
    .end local v14    # "maxLengthInBlocks":I
    nop

    .line 2645
    move/from16 v16, v15

    move-object/from16 v10, v52

    goto/16 :goto_21

    .line 2541
    .end local v11    # "maxBps":I
    .end local v15    # "maxBlocks":I
    .end local v17    # "errors":I
    .end local v18    # "maxBlocksPerSecond":J
    .end local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v0    # "maxBlocksPerSecond":J
    .restart local v2    # "maxBlocks":I
    .local v3, "maxBps":I
    .restart local v4    # "errors":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2f
    move-object/from16 v52, v12

    .line 2541
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string/jumbo v5, "video/hevc"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2543
    const/16 v2, 0x240

    .line 2544
    mul-int/lit8 v5, v2, 0xf

    int-to-long v0, v5

    .line 2545
    const v3, 0x1f400

    .line 2546
    move-object/from16 v10, v52

    array-length v5, v10

    .line 2546
    .end local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v10, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-wide v14, v0

    move v11, v2

    move v12, v3

    move/from16 v17, v4

    const/4 v0, 0x0

    .line 2546
    .end local v0    # "maxBlocksPerSecond":J
    .end local v2    # "maxBlocks":I
    .end local v3    # "maxBps":I
    .end local v4    # "errors":I
    .local v11, "maxBlocks":I
    .local v12, "maxBps":I
    .local v14, "maxBlocksPerSecond":J
    .restart local v17    # "errors":I
    :goto_1e
    if-ge v0, v5, :cond_31

    aget-object v1, v10, v0

    .line 2547
    .restart local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v2, 0x0

    .line 2548
    .local v2, "FR":D
    const/4 v4, 0x0

    .line 2549
    .local v4, "FS":I
    const/4 v6, 0x0

    .line 2550
    .local v6, "BR":I
    iget v7, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v7, :sswitch_data_3

    .line 2603
    const-string v7, "VideoCapabilities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    or-int/lit8 v17, v17, 0x1

    goto/16 :goto_1f

    .line 2601
    :sswitch_25
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x2200000

    const v6, 0xc3500

    goto/16 :goto_1f

    .line 2599
    :sswitch_26
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x2200000

    const v6, 0x3a980

    goto/16 :goto_1f

    .line 2597
    :sswitch_27
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x2200000

    const v6, 0x75300

    goto/16 :goto_1f

    .line 2595
    :sswitch_28
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x2200000

    const v6, 0x1d4c0

    goto/16 :goto_1f

    .line 2593
    :sswitch_29
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x2200000

    const v6, 0x3a980

    goto/16 :goto_1f

    .line 2591
    :sswitch_2a
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x2200000

    const v6, 0xea60

    goto/16 :goto_1f

    .line 2589
    :sswitch_2b
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x880000

    const v6, 0x3a980

    goto/16 :goto_1f

    .line 2587
    :sswitch_2c
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x880000

    const v6, 0xea60

    goto/16 :goto_1f

    .line 2585
    :sswitch_2d
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x880000

    const v6, 0x27100

    goto :goto_1f

    .line 2583
    :sswitch_2e
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x880000

    const v6, 0x9c40

    goto :goto_1f

    .line 2581
    :sswitch_2f
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x880000

    const v6, 0x186a0

    goto :goto_1f

    .line 2579
    :sswitch_30
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x880000

    const/16 v6, 0x61a8

    goto :goto_1f

    .line 2577
    :sswitch_31
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x220000

    const v6, 0xc350

    goto :goto_1f

    .line 2575
    :sswitch_32
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x220000

    const/16 v6, 0x4e20

    goto :goto_1f

    .line 2573
    :sswitch_33
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x220000

    const/16 v6, 0x7530

    goto :goto_1f

    .line 2571
    :sswitch_34
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x220000

    const/16 v6, 0x2ee0

    goto :goto_1f

    .line 2569
    :sswitch_35
    const-wide v2, 0x4040e00000000000L    # 33.75

    const/high16 v4, 0xf0000

    const/16 v6, 0x2710

    goto :goto_1f

    .line 2566
    :sswitch_36
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const v4, 0x87000

    const/16 v6, 0x1770

    goto :goto_1f

    .line 2563
    :sswitch_37
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const v4, 0x3c000

    const/16 v6, 0xbb8

    goto :goto_1f

    .line 2560
    :sswitch_38
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const v4, 0x1e000

    const/16 v6, 0x5dc

    goto :goto_1f

    .line 2557
    :sswitch_39
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const v4, 0x9000

    const/16 v6, 0x80

    .line 2607
    :goto_1f
    iget v7, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_30

    packed-switch v7, :pswitch_data_8

    .line 2613
    const-string v7, "VideoCapabilities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized profile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    or-int/lit8 v17, v17, 0x1

    goto :goto_20

    .line 2611
    :cond_30
    :pswitch_10
    nop

    .line 2625
    :goto_20
    shr-int/lit8 v4, v4, 0x6

    .line 2626
    and-int/lit8 v17, v17, -0x5

    .line 2627
    int-to-double v7, v4

    mul-double/2addr v7, v2

    double-to-int v7, v7

    int-to-long v7, v7

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 2628
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2629
    mul-int/lit16 v7, v6, 0x3e8

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2546
    .end local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v2    # "FR":D
    .end local v4    # "FS":I
    .end local v6    # "BR":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1e

    .line 2632
    :cond_31
    mul-int/lit8 v0, v11, 0x8

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v9, v0

    .line 2633
    .local v9, "maxLengthInBlocks":I
    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v9

    move v2, v9

    move v3, v11

    move-wide v4, v14

    move/from16 v18, v9

    move/from16 v9, v16

    .end local v9    # "maxLengthInBlocks":I
    .local v18, "maxLengthInBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2638
    .end local v18    # "maxLengthInBlocks":I
    nop

    .line 2645
    move/from16 v16, v11

    move v11, v12

    move-wide/from16 v18, v14

    goto :goto_21

    .line 2639
    .end local v10    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v11    # "maxBlocks":I
    .end local v12    # "maxBps":I
    .end local v14    # "maxBlocksPerSecond":J
    .end local v17    # "errors":I
    .restart local v0    # "maxBlocksPerSecond":J
    .local v2, "maxBlocks":I
    .restart local v3    # "maxBps":I
    .local v4, "errors":I
    .restart local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_32
    move-object/from16 v10, v52

    .line 2639
    .end local v52    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v10    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported mime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    const v5, 0xfa00

    .line 2643
    .end local v3    # "maxBps":I
    .local v5, "maxBps":I
    or-int/lit8 v17, v4, 0x2

    .line 2645
    .end local v4    # "errors":I
    .restart local v17    # "errors":I
    move-wide/from16 v18, v0

    move/from16 v16, v2

    move v11, v5

    .line 2645
    .end local v0    # "maxBlocksPerSecond":J
    .end local v2    # "maxBlocks":I
    .end local v5    # "maxBps":I
    .local v11, "maxBps":I
    .local v16, "maxBlocks":I
    .local v18, "maxBlocksPerSecond":J
    :goto_21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 2646
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v2, v2, v17

    iput v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 2647
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_12
        0x4 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x20 -> :sswitch_e
        0x40 -> :sswitch_d
        0x80 -> :sswitch_c
        0x100 -> :sswitch_b
        0x200 -> :sswitch_a
        0x400 -> :sswitch_9
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_7
        0x2000 -> :sswitch_6
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_4
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x4 -> :sswitch_15
        0x8 -> :sswitch_15
        0x10 -> :sswitch_15
        0x20 -> :sswitch_15
        0x40 -> :sswitch_15
        0x80 -> :sswitch_15
        0x100 -> :sswitch_15
        0x200 -> :sswitch_15
        0x400 -> :sswitch_15
        0x800 -> :sswitch_15
        0x1000 -> :sswitch_15
        0x2000 -> :sswitch_15
        0x4000 -> :sswitch_15
        0x8000 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_23
        0x4 -> :sswitch_22
        0x8 -> :sswitch_21
        0x10 -> :sswitch_20
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_1d
        0x100 -> :sswitch_1c
        0x200 -> :sswitch_1b
        0x400 -> :sswitch_1a
        0x800 -> :sswitch_19
        0x1000 -> :sswitch_18
        0x2000 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_39
        0x4 -> :sswitch_38
        0x8 -> :sswitch_38
        0x10 -> :sswitch_37
        0x20 -> :sswitch_37
        0x40 -> :sswitch_36
        0x80 -> :sswitch_36
        0x100 -> :sswitch_35
        0x200 -> :sswitch_35
        0x400 -> :sswitch_34
        0x800 -> :sswitch_33
        0x1000 -> :sswitch_32
        0x2000 -> :sswitch_31
        0x4000 -> :sswitch_30
        0x8000 -> :sswitch_2f
        0x10000 -> :sswitch_2e
        0x20000 -> :sswitch_2d
        0x40000 -> :sswitch_2c
        0x80000 -> :sswitch_2b
        0x100000 -> :sswitch_2a
        0x200000 -> :sswitch_29
        0x400000 -> :sswitch_28
        0x800000 -> :sswitch_27
        0x1000000 -> :sswitch_26
        0x2000000 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .locals 11
    .param p1, "minHorizontalBlocks"    # I
    .param p2, "minVerticalBlocks"    # I
    .param p3, "maxHorizontalBlocks"    # I
    .param p4, "maxVerticalBlocks"    # I
    .param p5, "maxBlocks"    # I
    .param p6, "maxBlocksPerSecond"    # J
    .param p8, "blockWidth"    # I
    .param p9, "blockHeight"    # I
    .param p10, "widthAlignment"    # I
    .param p11, "heightAlignment"    # I

    move-object v6, p0

    move v7, p3

    move v8, p4

    .line 2031
    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct {v6, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    .line 2032
    nop

    .line 2033
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 2034
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, v0, v8}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v7, v0}, Landroid/util/Rational;-><init>(II)V

    .line 2035
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 2032
    move-object v0, v6

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 2038
    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v1, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v1, v1, p8

    .line 2040
    move v2, p1

    invoke-static {v2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v3, v3, p8

    div-int v3, v7, v3

    .line 2041
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2039
    invoke-virtual {v0, v1, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 2042
    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v1, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v1, v1, p9

    .line 2044
    move v3, p2

    invoke-static {v3, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v4, p9

    div-int v4, v8, v4

    .line 2045
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2043
    invoke-virtual {v0, v1, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 2046
    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 12
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    .line 2018
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 2023
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1593
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 1594
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1595
    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 20
    .param p0, "info"    # Landroid/media/MediaFormat;

    .line 1695
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1697
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "block-size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 1698
    .local v1, "blockSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    .line 1700
    .local v2, "BS":I
    const-string v4, "block-count-range"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 1701
    .local v4, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/2addr v7, v2

    .line 1703
    .local v7, "FS":I
    :goto_0
    const-string v8, "blocks-per-second-range"

    .line 1704
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 1705
    .local v8, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v8, :cond_1

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_1
    int-to-long v9, v2

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long/2addr v9, v11

    .line 1707
    .local v9, "SR":J
    :goto_1
    const-string/jumbo v11, "size-range"

    .line 1708
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 1709
    .local v11, "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v11, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    .line 1710
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1709
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1712
    .local v12, "D":I
    :goto_2
    const-string v13, "bitrate-range"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 1713
    .local v5, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v13, 0x3e8

    invoke-static {v6, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    .line 1715
    .local v6, "BR":I
    :goto_3
    const-wide/32 v13, 0xca800

    cmp-long v13, v9, v13

    const/16 v14, 0x200

    if-gtz v13, :cond_4

    const v13, 0x9000

    if-gt v7, v13, :cond_4

    const/16 v13, 0xc8

    if-gt v6, v13, :cond_4

    if-gt v12, v14, :cond_4

    .line 1716
    const/4 v3, 0x1

    return v3

    .line 1717
    :cond_4
    const-wide/32 v15, 0x2a3000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_5

    const v13, 0x12000

    if-gt v7, v13, :cond_5

    const/16 v13, 0x320

    if-gt v6, v13, :cond_5

    const/16 v13, 0x300

    if-gt v12, v13, :cond_5

    .line 1718
    const/4 v3, 0x2

    return v3

    .line 1719
    :cond_5
    const-wide/32 v15, 0x465000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_6

    const v13, 0x1e000

    if-gt v7, v13, :cond_6

    const/16 v13, 0x708

    if-gt v6, v13, :cond_6

    const/16 v13, 0x3c0

    if-gt v12, v13, :cond_6

    .line 1720
    const/4 v3, 0x4

    return v3

    .line 1721
    :cond_6
    const-wide/32 v15, 0x8ca000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_7

    const v13, 0x3c000

    if-gt v7, v13, :cond_7

    const/16 v13, 0xe10

    if-gt v6, v13, :cond_7

    const/16 v13, 0x540

    if-gt v12, v13, :cond_7

    .line 1722
    return v3

    .line 1723
    :cond_7
    const-wide/32 v15, 0x13c6800

    cmp-long v3, v9, v15

    const/16 v13, 0x800

    if-gtz v3, :cond_8

    const v3, 0x87000

    if-gt v7, v3, :cond_8

    const/16 v3, 0x1c20

    if-gt v6, v3, :cond_8

    if-gt v12, v13, :cond_8

    .line 1724
    const/16 v3, 0x10

    return v3

    .line 1725
    :cond_8
    const-wide/32 v15, 0x2328000

    cmp-long v3, v9, v15

    if-gtz v3, :cond_9

    const/high16 v3, 0xf0000

    if-gt v7, v3, :cond_9

    const/16 v3, 0x2ee0

    if-gt v6, v3, :cond_9

    const/16 v3, 0xac0

    if-gt v12, v3, :cond_9

    .line 1726
    const/16 v3, 0x20

    return v3

    .line 1727
    :cond_9
    const-wide/32 v15, 0x4fb0000

    cmp-long v3, v9, v15

    const/16 v15, 0x1040

    const/high16 v13, 0x220000

    if-gtz v3, :cond_a

    if-gt v7, v13, :cond_a

    const/16 v3, 0x4650

    if-gt v6, v3, :cond_a

    if-gt v12, v15, :cond_a

    .line 1728
    const/16 v3, 0x40

    return v3

    .line 1729
    :cond_a
    const-wide/32 v18, 0x9900000

    cmp-long v3, v9, v18

    if-gtz v3, :cond_b

    if-gt v7, v13, :cond_b

    const/16 v3, 0x7530

    if-gt v6, v3, :cond_b

    if-gt v12, v15, :cond_b

    .line 1730
    const/16 v3, 0x80

    return v3

    .line 1731
    :cond_b
    const-wide/32 v15, 0x12980000

    cmp-long v3, v9, v15

    const/16 v13, 0x20c0

    const/high16 v15, 0x880000

    if-gtz v3, :cond_c

    if-gt v7, v15, :cond_c

    const v3, 0xea60

    if-gt v6, v3, :cond_c

    if-gt v12, v13, :cond_c

    .line 1732
    const/16 v3, 0x100

    return v3

    .line 1733
    :cond_c
    const-wide/32 v18, 0x23100000

    cmp-long v3, v9, v18

    if-gtz v3, :cond_d

    if-gt v7, v15, :cond_d

    const v3, 0x1d4c0

    if-gt v6, v3, :cond_d

    if-gt v12, v13, :cond_d

    .line 1734
    return v14

    .line 1735
    :cond_d
    const-wide/32 v18, 0x46200000

    cmp-long v3, v9, v18

    const v14, 0x2bf20

    if-gtz v3, :cond_e

    if-gt v7, v15, :cond_e

    if-gt v6, v14, :cond_e

    if-gt v12, v13, :cond_e

    .line 1736
    const/16 v3, 0x400

    return v3

    .line 1737
    :cond_e
    cmp-long v3, v9, v18

    const/16 v13, 0x41c0

    const/high16 v15, 0x2200000

    if-gtz v3, :cond_f

    if-gt v7, v15, :cond_f

    if-gt v6, v14, :cond_f

    if-gt v12, v13, :cond_f

    .line 1738
    const/16 v3, 0x800

    return v3

    .line 1739
    :cond_f
    const-wide v16, 0x8c400000L

    cmp-long v3, v9, v16

    if-gtz v3, :cond_10

    if-gt v7, v15, :cond_10

    const v3, 0x3a980

    if-gt v6, v3, :cond_10

    if-gt v12, v13, :cond_10

    .line 1740
    const/16 v3, 0x1000

    return v3

    .line 1741
    :cond_10
    const-wide v16, 0x118800000L

    cmp-long v3, v9, v16

    const/16 v14, 0x2000

    if-gtz v3, :cond_11

    if-gt v7, v15, :cond_11

    const v3, 0x75300

    if-gt v6, v3, :cond_11

    if-gt v12, v13, :cond_11

    .line 1742
    return v14

    .line 1744
    :cond_11
    return v14
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1451
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v0

    .line 1452
    .local v0, "size":Landroid/util/Size;
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 1453
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v2

    int-to-double v2, v2

    .line 1454
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 1453
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1455
    .local v2, "ratio":Ljava/lang/Double;
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1436
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v0

    .line 1437
    .local v0, "targetBlockCount":I
    const/4 v1, 0x0

    .line 1438
    .local v1, "closestSize":Landroid/util/Size;
    const v2, 0x7fffffff

    .line 1439
    .local v2, "minDiff":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1440
    .local v4, "size":Landroid/util/Size;
    nop

    .line 1441
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    sub-int v5, v0, v5

    .line 1440
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1442
    .local v5, "diff":I
    if-ge v5, v2, :cond_0

    .line 1443
    move v2, v5

    .line 1444
    move-object v1, v4

    .line 1446
    .end local v4    # "size":Landroid/util/Size;
    .end local v5    # "diff":I
    :cond_0
    goto :goto_0

    .line 1447
    :cond_1
    return-object v1
.end method

.method private getBlockCount(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1431
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1652
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1653
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string/jumbo v1, "measured-frame-rate-"

    .line 1654
    .local v1, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1655
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1657
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "measured-frame-rate-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1658
    goto :goto_0

    .line 1660
    :cond_1
    const-string/jumbo v5, "measured-frame-rate-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1661
    .local v5, "subKey":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1662
    .local v6, "temp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    .line 1663
    goto :goto_0

    .line 1665
    :cond_2
    const/4 v7, 0x3

    aget-object v7, v6, v7

    .line 1666
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 1667
    .local v9, "size":Landroid/util/Size;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-gtz v10, :cond_3

    .line 1668
    goto :goto_0

    .line 1670
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 1671
    .local v8, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 1672
    goto :goto_0

    .line 1674
    :cond_4
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "subKey":Ljava/lang/String;
    .end local v6    # "temp":[Ljava/lang/String;
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v8    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v9    # "size":Landroid/util/Size;
    goto :goto_0

    .line 1676
    :cond_5
    return-object v0
.end method

.method private init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1599
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1600
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 1601
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 1602
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1603
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1604
    return-void
.end method

.method private initWithPlatformLimits()V
    .locals 1

    .line 1627
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1629
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1630
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1631
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1633
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1634
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1637
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1638
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1640
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1641
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1644
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1645
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1646
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1647
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1648
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1649
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 30
    .param p1, "info"    # Landroid/media/MediaFormat;

    move-object/from16 v11, p0

    .line 1748
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v12

    .line 1749
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/util/Size;

    iget v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1750
    .local v0, "blockSize":Landroid/util/Size;
    new-instance v1, Landroid/util/Size;

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v3, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1751
    .local v1, "alignment":Landroid/util/Size;
    const/4 v2, 0x0

    .line 1751
    .local v2, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1751
    .local v3, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1752
    .local v4, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1752
    .local v5, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 1753
    .local v6, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1754
    .local v7, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 1754
    .local v8, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v9, 0x0

    .line 1756
    .local v9, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v10, "block-size"

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v13

    .line 1757
    .end local v0    # "blockSize":Landroid/util/Size;
    .local v13, "blockSize":Landroid/util/Size;
    const-string v0, "alignment"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v14

    .line 1758
    .end local v1    # "alignment":Landroid/util/Size;
    .local v14, "alignment":Landroid/util/Size;
    const-string v0, "block-count-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    .line 1759
    .end local v2    # "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v15, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string v0, "blocks-per-second-range"

    .line 1760
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v10

    .line 1761
    .end local v7    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local v10, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-direct {v11, v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 1762
    const-string/jumbo v0, "size-range"

    .line 1763
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 1764
    .local v7, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v7, :cond_0

    .line 1765
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/util/Range;

    .line 1766
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/Range;

    .line 1772
    :cond_0
    const-string v0, "feature-can-swap-width-height"

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1773
    if-eqz v3, :cond_1

    .line 1774
    nop

    .line 1775
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1776
    invoke-virtual {v3, v4}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    move-object v4, v0

    move-object v3, v0

    goto :goto_0

    .line 1778
    :cond_1
    const-string v0, "VideoCapabilities"

    const-string v2, "feature can-swap-width-height is best used with size-range"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1780
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1781
    iget-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0, v2}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1785
    .local v3, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    move-object/from16 v29, v4

    move-object v4, v3

    move-object/from16 v3, v29

    const-string v0, "block-aspect-ratio-range"

    .line 1786
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1785
    invoke-static {v0, v1}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 1787
    const-string/jumbo v0, "pixel-aspect-ratio-range"

    .line 1788
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1787
    invoke-static {v0, v1}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    .line 1789
    const-string v0, "frame-rate-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 1790
    .end local v5    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v2, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    .line 1792
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 1797
    goto :goto_1

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VideoCapabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "frame rate range ("

    .line 1794
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is out of limits: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1794
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v2, 0x0

    .line 1799
    .end local v2    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    move-object v5, v2

    const-string v0, "bitrate-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 1800
    .end local v6    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4

    .line 1802
    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 1807
    goto :goto_2

    .line 1803
    :catch_1
    move-exception v0

    .line 1804
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "bitrate range ("

    .line 1804
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is out of limits: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1804
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const/4 v1, 0x0

    .line 1810
    .end local v1    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_4
    move-object v0, v1

    .line 1811
    :goto_2
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v2, "block-size width must be power of two"

    .line 1810
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1812
    nop

    .line 1813
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v2, "block-size height must be power of two"

    .line 1812
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1815
    nop

    .line 1816
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v2, "alignment width must be power of two"

    .line 1815
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1817
    nop

    .line 1818
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v2, "alignment height must be power of two"

    .line 1817
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 1821
    const v2, 0x7fffffff

    const v6, 0x7fffffff

    const v16, 0x7fffffff

    const-wide v17, 0x7fffffffffffffffL

    .line 1823
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v20

    .line 1824
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v22

    .line 1821
    move-object v1, v11

    move-object/from16 v23, v3

    move v3, v6

    .line 1821
    .end local v3    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v23, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object v6, v4

    move/from16 v4, v16

    .line 1821
    .end local v4    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v6, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v17

    .line 1821
    .end local v5    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v6    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v24, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v25, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v16, v7

    move/from16 v7, v19

    .line 1821
    .end local v7    # "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .local v16, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    move-object/from16 v26, v8

    move/from16 v8, v20

    .line 1821
    .end local v8    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v26, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    move-object/from16 v27, v9

    move/from16 v9, v21

    .line 1821
    .end local v9    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v27, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    move-object/from16 v28, v12

    move-object v12, v10

    move/from16 v10, v22

    .line 1821
    .end local v10    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local v12, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local v28, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v1 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1826
    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_d

    iget-boolean v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v1, :cond_5

    .line 1829
    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    goto/16 :goto_3

    .line 1867
    :cond_5
    move-object/from16 v3, v24

    if-eqz v3, :cond_6

    .line 1868
    .end local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v1, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1870
    :cond_6
    move-object/from16 v4, v23

    if-eqz v4, :cond_7

    .line 1871
    .end local v23    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v1, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1873
    :cond_7
    if-eqz v15, :cond_8

    .line 1874
    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v5

    .line 1876
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v2, v5

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v2, v5

    .line 1875
    invoke-static {v15, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v2

    .line 1874
    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1878
    :cond_8
    if-eqz v12, :cond_9

    .line 1879
    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v5

    .line 1881
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v2, v5

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v2, v5

    int-to-long v5, v2

    .line 1880
    invoke-static {v12, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v2

    .line 1879
    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1883
    :cond_9
    move-object/from16 v1, v27

    if-eqz v1, :cond_a

    .line 1884
    .end local v27    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v1, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    iget-object v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1886
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1887
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    .line 1885
    invoke-static {v1, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v5

    .line 1884
    invoke-virtual {v2, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1889
    :cond_a
    move-object/from16 v2, v26

    if-eqz v2, :cond_b

    .line 1890
    .end local v26    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v2, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    iget-object v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    iput-object v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1892
    :cond_b
    move-object/from16 v5, v25

    if-eqz v5, :cond_c

    .line 1893
    .end local v25    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v5    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v6, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1895
    :cond_c
    if-eqz v0, :cond_16

    .line 1896
    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_4

    .line 1829
    .end local v1    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v2    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v3    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v5    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v23    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v25    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v26    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v27    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_d
    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    .line 1829
    .end local v23    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v25    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v26    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v27    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v1    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v2    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v3    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v4    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v5    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_3
    if-eqz v3, :cond_e

    .line 1830
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1832
    :cond_e
    if-eqz v4, :cond_f

    .line 1833
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1835
    :cond_f
    if-eqz v15, :cond_10

    .line 1836
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v6

    iget v7, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v8, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v7, v8

    .line 1838
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    .line 1837
    invoke-static {v15, v7}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v7

    .line 1836
    invoke-virtual {v6, v7}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1840
    :cond_10
    if-eqz v12, :cond_11

    .line 1841
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v6

    iget v7, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v8, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v7, v8

    .line 1843
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    int-to-long v7, v7

    .line 1842
    invoke-static {v12, v7, v8}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v7

    .line 1841
    invoke-virtual {v6, v7}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1845
    :cond_11
    if-eqz v1, :cond_12

    .line 1846
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v6

    iget v7, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1848
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    iget v8, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1849
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v9

    div-int/2addr v8, v9

    .line 1847
    invoke-static {v1, v7, v8}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v7

    .line 1846
    invoke-virtual {v6, v7}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1851
    :cond_12
    if-eqz v2, :cond_13

    .line 1852
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1854
    :cond_13
    if-eqz v5, :cond_14

    .line 1855
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1857
    :cond_14
    if-eqz v0, :cond_16

    .line 1859
    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v6, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_15

    .line 1860
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto :goto_4

    .line 1862
    :cond_15
    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1899
    :cond_16
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1900
    return-void
.end method

.method private static parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1680
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1681
    .local v0, "range":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v0, :cond_0

    .line 1683
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    .line 1684
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    .line 1685
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1683
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1686
    :catch_0
    move-exception v1

    .line 1687
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse size range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 10
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    .line 1534
    const/4 v0, 0x1

    .line 1536
    .local v0, "ok":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1537
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v3, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1538
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v0, v3

    .line 1540
    :cond_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1541
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1542
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v0, v3

    .line 1544
    :cond_3
    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 1545
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v0

    .line 1547
    :cond_4
    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 1548
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v3, v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    move v0, v3

    .line 1550
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v3, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 1551
    .local v3, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 1552
    .local v4, "heightInBlocks":I
    mul-int v5, v3, v4

    .line 1553
    .local v5, "blockCount":I
    if-eqz v0, :cond_6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 1554
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    .line 1556
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v2

    nop

    :cond_6
    move v0, v1

    .line 1557
    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    .line 1558
    int-to-double v1, v5

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v1, v6

    .line 1559
    .local v1, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1560
    invoke-static {v1, v2}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    .line 1559
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v0

    .line 1563
    .end local v1    # "blocksPerSec":D
    .end local v3    # "widthInBlocks":I
    .end local v4    # "heightInBlocks":I
    .end local v5    # "blockCount":I
    :cond_7
    return v0
.end method

.method private updateLimits()V
    .locals 6

    .line 1963
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1964
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 1963
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1965
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1967
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1968
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1966
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1965
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1969
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1970
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 1969
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1971
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1973
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1974
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1972
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1971
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1975
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1977
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1978
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    .line 1977
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1979
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1980
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    .line 1979
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1976
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1975
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1981
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1983
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1985
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 1981
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1988
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1989
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1990
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1988
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1991
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1992
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1993
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1991
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1994
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1995
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1996
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 1994
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1998
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2000
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1998
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2003
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2004
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2005
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2003
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2006
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2007
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2008
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 2007
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2009
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2010
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 2009
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2006
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2011
    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 1522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1508
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1513
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0

    .line 1509
    :cond_1
    :goto_0
    const-string v0, "VideoCapabilities"

    const-string v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return-object v2

    .line 1505
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 1623
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :goto_0
    return-object v0
.end method

.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    .line 1608
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1618
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .line 1284
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    .line 1301
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1313
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1417
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1421
    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    mul-int/2addr v1, v2

    .line 1423
    .local v1, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1424
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1425
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    .line 1424
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1426
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1427
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    .line 1426
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1423
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 1418
    .end local v1    # "blockCount":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unsupported size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1264
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 9
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1366
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1367
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    .line 1371
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1374
    .local v1, "widthInBlocks":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1375
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    int-to-double v3, v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1377
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 1376
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1374
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1378
    .local v2, "minHeightInBlocks":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1379
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v1

    int-to-double v4, v1

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1381
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    .line 1378
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1382
    .local v3, "maxHeightInBlocks":I
    add-int/lit8 v4, v2, -0x1

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v4, v5

    .line 1383
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v3

    .line 1384
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1382
    invoke-virtual {v0, v4, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    move-object v0, v4

    .line 1387
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v4, :cond_0

    .line 1388
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    move-object v0, v4

    .line 1392
    :cond_0
    int-to-double v4, p1

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1394
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 1393
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-double v5, p1

    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1395
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroid/util/Rational;

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1392
    invoke-virtual {v0, v4, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    move-object v0, v4

    .line 1396
    return-object v0

    .line 1369
    .end local v1    # "widthInBlocks":I
    .end local v2    # "minHeightInBlocks":I
    .end local v3    # "maxHeightInBlocks":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unsupported width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get supported heights for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoCapabilities"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unsupported width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 9
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1322
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1323
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    .line 1327
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1330
    .local v1, "heightInBlocks":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1331
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1332
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    int-to-double v5, v1

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1330
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1334
    .local v2, "minWidthInBlocks":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1335
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v1

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1336
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 1334
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1338
    .local v3, "maxWidthInBlocks":I
    add-int/lit8 v4, v2, -0x1

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v4, v5

    .line 1339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v3

    .line 1340
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1338
    invoke-virtual {v0, v4, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    move-object v0, v4

    .line 1343
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v4, :cond_0

    .line 1344
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    move-object v0, v4

    .line 1348
    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1349
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1351
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    int-to-double v7, p1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1348
    invoke-virtual {v0, v4, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    move-object v0, v4

    .line 1352
    return-object v0

    .line 1325
    .end local v1    # "heightInBlocks":I
    .end local v2    # "minWidthInBlocks":I
    .end local v3    # "maxWidthInBlocks":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unsupported height"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get supported widths for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoCapabilities"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unsupported height"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 1274
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1570
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1571
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1572
    .local v1, "width":Ljava/lang/Integer;
    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1573
    .local v2, "height":Ljava/lang/Integer;
    const-string v3, "frame-rate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1575
    .local v3, "rate":Ljava/lang/Number;
    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1576
    return v5

    .line 1579
    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->access$100(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1580
    return v5

    .line 1584
    :cond_1
    const/4 v4, 0x1

    return v4
.end method
