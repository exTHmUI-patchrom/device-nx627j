.class public final Landroid/hardware/camera2/legacy/RequestHolder$Builder;
.super Ljava/lang/Object;
.source "RequestHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequenceId:I


# direct methods
.method public constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p5, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "request must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    .line 76
    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    .line 77
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 78
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    .line 79
    iput-object p5, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    .line 80
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    .line 82
    return-void
.end method

.method private jpegType(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 120
    .local v2, "s":Landroid/view/Surface;
    :try_start_0
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z

    move-result v3
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    goto :goto_1

    .line 123
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string v4, "RequestHolder"

    const-string v5, "Surface abandoned, skipping..."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v2    # "s":Landroid/view/Surface;
    .end local v3    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_1
    goto :goto_0

    .line 127
    :cond_1
    return v0
.end method

.method private numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 137
    .local v2, "s":Landroid/view/Surface;
    :try_start_0
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->previewType(Landroid/view/Surface;)Z

    move-result v3
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_0
    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string v4, "RequestHolder"

    const-string v5, "Surface abandoned, skipping..."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v2    # "s":Landroid/view/Surface;
    .end local v3    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_1
    goto :goto_0

    .line 144
    :cond_1
    return v0
.end method

.method private previewType(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public build(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 12
    .param p1, "frameNumber"    # J

    .line 155
    new-instance v11, Landroid/hardware/camera2/legacy/RequestHolder;

    iget v1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    iget v2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-boolean v4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    iget v7, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    iget v8, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    const/4 v10, 0x0

    move-object v0, v11

    move-wide v5, p1

    invoke-direct/range {v0 .. v10}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;Landroid/hardware/camera2/legacy/RequestHolder$1;)V

    return-object v11
.end method
