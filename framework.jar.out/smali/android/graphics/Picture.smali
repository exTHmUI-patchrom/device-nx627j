.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$PictureCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private mNativePicture:J

.field private mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

.field private mRequiresHwAcceleration:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    .line 45
    return-void
.end method

.method private constructor <init>(J)V
    .locals 2
    .param p1, "nativePicture"    # J

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 60
    iput-wide p1, p0, Landroid/graphics/Picture;->mNativePicture:J

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Picture;

    .line 53
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/Picture;->mNativePicture:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    .line 54
    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Picture;-><init>(J)V

    return-object v0
.end method

.method private static native nativeBeginRecording(JII)J
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeDraw(JJ)V
.end method

.method private static native nativeEndRecording(J)V
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeWriteToStream(JLjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 82
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-nez v0, :cond_0

    .line 85
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(JII)J

    move-result-wide v0

    .line 86
    .local v0, "ni":J
    new-instance v2, Landroid/graphics/Picture$PictureCanvas;

    invoke-direct {v2, p0, v0, v1}, Landroid/graphics/Picture$PictureCanvas;-><init>(Landroid/graphics/Picture;J)V

    iput-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    .line 88
    iget-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    return-object v2

    .line 83
    .end local v0    # "ni":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picture already recording, must call #endRecording()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 150
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 153
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->onHwBitmapInSwMode()V

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Picture;->nativeDraw(JJ)V

    .line 157
    return-void
.end method

.method public endRecording()V
    .locals 2

    .line 98
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    iget-boolean v0, v0, Landroid/graphics/Picture$PictureCanvas;->mHoldsHwBitmap:Z

    iput-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    .line 101
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeEndRecording(J)V

    .line 103
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDestructor(J)V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 70
    nop

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .line 118
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 110
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public requiresHardwareAcceleration()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    if-eqz p1, :cond_1

    .line 191
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Picture;->nativeWriteToStream(JLjava/io/OutputStream;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
