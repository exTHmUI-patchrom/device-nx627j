.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field public static final NO_BINDING:I = 0x0

.field public static final TIMESTAMP_NOT_SET:J = -0x2L

.field public static final TIMESTAMP_UNKNOWN:J = -0x1L


# instance fields
.field private mBindingId:J

.field private mBindingType:I

.field private mFormat:Landroid/filterfw/core/FrameFormat;

.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mReadOnly:Z

.field private mRefCount:I

.field private mReusable:Z

.field private mTimestamp:J


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 39
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 41
    iput v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 43
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 46
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 47
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p3, "bindingType"    # I
    .param p4, "bindingId"    # J

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 39
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 41
    iput v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 43
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 51
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 52
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 53
    iput p3, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 54
    iput-wide p4, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 55
    return-void
.end method

.method protected static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 182
    return-object p0

    .line 184
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_1

    .line 190
    return-object v0

    .line 188
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported row byte count in bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error converting bitmap to RGBA!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertFrameMutable()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to modify read-only frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final decRefCount()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 224
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getBindingId()J
    .locals 2

    .line 74
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-wide v0
.end method

.method public getBindingType()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    return v0
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getCapacity()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    return v0
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFloats()[F
.end method

.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public abstract getInts()[I
.end method

.method public abstract getObjectValue()Ljava/lang/Object;
.end method

.method public getRefCount()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 126
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-wide v0
.end method

.method protected abstract hasNativeAllocation()Z
.end method

.method final incRefCount()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 219
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return v0
.end method

.method final isReusable()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return v0
.end method

.method final markReadOnly()V
    .locals 1

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 233
    return-void
.end method

.method protected onFrameFetch()V
    .locals 0

    .line 210
    return-void
.end method

.method protected onFrameStore()V
    .locals 0

    .line 204
    return-void
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    return-object p0
.end method

.method protected abstract releaseNativeAllocation()V
.end method

.method protected requestResize([I)Z
    .locals 1
    .param p1, "newDimensions"    # [I

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .param p1, "newFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 195
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 198
    return-void
.end method

.method public retain()Landroid/filterfw/core/Frame;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    return-object p0
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;II)V

    .line 109
    return-void
.end method

.method public abstract setData(Ljava/nio/ByteBuffer;II)V
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 112
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 113
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 130
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 131
    return-void
.end method

.method public abstract setFloats([F)V
.end method

.method protected setFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 172
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 173
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set object value of unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setInts([I)V
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 82
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p1, [F

    if-eqz v0, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setFloats([F)V

    goto :goto_0

    .line 86
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 88
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void
.end method

.method protected setReusable(Z)V
    .locals 0
    .param p1, "reusable"    # Z

    .line 168
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 169
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 122
    iput-wide p1, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 123
    return-void
.end method
