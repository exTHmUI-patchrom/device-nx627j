.class Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
.super Ljava/lang/Object;
.source "CaptureCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CaptureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mFailedJpeg:Z

.field private mFailedPreview:Z

.field private mHasStarted:Z

.field private final mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mPreviewCompleted:Z

.field private mReceivedFlags:I

.field private final mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mTimestamp:J

.field public final needsJpeg:Z

.field public final needsPreview:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/CaptureCollector;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 2
    .param p2, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p3, "legacyHolder"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 56
    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 57
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 58
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 59
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 60
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    .line 61
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 64
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 65
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 66
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 67
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 68
    return-void
.end method

.method static synthetic access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 49
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 49
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    .locals 4
    .param p1, "captureHolder"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, -0x1

    .line 252
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 260
    instance-of v0, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 79
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJpegCompleted()Z
    .locals 2

    .line 75
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewCompleted()Z
    .locals 2

    .line 71
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    const/16 v1, 0xc

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setJpegFailed()V
    .locals 2

    .line 178
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 183
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 184
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 185
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 186
    return-void

    .line 179
    :cond_1
    :goto_0
    return-void
.end method

.method public setJpegProduced()V
    .locals 2

    .line 161
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 171
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 172
    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegProduced called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegProduced called for capture with no jpeg targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJpegTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .line 133
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 144
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 145
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 148
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_1

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 150
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 155
    return-void

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegTimestamp called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setJpegTimestamp called for capture with no jpeg targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviewFailed()V
    .locals 1

    .line 239
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 244
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 245
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 246
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 247
    return-void

    .line 240
    :cond_1
    :goto_0
    return-void
.end method

.method public setPreviewProduced()V
    .locals 2

    .line 222
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 232
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 233
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewProduced called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewProduced called for capture with no preview targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviewTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .line 192
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 203
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 204
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 207
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_1

    .line 208
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_1

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 210
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 216
    return-void

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewTimestamp called on already completed request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPreviewTimestamp called for capture with no preview targets."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryComplete()V
    .locals 7

    .line 83
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$000(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 85
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    if-nez v0, :cond_6

    .line 89
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    if-eqz v0, :cond_5

    .line 90
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 93
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    goto :goto_3

    .line 98
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 100
    .local v2, "targetSurface":Landroid/view/Surface;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/legacy/RequestHolder;->jpegType(Landroid/view/Surface;)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 101
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3, v6, v5, v4, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_3
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    if-eqz v3, :cond_4

    .line 111
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3, v6, v5, v4, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_4
    :goto_1
    goto :goto_2

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string v4, "CaptureCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception when querying Surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v2    # "targetSurface":Landroid/view/Surface;
    .end local v3    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_2
    goto :goto_0

    .line 124
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0, p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->access$200(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    .line 125
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    .line 127
    :cond_6
    return-void
.end method
