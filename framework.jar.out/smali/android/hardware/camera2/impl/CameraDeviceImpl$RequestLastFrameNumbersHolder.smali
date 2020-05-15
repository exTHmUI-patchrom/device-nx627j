.class Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLastFrameNumbersHolder"
.end annotation


# instance fields
.field private final mLastRegularFrameNumber:J

.field private final mLastReprocessFrameNumber:J

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "lastRegularFrameNumber"    # J

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1563
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1564
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1565
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .locals 11
    .param p2, "requestInfo"    # Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ")V"
        }
    .end annotation

    .line 1521
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    const-wide/16 v0, -0x1

    .line 1523
    .local v0, "lastRegularFrameNumber":J
    const-wide/16 v2, -0x1

    .line 1524
    .local v2, "lastReprocessFrameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v4

    .line 1526
    .local v4, "frameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 1534
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 1534
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 1535
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest;

    .line 1536
    .local v7, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_0

    cmp-long v8, v2, v9

    if-nez v8, :cond_0

    .line 1538
    move-wide v2, v4

    goto :goto_1

    .line 1539
    :cond_0
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-nez v8, :cond_1

    cmp-long v8, v0, v9

    if-nez v8, :cond_1

    .line 1541
    move-wide v0, v4

    .line 1544
    :cond_1
    :goto_1
    cmp-long v8, v2, v9

    if-eqz v8, :cond_2

    cmp-long v8, v0, v9

    if-eqz v8, :cond_2

    .line 1546
    goto :goto_2

    .line 1549
    :cond_2
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 1534
    .end local v7    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1552
    .end local v6    # "i":I
    :cond_3
    :goto_2
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1553
    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1554
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v6

    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1555
    return-void

    .line 1527
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lastFrameNumber: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " should be at least "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for the number of  requests in the list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getLastFrameNumber()J
    .locals 4

    .line 1587
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRegularFrameNumber()J
    .locals 2

    .line 1572
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .locals 2

    .line 1580
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .line 1594
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    return v0
.end method
