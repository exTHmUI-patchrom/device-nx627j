.class Landroid/hardware/camera2/legacy/RequestThreadManager$2;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 212
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 215
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received jpeg."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->jpegProduced()Landroid/util/Pair;

    move-result-object v0

    .line 217
    .local v0, "captureInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/RequestHolder;Ljava/lang/Long;>;"
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_2

    .line 221
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 222
    .local v1, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 223
    .local v2, "timestamp":J
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 225
    .local v5, "s":Landroid/view/Surface;
    :try_start_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    iget-object v6, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Producing jpeg buffer..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    array-length v6, p1

    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetJpegFooterSize()I

    move-result v7

    add-int/2addr v6, v7

    .line 229
    .local v6, "totalSize":I
    add-int/lit8 v7, v6, 0x3

    and-int/lit8 v6, v7, -0x4

    .line 230
    invoke-static {v5, v2, v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    .line 234
    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    .line 237
    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 238
    .local v7, "dimen":I
    add-int/lit8 v8, v7, 0xf

    and-int/lit8 v7, v8, -0x10

    .line 239
    invoke-static {v5, v7, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 240
    const/16 v8, 0x21

    invoke-static {v5, p1, v7, v7, v8}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v6    # "totalSize":I
    .end local v7    # "dimen":I
    :cond_1
    goto :goto_1

    .line 248
    :catch_0
    move-exception v6

    .line 249
    .local v6, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v7, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Surface abandoned, dropping frame. "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v5    # "s":Landroid/view/Surface;
    .end local v6    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_1
    goto :goto_0

    .line 253
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 254
    return-void

    .line 218
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v2    # "timestamp":J
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dropping jpeg frame."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method
