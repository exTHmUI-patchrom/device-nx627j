.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final TYPE_YUV:I = 0x1


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private final mInfo:Ljava/nio/ByteBuffer;

.field private final mIsReadOnly:Z

.field private final mPlanes:[Landroid/media/Image$Plane;

.field private final mScalingMode:I

.field private mTimestamp:J

.field private final mTransform:I

.field private final mWidth:I

.field private final mXOffset:I

.field private final mYOffset:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 20
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Ljava/nio/ByteBuffer;
    .param p3, "readOnly"    # Z
    .param p4, "timestamp"    # J
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    .line 3666
    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    .line 3595
    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 3596
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 3667
    const/16 v5, 0x23

    iput v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 3668
    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 3669
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 3670
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v8

    iput-boolean v8, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 3671
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3674
    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 3675
    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 3676
    move-object/from16 v8, p2

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 3679
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x68

    if-ne v9, v10, :cond_a

    .line 3680
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 3681
    .local v9, "type":I
    if-ne v9, v7, :cond_9

    .line 3684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 3685
    .local v10, "numPlanes":I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    .line 3688
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 3689
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 3690
    iget v11, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    if-lt v11, v7, :cond_7

    iget v11, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    if-lt v11, v7, :cond_7

    .line 3694
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 3695
    .local v11, "bitDepth":I
    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    .line 3698
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 3699
    .local v13, "bitDepthAllocated":I
    if-ne v13, v12, :cond_5

    .line 3703
    new-array v14, v10, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 3704
    move v14, v4

    .line 3704
    .local v14, "ix":I
    :goto_0
    if-ge v14, v10, :cond_3

    .line 3705
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 3706
    .local v15, "planeOffset":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 3707
    .local v4, "colInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 3708
    .local v12, "rowInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 3709
    .local v7, "horiz":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 3710
    .local v5, "vert":I
    if-ne v7, v5, :cond_2

    if-nez v14, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    :goto_1
    if-ne v7, v6, :cond_2

    .line 3714
    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    if-lt v12, v6, :cond_1

    .line 3719
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3720
    iget-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v15

    div-int v17, v2, v7

    mul-int v17, v17, v4

    add-int v6, v6, v17

    div-int v17, v3, v5

    mul-int v17, v17, v12

    add-int v6, v6, v17

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3722
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move/from16 v18, v15

    const/16 v15, 0x8

    invoke-static {v11, v15}, Landroid/media/Utils;->divUp(II)I

    move-result v16

    .line 3722
    .end local v15    # "planeOffset":I
    .local v18, "planeOffset":I
    add-int v6, v6, v16

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v15, v5

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v12

    add-int/2addr v6, v15

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v15, v7

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v4

    add-int/2addr v6, v15

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3724
    iget-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v15, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v15, v0, v8, v12, v4}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v15, v6, v14

    .line 3704
    .end local v4    # "colInc":I
    .end local v5    # "vert":I
    .end local v7    # "horiz":I
    .end local v12    # "rowInc":I
    .end local v18    # "planeOffset":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    move-wide/from16 v5, p4

    move-object/from16 v8, p2

    const/16 v12, 0x8

    goto :goto_0

    .line 3715
    .restart local v4    # "colInc":I
    .restart local v5    # "vert":I
    .restart local v7    # "horiz":I
    .restart local v12    # "rowInc":I
    .restart local v15    # "planeOffset":I
    :cond_1
    move/from16 v18, v15

    .line 3715
    .end local v15    # "planeOffset":I
    .restart local v18    # "planeOffset":I
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected strides: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " pixel, "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " row on plane "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3711
    .end local v18    # "planeOffset":I
    .restart local v15    # "planeOffset":I
    :cond_2
    move/from16 v18, v15

    .line 3711
    .end local v15    # "planeOffset":I
    .restart local v18    # "planeOffset":I
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected subsampling: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "x"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " on plane "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3726
    .end local v4    # "colInc":I
    .end local v5    # "vert":I
    .end local v7    # "horiz":I
    .end local v9    # "type":I
    .end local v10    # "numPlanes":I
    .end local v11    # "bitDepth":I
    .end local v12    # "rowInc":I
    .end local v13    # "bitDepthAllocated":I
    .end local v14    # "ix":I
    .end local v18    # "planeOffset":I
    :cond_3
    nop

    .line 3731
    if-nez p8, :cond_4

    .line 3732
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v7, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    .line 3732
    .end local p8    # "cropRect":Landroid/graphics/Rect;
    .local v4, "cropRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 3734
    .end local v4    # "cropRect":Landroid/graphics/Rect;
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v4, p8

    .line 3734
    .end local p8    # "cropRect":Landroid/graphics/Rect;
    .restart local v4    # "cropRect":Landroid/graphics/Rect;
    :goto_2
    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3735
    invoke-super {v0, v4}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 3736
    return-void

    .line 3700
    .end local v4    # "cropRect":Landroid/graphics/Rect;
    .restart local v9    # "type":I
    .restart local v10    # "numPlanes":I
    .restart local v11    # "bitDepth":I
    .restart local v13    # "bitDepthAllocated":I
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported allocated bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3696
    .end local v13    # "bitDepthAllocated":I
    :cond_6
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3691
    .end local v11    # "bitDepth":I
    :cond_7
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3686
    :cond_8
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected number of planes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3682
    .end local v10    # "numPlanes":I
    :cond_9
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3727
    .end local v9    # "type":I
    :cond_a
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported info length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3728
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 3643
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 3644
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 3645
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 3647
    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    .line 3600
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3601
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 3606
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3607
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .line 3637
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3638
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getScalingMode()I
    .locals 1

    .line 3624
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3625
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 3630
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3631
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public getTransform()I
    .locals 1

    .line 3618
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3619
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 3612
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 3613
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 3657
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_0

    .line 3660
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 3661
    return-void

    .line 3658
    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method
