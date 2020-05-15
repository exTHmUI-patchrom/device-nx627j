.class public Landroid/hardware/camera2/legacy/BurstHolder;
.super Ljava/lang/Object;
.source "BurstHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstHolder"


# instance fields
.field private final mRepeating:Z

.field private final mRequestBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/legacy/RequestHolder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IZ[Landroid/hardware/camera2/CaptureRequest;Ljava/util/Collection;)V
    .locals 14
    .param p1, "requestId"    # I
    .param p2, "repeating"    # Z
    .param p3, "requests"    # [Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .local p4, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "i":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v11, v1, v4

    .line 46
    .local v11, "r":Landroid/hardware/camera2/CaptureRequest;
    iget-object v12, v0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    new-instance v13, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    move-object v5, v13

    move v6, p1

    move v7, v2

    move-object v8, v11

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 45
    .end local v11    # "r":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_0
    move/from16 v3, p2

    iput-boolean v3, v0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    .line 51
    move v4, p1

    iput v4, v0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    .line 52
    return-void
.end method


# virtual methods
.method public getNumberOfRequests()I
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .line 58
    iget v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    return v0
.end method

.method public produceRequestHolders(J)Ljava/util/List;
    .locals 6
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "i":I
    iget-object v2, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    .line 85
    .local v3, "b":Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    int-to-long v4, v1

    add-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->build(J)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .end local v3    # "b":Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    goto :goto_0

    .line 88
    :cond_0
    return-object v0
.end method
