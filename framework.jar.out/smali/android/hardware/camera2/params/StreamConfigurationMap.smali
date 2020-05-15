.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final DURATION_20FPS_NS:J = 0x2faf080L

.field private static final DURATION_MIN_FRAME:I = 0x0

.field private static final DURATION_STALL:I = 0x1

.field private static final HAL_DATASPACE_DEPTH:I = 0x1000

.field private static final HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final HAL_DATASPACE_UNKNOWN:I = 0x0

.field private static final HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputFormats:Landroid/util/SparseIntArray;

.field private final mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final mListHighResolution:Z

.field private final mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mOutputFormats:Landroid/util/SparseIntArray;

.field private final mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .locals 22
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p8, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p9, "listHighResolution"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 1674
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 1676
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1678
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 1680
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 1682
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 1685
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 102
    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 104
    const-string v5, "depthConfigurations"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 105
    new-array v5, v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 106
    new-array v5, v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 107
    new-array v5, v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 114
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    goto :goto_0

    .line 109
    :cond_0
    const-string v5, "configurations"

    invoke-static {v1, v5}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 110
    const-string/jumbo v5, "minFrameDurations"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 111
    const-string/jumbo v5, "stallDurations"

    move-object/from16 v7, p3

    invoke-static {v7, v5}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 114
    :goto_0
    move/from16 v5, p9

    iput-boolean v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 116
    if-nez v2, :cond_1

    .line 117
    new-array v8, v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 118
    new-array v8, v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 119
    new-array v8, v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 129
    move-object/from16 v9, p5

    move-object/from16 v10, p6

    goto :goto_1

    .line 121
    :cond_1
    const-string v8, "depthConfigurations"

    invoke-static {v2, v8}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 123
    const-string v8, "depthMinFrameDurations"

    move-object/from16 v9, p5

    invoke-static {v9, v8}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 125
    const-string v8, "depthStallDurations"

    move-object/from16 v10, p6

    invoke-static {v10, v8}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 129
    :goto_1
    if-nez v3, :cond_2

    .line 130
    new-array v8, v4, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    goto :goto_2

    .line 132
    :cond_2
    const-string v8, "highSpeedVideoConfigurations"

    invoke-static {v3, v8}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 137
    :goto_2
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v11, v8

    move v12, v4

    :goto_3
    if-ge v12, v11, :cond_7

    aget-object v13, v8, v12

    .line 138
    .local v13, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v13}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v14

    .line 139
    .local v14, "fmt":I
    const/4 v15, 0x0

    .line 140
    .local v15, "map":Landroid/util/SparseIntArray;
    invoke-virtual {v13}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 141
    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    const-wide/16 v17, 0x0

    .line 143
    .local v17, "duration":J
    iget-boolean v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v2, :cond_4

    .line 144
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_4

    move/from16 v19, v4

    aget-object v4, v2, v3

    .line 145
    .local v4, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v20, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v2

    if-ne v2, v14, :cond_3

    .line 146
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v2

    invoke-virtual {v13}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 147
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v2

    invoke-virtual {v13}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 148
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v17

    .line 149
    goto :goto_5

    .line 144
    .end local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    move-object/from16 v2, v20

    move/from16 v5, p9

    goto :goto_4

    .line 153
    :cond_4
    :goto_5
    const-wide/32 v2, 0x2faf080

    cmp-long v2, v17, v2

    if-gtz v2, :cond_5

    .line 154
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_6

    :cond_5
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 155
    .end local v15    # "map":Landroid/util/SparseIntArray;
    .end local v17    # "duration":J
    .local v2, "map":Landroid/util/SparseIntArray;
    :goto_6
    goto :goto_7

    .line 156
    .end local v2    # "map":Landroid/util/SparseIntArray;
    .restart local v15    # "map":Landroid/util/SparseIntArray;
    :cond_6
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 158
    .end local v15    # "map":Landroid/util/SparseIntArray;
    .restart local v2    # "map":Landroid/util/SparseIntArray;
    :goto_7
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    .end local v2    # "map":Landroid/util/SparseIntArray;
    .end local v13    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v14    # "fmt":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    const/4 v4, 0x0

    move/from16 v5, p9

    goto :goto_3

    .line 162
    :cond_7
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    .line 163
    .local v5, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v8

    if-nez v8, :cond_8

    .line 165
    goto :goto_9

    .line 168
    :cond_8
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v11

    iget-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 169
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    .line 168
    invoke-virtual {v8, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    .end local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 172
    :cond_9
    if-eqz v1, :cond_b

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    .line 173
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_a

    goto :goto_a

    .line 174
    :cond_a
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 179
    :cond_b
    :goto_a
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_e

    aget-object v5, v2, v4

    .line 180
    .local v5, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    .line 181
    .local v8, "size":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v11

    .line 182
    .local v11, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 183
    .local v12, "fpsRangeCount":Ljava/lang/Integer;
    if-nez v12, :cond_c

    .line 184
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 186
    :cond_c
    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 188
    .local v13, "sizeCount":Ljava/lang/Integer;
    if-nez v13, :cond_d

    .line 189
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_c

    .line 191
    :cond_d
    const/4 v14, 0x0

    :goto_c
    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v14, v16, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v5    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v8    # "size":Landroid/util/Size;
    .end local v11    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v12    # "fpsRangeCount":Ljava/lang/Integer;
    .end local v13    # "sizeCount":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 194
    :cond_e
    move-object/from16 v2, p8

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 195
    return-void
.end method

.method private appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .locals 21
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    .line 1505
    move-object/from16 v1, p1

    const-string v2, "HighResolutionOutputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 1507
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget v8, v2, v5

    .line 1508
    .local v8, "format":I
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .line 1509
    .local v9, "sizes":[Landroid/util/Size;
    if-nez v9, :cond_0

    .line 1507
    .end local v8    # "format":I
    .end local v9    # "sizes":[Landroid/util/Size;
    move-object/from16 v19, v2

    const/16 v18, 0x0

    goto :goto_2

    .line 1510
    .restart local v8    # "format":I
    .restart local v9    # "sizes":[Landroid/util/Size;
    :cond_0
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 1511
    .local v12, "size":Landroid/util/Size;
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 1512
    .local v13, "minFrameDuration":J
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v6

    .line 1513
    .local v6, "stallDuration":J
    const-string v15, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 1514
    move-object/from16 v19, v2

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    .end local v2    # "formats":[I
    .local v19, "formats":[I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x0

    aput-object v2, v4, v18

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v4, v16

    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x2

    aput-object v2, v4, v17

    const/16 v17, 0x3

    .line 1515
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v4, v17

    const/16 v17, 0x4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v4, v17

    const/16 v17, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v4, v17

    .line 1513
    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .end local v6    # "stallDuration":J
    .end local v12    # "size":Landroid/util/Size;
    .end local v13    # "minFrameDuration":J
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v19

    goto :goto_1

    .line 1507
    .end local v8    # "format":I
    .end local v9    # "sizes":[Landroid/util/Size;
    .end local v19    # "formats":[I
    .restart local v2    # "formats":[I
    :cond_1
    move-object/from16 v19, v2

    const/16 v18, 0x0

    .end local v2    # "formats":[I
    .restart local v19    # "formats":[I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v19

    goto :goto_0

    .line 1519
    .end local v19    # "formats":[I
    .restart local v2    # "formats":[I
    :cond_2
    move-object/from16 v19, v2

    .end local v2    # "formats":[I
    .restart local v19    # "formats":[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 1520
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v2, 0x2

    sub-int/2addr v3, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1522
    :cond_3
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    return-void
.end method

.method private appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .locals 17
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1565
    move-object/from16 v0, p1

    const-string v1, "HighSpeedVideoConfigurations("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v1

    .line 1567
    .local v1, "sizes":[Landroid/util/Size;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    .line 1568
    .local v7, "size":Landroid/util/Size;
    move-object/from16 v8, p0

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v9

    .line 1569
    .local v9, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v10, v9

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 1570
    .local v12, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string v13, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    .line 1571
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    aput-object v15, v14, v5

    const/4 v15, 0x3

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1570
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .end local v12    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1567
    .end local v7    # "size":Landroid/util/Size;
    .end local v9    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1575
    :cond_1
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 1576
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1578
    :cond_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    return-void
.end method

.method private appendInputsString(Ljava/lang/StringBuilder;)V
    .locals 17
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    .line 1526
    move-object/from16 v1, p1

    const-string v2, "Inputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v2

    .line 1528
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    aget v8, v2, v5

    .line 1529
    .local v8, "format":I
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .line 1530
    .local v9, "sizes":[Landroid/util/Size;
    array-length v10, v9

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 1531
    .local v12, "size":Landroid/util/Size;
    const-string v13, "[w:%d, h:%d, format:%s(%d)], "

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v4

    .line 1532
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    const/4 v15, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1531
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    .end local v12    # "size":Landroid/util/Size;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1528
    .end local v8    # "format":I
    .end local v9    # "sizes":[Landroid/util/Size;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 1537
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1539
    :cond_2
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    return-void
.end method

.method private appendOutputsString(Ljava/lang/StringBuilder;)V
    .locals 21
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    .line 1485
    move-object/from16 v1, p1

    const-string v2, "Outputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 1487
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v8, v2, v5

    .line 1488
    .local v8, "format":I
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .line 1489
    .local v9, "sizes":[Landroid/util/Size;
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 1490
    .local v12, "size":Landroid/util/Size;
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 1491
    .local v13, "minFrameDuration":J
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v6

    .line 1492
    .local v6, "stallDuration":J
    const-string v15, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 1493
    move-object/from16 v19, v2

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    .end local v2    # "formats":[I
    .local v19, "formats":[I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x0

    aput-object v2, v4, v18

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v4, v16

    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x2

    aput-object v2, v4, v17

    const/16 v17, 0x3

    .line 1494
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v4, v17

    const/16 v17, 0x4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v4, v17

    const/16 v17, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v4, v17

    .line 1492
    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    .end local v6    # "stallDuration":J
    .end local v12    # "size":Landroid/util/Size;
    .end local v13    # "minFrameDuration":J
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v19

    goto :goto_1

    .line 1487
    .end local v8    # "format":I
    .end local v9    # "sizes":[Landroid/util/Size;
    .end local v19    # "formats":[I
    .restart local v2    # "formats":[I
    :cond_0
    move-object/from16 v19, v2

    const/16 v18, 0x0

    .end local v2    # "formats":[I
    .restart local v19    # "formats":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1498
    .end local v19    # "formats":[I
    .restart local v2    # "formats":[I
    :cond_1
    move-object/from16 v19, v2

    .end local v2    # "formats":[I
    .restart local v19    # "formats":[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 1499
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v2, 0x2

    sub-int/2addr v3, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1501
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    return-void
.end method

.method private appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .locals 12
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1543
    const-string v0, "ValidOutputFormatsForInput("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1545
    .local v0, "inputFormats":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget v6, v0, v3

    .line 1546
    .local v6, "inputFormat":I
    const-string v7, "[in:%s(%d), out:"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v7

    .line 1548
    .local v7, "outputFormats":[I
    move v8, v2

    .local v8, "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 1549
    const-string v9, "%s(%d)"

    new-array v10, v4, [Ljava/lang/Object;

    aget v11, v7, v8

    invoke-direct {p0, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    aget v11, v7, v8

    .line 1550
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 1549
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    array-length v9, v7

    sub-int/2addr v9, v5

    if-ge v8, v9, :cond_0

    .line 1552
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1555
    .end local v8    # "i":I
    :cond_1
    const-string v4, "], "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .end local v6    # "inputFormat":I
    .end local v7    # "outputFormats":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1558
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 1559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1561
    :cond_3
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    return-void
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1409
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1410
    return v0

    .line 1413
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1414
    .local v3, "el":Ljava/lang/Object;, "TT;"
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1415
    const/4 v0, 0x1

    return v0

    .line 1413
    .end local v3    # "el":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1419
    :cond_2
    return v0
.end method

.method static checkArgumentFormat(I)I
    .locals 4
    .param p0, "format"    # I

    .line 1028
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1030
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1029
    const-string v2, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_1
    :goto_0
    return p0
.end method

.method static checkArgumentFormatInternal(I)I
    .locals 2
    .param p0, "format"    # I

    .line 993
    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    const v0, 0x20363159

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 1003
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result v0

    return v0

    .line 1000
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_1
    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkArgumentFormatSupported(IZ)I
    .locals 6
    .param p1, "format"    # I
    .param p2, "output"    # Z

    .line 950
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 952
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 953
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 955
    .local v1, "internalDataspace":I
    if-eqz p2, :cond_1

    .line 956
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 957
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 958
    return p1

    .line 961
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 962
    return p1

    .line 966
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 967
    return p1

    .line 971
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 972
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 971
    const-string v4, "format %x is not supported by this stream configuration map"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static depthFormatToPublic(I)I
    .locals 3
    .param p0, "format"    # I

    .line 1110
    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const v0, 0x20363159

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DATASPACE_DEPTH format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMPLEMENTATION_DEFINED must not leak to public API"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :pswitch_1
    const/16 v0, 0x101

    return v0

    .line 1116
    :pswitch_2
    const/16 v0, 0x1002

    return v0

    .line 1114
    :cond_0
    const v0, 0x44363159

    return v0

    .line 1118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I

    .line 1582
    sparse-switch p1, :sswitch_data_0

    .line 1622
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1614
    :sswitch_0
    const-string v0, "DEPTH16"

    return-object v0

    .line 1584
    :sswitch_1
    const-string v0, "YV12"

    return-object v0

    .line 1606
    :sswitch_2
    const-string v0, "Y16"

    return-object v0

    .line 1604
    :sswitch_3
    const-string v0, "Y8"

    return-object v0

    .line 1618
    :sswitch_4
    const-string v0, "RAW_DEPTH"

    return-object v0

    .line 1616
    :sswitch_5
    const-string v0, "DEPTH_POINT_CLOUD"

    return-object v0

    .line 1600
    :sswitch_6
    const-string v0, "JPEG"

    return-object v0

    .line 1612
    :sswitch_7
    const-string v0, "RAW10"

    return-object v0

    .line 1610
    :sswitch_8
    const-string v0, "RAW_PRIVATE"

    return-object v0

    .line 1586
    :sswitch_9
    const-string v0, "YUV_420_888"

    return-object v0

    .line 1620
    :sswitch_a
    const-string v0, "PRIVATE"

    return-object v0

    .line 1608
    :sswitch_b
    const-string v0, "RAW_SENSOR"

    return-object v0

    .line 1602
    :sswitch_c
    const-string v0, "YUY2"

    return-object v0

    .line 1588
    :sswitch_d
    const-string v0, "NV21"

    return-object v0

    .line 1590
    :sswitch_e
    const-string v0, "NV16"

    return-object v0

    .line 1592
    :sswitch_f
    const-string v0, "RGB_565"

    return-object v0

    .line 1598
    :sswitch_10
    const-string v0, "RGB_888"

    return-object v0

    .line 1596
    :sswitch_11
    const-string v0, "RGBX_8888"

    return-object v0

    .line 1594
    :sswitch_12
    const-string v0, "RGBA_8888"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_11
        0x3 -> :sswitch_10
        0x4 -> :sswitch_f
        0x10 -> :sswitch_e
        0x11 -> :sswitch_d
        0x14 -> :sswitch_c
        0x20 -> :sswitch_b
        0x22 -> :sswitch_a
        0x23 -> :sswitch_9
        0x24 -> :sswitch_8
        0x25 -> :sswitch_7
        0x100 -> :sswitch_6
        0x101 -> :sswitch_5
        0x1002 -> :sswitch_4
        0x20203859 -> :sswitch_3
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_1
        0x44363159 -> :sswitch_0
    .end sparse-switch
.end method

.method private getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 2
    .param p1, "duration"    # I
    .param p2, "dataspace"    # I

    .line 1385
    const/16 v0, 0x1000

    packed-switch p1, :pswitch_data_0

    .line 1393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration was invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1390
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1391
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1390
    :goto_0
    return-object v0

    .line 1387
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 1388
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1387
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFormatsMap(Z)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "output"    # Z

    .line 1355
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    :goto_0
    return-object v0
.end method

.method private getInternalFormatDuration(IILandroid/util/Size;I)J
    .locals 6
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "duration"    # I

    .line 1361
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object v0

    .line 1367
    .local v0, "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1368
    .local v3, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1369
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1370
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1371
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v1

    return-wide v1

    .line 1367
    .end local v3    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1375
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1362
    .end local v0    # "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .locals 20
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "output"    # Z
    .param p4, "highRes"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1272
    move/from16 v4, p4

    const/4 v5, 0x0

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_0

    if-eqz v4, :cond_0

    .line 1273
    new-array v5, v5, [Landroid/util/Size;

    return-object v5

    .line 1277
    :cond_0
    if-nez v3, :cond_1

    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1278
    :cond_1
    if-ne v2, v6, :cond_2

    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1279
    :cond_2
    if-eqz v4, :cond_3

    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1280
    :cond_3
    iget-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 1282
    .local v7, "formatsMap":Landroid/util/SparseIntArray;
    :goto_0
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1283
    .local v8, "sizesCount":I
    if-eqz v3, :cond_4

    if-ne v2, v6, :cond_5

    :cond_4
    if-eqz v8, :cond_12

    :cond_5
    if-eqz v3, :cond_6

    if-eq v2, v6, :cond_6

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1284
    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-eqz v9, :cond_12

    .line 1289
    :cond_6
    new-array v9, v8, [Landroid/util/Size;

    .line 1290
    .local v9, "sizes":[Landroid/util/Size;
    const/4 v10, 0x0

    .line 1293
    .local v10, "sizeIndex":I
    if-ne v2, v6, :cond_7

    iget-object v11, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_1

    :cond_7
    iget-object v11, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1295
    .local v11, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_1
    if-ne v2, v6, :cond_8

    iget-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_2

    :cond_8
    iget-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1297
    .local v12, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_2
    array-length v13, v11

    move v14, v10

    move v10, v5

    .end local v10    # "sizeIndex":I
    .local v14, "sizeIndex":I
    :goto_3
    if-ge v10, v13, :cond_10

    aget-object v15, v11, v10

    .line 1298
    .local v15, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    .line 1299
    .local v5, "fmt":I
    if-ne v5, v1, :cond_f

    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v6

    if-ne v6, v3, :cond_e

    .line 1300
    if-eqz v3, :cond_c

    iget-boolean v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v6, :cond_c

    .line 1303
    const-wide/16 v16, 0x0

    .line 1304
    .local v16, "duration":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v0, v12

    if-ge v6, v0, :cond_a

    .line 1305
    aget-object v0, v12, v6

    .line 1306
    .local v0, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 1307
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v1

    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 1308
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v1

    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 1309
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v16

    .line 1310
    goto :goto_5

    .line 1304
    .end local v0    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    goto :goto_4

    .line 1313
    .end local v6    # "i":I
    :cond_a
    :goto_5
    const/16 v0, 0x1000

    if-eq v2, v0, :cond_d

    const-wide/32 v18, 0x2faf080

    cmp-long v1, v16, v18

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eq v4, v1, :cond_d

    .line 1315
    goto :goto_7

    .line 1318
    .end local v16    # "duration":J
    :cond_c
    const/16 v0, 0x1000

    :cond_d
    add-int/lit8 v1, v14, 0x1

    .local v1, "sizeIndex":I
    invoke-virtual {v15}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    aput-object v3, v9, v14

    .line 1297
    .end local v5    # "fmt":I
    .end local v14    # "sizeIndex":I
    .end local v15    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    move v14, v1

    goto :goto_7

    .end local v1    # "sizeIndex":I
    .restart local v14    # "sizeIndex":I
    :cond_e
    const/16 v0, 0x1000

    goto :goto_7

    :cond_f
    move v0, v6

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    const/4 v5, 0x0

    goto :goto_3

    .line 1322
    :cond_10
    if-ne v14, v8, :cond_11

    .line 1327
    return-object v9

    .line 1323
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too few sizes (expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1286
    .end local v9    # "sizes":[Landroid/util/Size;
    .end local v11    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v12    # "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v14    # "sizeIndex":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPublicFormatCount(Z)I
    .locals 3
    .param p1, "output"    # Z

    .line 1399
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1400
    .local v0, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1401
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 1402
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1405
    :cond_0
    return v1
.end method

.method private getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .locals 3
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .param p3, "highRes"    # Z

    .line 1258
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    nop

    .line 1263
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1264
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1266
    .local v1, "dataspace":I
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v2

    return-object v2

    .line 1259
    .end local v0    # "internalFormat":I
    .end local v1    # "dataspace":I
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPublicFormats(Z)[I
    .locals 8
    .param p1, "output"    # Z

    .line 1332
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    move-result v0

    new-array v0, v0, [I

    .line 1334
    .local v0, "formats":[I
    const/4 v1, 0x0

    .line 1336
    .local v1, "i":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1337
    .local v2, "map":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "j":I
    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1338
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1339
    .local v5, "format":I
    add-int/lit8 v6, v4, 0x1

    .local v6, "i":I
    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v7

    aput v7, v0, v4

    .line 1337
    .end local v4    # "i":I
    .end local v5    # "format":I
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_0

    .line 1341
    .end local v1    # "j":I
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 1342
    nop

    .local v3, "j":I
    :goto_1
    move v1, v3

    .end local v3    # "j":I
    .restart local v1    # "j":I
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1343
    add-int/lit8 v3, v4, 0x1

    .local v3, "i":I
    iget-object v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v5

    aput v5, v0, v4

    .line 1342
    .end local v4    # "i":I
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 1346
    .end local v1    # "j":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    array-length v1, v0

    if-ne v1, v4, :cond_2

    .line 1350
    return-object v0

    .line 1347
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too few formats "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static imageFormatToDataspace(I)I
    .locals 1
    .param p0, "format"    # I

    .line 1222
    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const v0, 0x44363159

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1230
    const/4 v0, 0x0

    return v0

    .line 1224
    :pswitch_0
    const/high16 v0, 0x8c20000

    return v0

    .line 1228
    :cond_0
    :pswitch_1
    const/16 v0, 0x1000

    return v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static imageFormatToInternal(I)I
    .locals 1
    .param p0, "format"    # I

    .line 1178
    const/16 v0, 0x1002

    if-eq p0, v0, :cond_1

    const v0, 0x44363159

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1187
    return p0

    .line 1181
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1183
    :cond_0
    const v0, 0x20363159

    return v0

    .line 1185
    :cond_1
    const/16 v0, 0x20

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static imageFormatToInternal([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .line 1245
    if-nez p0, :cond_0

    .line 1246
    const/4 v0, 0x0

    return-object v0

    .line 1249
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1250
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method static imageFormatToPublic(I)I
    .locals 2
    .param p0, "format"    # I

    .line 1067
    const/16 v0, 0x21

    const/16 v1, 0x100

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    .line 1074
    return p0

    .line 1071
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_1
    return v1
.end method

.method static imageFormatToPublic([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .line 1138
    if-nez p0, :cond_0

    .line 1139
    const/4 v0, 0x0

    return-object v0

    .line 1142
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1143
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 345
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v0, "klass must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-class v0, Landroid/media/ImageReader;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 348
    return v1

    .line 349
    :cond_0
    const-class v0, Landroid/media/MediaRecorder;

    if-ne p0, v0, :cond_1

    .line 350
    return v1

    .line 351
    :cond_1
    const-class v0, Landroid/media/MediaCodec;

    if-ne p0, v0, :cond_2

    .line 352
    return v1

    .line 353
    :cond_2
    const-class v0, Landroid/renderscript/Allocation;

    if-ne p0, v0, :cond_3

    .line 354
    return v1

    .line 355
    :cond_3
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p0, v0, :cond_4

    .line 356
    return v1

    .line 357
    :cond_4
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_5

    .line 358
    return v1

    .line 361
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;

    .line 1425
    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1427
    .local v0, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1428
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    if-ne v3, p1, :cond_1

    aget-object v3, v0, v2

    .line 1429
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    const/4 v1, 0x1

    return v1

    .line 1427
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1434
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 917
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 918
    return v0

    .line 920
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 921
    return v1

    .line 923
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_3

    .line 924
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 926
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 927
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 928
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 929
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 930
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 926
    move v0, v1

    goto :goto_0

    .line 930
    :cond_2
    nop

    .line 926
    :goto_0
    return v0

    .line 933
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_3
    return v0
.end method

.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    .line 671
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 673
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 617
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    return-object v1
.end method

.method public getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 9
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 554
    .local v0, "fpsRangeCount":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v2, v2, [Landroid/util/Range;

    .line 561
    .local v2, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 562
    .local v3, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 563
    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 564
    add-int/lit8 v7, v3, 0x1

    .local v7, "i":I
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    aput-object v8, v2, v3

    .line 562
    .end local v3    # "i":I
    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    move v3, v7

    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_1
    return-object v2

    .line 555
    .end local v2    # "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v1, "Size %s does not support high speed video recording"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 2

    .line 526
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 527
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    return-object v1
.end method

.method public getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 634
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 635
    .local v0, "sizeCount":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v2, v2, [Landroid/util/Size;

    .line 641
    .local v2, "sizes":[Landroid/util/Size;
    const/4 v3, 0x0

    .line 642
    .local v3, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 643
    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 644
    add-int/lit8 v7, v3, 0x1

    .local v7, "i":I
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    aput-object v8, v2, v3

    .line 642
    .end local v3    # "i":I
    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    move v3, v7

    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_1
    return-object v2

    .line 636
    .end local v2    # "sizes":[Landroid/util/Size;
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v1, "FpsRange %s does not support high speed video recording"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getInputFormats()[I
    .locals 1

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getInputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputFormats()[I
    .locals 1

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 715
    const-string/jumbo v0, "size must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 718
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 719
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 718
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 769
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    .line 488
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 456
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    return-object v0

    .line 460
    :cond_0
    const/16 v0, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStallDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 862
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 864
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 865
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    .line 864
    invoke-direct {p0, v1, v2, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 899
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0

    .line 900
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValidOutputFormatsForInput(I)[I
    .locals 1
    .param p1, "inputFormat"    # I

    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 942
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOutputSupportedFor(I)Z
    .locals 5
    .param p1, "format"    # I

    .line 295
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 297
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 298
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 299
    .local v1, "dataspace":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_1

    .line 300
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 302
    :cond_1
    invoke-direct {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method public isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;

    .line 402
    const-string/jumbo v0, "surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 405
    .local v0, "surfaceSize":Landroid/util/Size;
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    .line 406
    .local v1, "surfaceFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    .line 409
    .local v2, "surfaceDataspace":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v3

    .line 412
    .local v3, "isFlexible":Z
    const/16 v4, 0x1000

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 413
    .local v4, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 414
    .local v8, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v9

    if-ne v9, v1, :cond_2

    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 417
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 418
    return v10

    .line 419
    :cond_1
    if-eqz v3, :cond_2

    .line 420
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    const/16 v11, 0x780

    if-gt v9, v11, :cond_2

    .line 421
    return v10

    .line 413
    .end local v8    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 425
    :cond_3
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamConfiguration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    .line 1471
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    .line 1473
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    .line 1475
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    .line 1477
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    .line 1479
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
