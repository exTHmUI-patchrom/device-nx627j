.class public Landroid/hardware/camera2/legacy/RequestHolder;
.super Ljava/lang/Object;
.source "RequestHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestHolder"


# instance fields
.field private volatile mFailed:Z

.field private final mFrameNumber:J

.field private final mJpegSurfaceIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumJpegTargets:I

.field private final mNumPreviewTargets:I

.field private mOutputAbandoned:Z

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequeceId:I


# direct methods
.method private constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "repeating"    # Z
    .param p5, "frameNumber"    # J
    .param p7, "numJpegTargets"    # I
    .param p8, "numPreviewTargets"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "ZJII",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p9, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    .line 43
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    .line 163
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRepeating:Z

    .line 164
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 165
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequestId:I

    .line 166
    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mSubsequeceId:I

    .line 167
    iput-wide p5, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFrameNumber:J

    .line 168
    iput p7, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    .line 169
    iput p8, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    .line 170
    iput-object p9, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mJpegSurfaceIds:Ljava/util/Collection;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;Landroid/hardware/camera2/legacy/RequestHolder$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "x3"    # Z
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # I
    .param p9, "x7"    # Ljava/util/Collection;
    .param p10, "x8"    # Landroid/hardware/camera2/legacy/RequestHolder$1;

    .line 32
    invoke-direct/range {p0 .. p9}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public failRequest()V
    .locals 3

    .line 259
    const-string v0, "RequestHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture failed for request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    .line 261
    return-void
.end method

.method public getFrameNumber()J
    .locals 2

    .line 198
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFrameNumber:J

    return-wide v0
.end method

.method public getHolderTargets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .line 177
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequestId:I

    return v0
.end method

.method public getSubsequeceId()I
    .locals 1

    .line 191
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mSubsequeceId:I

    return v0
.end method

.method public hasJpegTargets()Z
    .locals 1

    .line 219
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPreviewTargets()Z
    .locals 1

    .line 227
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutputAbandoned()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRepeating:Z

    return v0
.end method

.method public jpegType(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mJpegSurfaceIds:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public numJpegTargets()I
    .locals 1

    .line 234
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    return v0
.end method

.method public numPreviewTargets()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    return v0
.end method

.method public requestFailed()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    return v0
.end method

.method public setOutputAbandoned()V
    .locals 1

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    .line 275
    return-void
.end method
