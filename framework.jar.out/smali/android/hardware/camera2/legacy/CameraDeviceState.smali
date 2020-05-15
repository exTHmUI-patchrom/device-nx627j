.class public Landroid/hardware/camera2/legacy/CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final NO_CAPTURE_ERROR:I = -0x1

.field private static final STATE_CAPTURING:I = 0x4

.field private static final STATE_CONFIGURING:I = 0x2

.field private static final STATE_ERROR:I = 0x0

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_UNCONFIGURED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraDeviceState"

.field private static final sStateNames:[Ljava/lang/String;


# instance fields
.field private mCurrentError:I

.field private mCurrentHandler:Landroid/os/Handler;

.field private mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mCurrentState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    const-string v0, "ERROR"

    const-string v1, "UNCONFIGURED"

    const-string v2, "CONFIGURING"

    const-string v3, "IDLE"

    const-string v4, "CAPTURING"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 60
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 61
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 42
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/CameraDeviceState;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 42
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 42
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object v0
.end method

.method private doStateTransition(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 250
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    .line 251
    return-void
.end method

.method private doStateTransition(IJI)V
    .locals 6
    .param p1, "newState"    # I
    .param p2, "timestamp"    # J
    .param p4, "error"    # I

    .line 254
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq p1, v0, :cond_1

    .line 255
    const-string v0, "UNKNOWN"

    .line 256
    .local v0, "stateName":Ljava/lang/String;
    if-ltz p1, :cond_0

    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 257
    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 259
    :cond_0
    const-string v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Legacy camera service transitioning to state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "stateName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x3

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 264
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, p1, :cond_2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$5;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition to unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :pswitch_0
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v2, v0, :cond_3

    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v0, v3, :cond_3

    .line 331
    const-string v0, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call capture while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 333
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 334
    goto/16 :goto_1

    .line 337
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v0, :cond_5

    .line 338
    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    .line 339
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$9;

    invoke-direct {v1, p0, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState$9;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 346
    :cond_4
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$10;

    invoke-direct {v1, p0, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$10;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    :cond_5
    :goto_0
    iput v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 355
    goto/16 :goto_1

    .line 307
    :pswitch_1
    iget v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-ne v5, v0, :cond_6

    .line 308
    goto/16 :goto_1

    .line 311
    :cond_6
    iget v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v5, v2, :cond_7

    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v2, v3, :cond_7

    .line 312
    const-string v0, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call idle while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 314
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 315
    goto/16 :goto_1

    .line 318
    :cond_7
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v0, :cond_8

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_8

    .line 320
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$8;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$8;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_8
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 328
    goto :goto_1

    .line 289
    :pswitch_2
    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v3, v4, :cond_9

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v3, v0, :cond_9

    .line 290
    const-string v0, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call configure while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 292
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 293
    goto :goto_1

    .line 295
    :cond_9
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v0, v2, :cond_a

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v0, :cond_a

    .line 297
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$7;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$7;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    :cond_a
    iput v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 305
    goto :goto_1

    .line 277
    :cond_b
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v0, :cond_c

    .line 279
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$6;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    :cond_c
    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 287
    nop

    .line 359
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    monitor-enter p0

    .line 245
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 246
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 244
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "listener":Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw p1
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    monitor-enter p0

    .line 202
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "request":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local p2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw p1
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "captureError"    # I
    .param p4, "captureErrorArg"    # Ljava/lang/Object;

    monitor-enter p0

    .line 173
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    .line 174
    const-string v0, "CameraDeviceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot receive result while in state: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 176
    invoke-direct {p0, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 177
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    move v3, v4

    nop

    :cond_0
    monitor-exit p0

    return v3

    .line 180
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v0, :cond_3

    .line 181
    if-eq p3, v2, :cond_2

    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$1;

    invoke-direct {v1, p0, p3, p4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$1;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$2;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_3
    :goto_0
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_4

    move v3, v4

    nop

    :cond_4
    monitor-exit p0

    return v3

    .line 172
    .end local p1    # "request":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local p2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p3    # "captureError":I
    .end local p4    # "captureErrorArg":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw p1
.end method

.method public declared-synchronized setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # J
    .param p4, "captureError"    # I

    monitor-enter p0

    .line 147
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 148
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    .line 149
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 146
    .end local p1    # "request":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local p2    # "timestamp":J
    .end local p4    # "captureError":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw p1
.end method

.method public declared-synchronized setConfiguring()Z
    .locals 2

    monitor-enter p0

    .line 111
    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 112
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw v0
.end method

.method public declared-synchronized setError(I)V
    .locals 1
    .param p1, "error"    # I

    monitor-enter p0

    .line 96
    :try_start_0
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "error":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw p1
.end method

.method public declared-synchronized setIdle()Z
    .locals 2

    monitor-enter p0

    .line 126
    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 127
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw v0
.end method

.method public declared-synchronized setRepeatingRequestError(JI)V
    .locals 2
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$3;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "lastFrameNumber":J
    .end local p3    # "repeatingRequestId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw p1
.end method

.method public declared-synchronized setRequestQueueEmpty()V
    .locals 2

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$4;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/hardware/camera2/legacy/CameraDeviceState;
    throw v0
.end method
