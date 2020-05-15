.class public final Landroid/hardware/camera2/TotalCaptureResult;
.super Landroid/hardware/camera2/CaptureResult;
.source "TotalCaptureResult.java"


# instance fields
.field private final mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhysicalCaptureResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V
    .locals 1
    .param p1, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "sequenceId"    # I

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 6
    .param p1, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "parent"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "extras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p5, "sessionId"    # I
    .param p6, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 76
    .local p4, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 78
    if-nez p4, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_0

    .line 81
    :cond_0
    iput-object p4, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 84
    :goto_0
    iput p5, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 87
    array-length v0, p6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p6, v1

    .line 88
    .local v2, "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    new-instance v3, Landroid/hardware/camera2/CaptureResult;

    .line 89
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    invoke-direct {v3, v4, p2, p3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 90
    .local v3, "physicalResult":Landroid/hardware/camera2/CaptureResult;
    iget-object v4, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2    # "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v3    # "physicalResult":Landroid/hardware/camera2/CaptureResult;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public getPartialResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalCameraResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return v0
.end method
