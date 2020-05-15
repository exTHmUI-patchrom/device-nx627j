.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    }
.end annotation


# static fields
.field private static final NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private customOpMode:I

.field private final mAppTargetSdkVersion:I

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private final mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

.field private mIdle:Z

.field private mInError:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mIsPrivilegedApp:Z

.field private mNextSessionId:I

.field private mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private mRepeatingRequestId:I

.field private final mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final mTotalPartialCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;I)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p5, "appTargetSdkVersion"    # I

    .line 250
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 82
    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->customOpMode:I

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 88
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 99
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 102
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 104
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 106
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 126
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    .line 129
    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 132
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 137
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 153
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 168
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 183
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 198
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 218
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 233
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 251
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 254
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 256
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 257
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 258
    iput p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    .line 260
    const/16 v2, 0x17

    .line 261
    .local v2, "MAX_TAG_LEN":I
    const-string v3, "CameraDevice-JV-%s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x17

    if-le v4, v5, :cond_0

    .line 263
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 265
    :cond_0
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 268
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 269
    .local v0, "partialCount":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 271
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 275
    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkPrivilegedAppList()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 276
    return-void

    .line 252
    .end local v0    # "partialCount":Ljava/lang/Integer;
    .end local v2    # "MAX_TAG_LEN":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static synthetic access$1700(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$702(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    return p1
.end method

.method static synthetic access$800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 76
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return v0
.end method

.method static synthetic access$802(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    return-void
.end method

.method private checkAndFireSequenceComplete()V
    .locals 20

    .line 1806
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 1807
    .local v2, "completedFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 1808
    .local v4, "completedReprocessFrameNumber":J
    const/4 v6, 0x0

    .line 1809
    .local v6, "isReprocess":Z
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    :goto_0
    move-object v7, v0

    .line 1810
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1811
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    .line 1812
    .local v8, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    const/4 v9, 0x0

    .line 1813
    .local v9, "sequenceCompleted":Z
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v10

    .line 1815
    .local v10, "requestId":I
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1816
    :try_start_0
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1817
    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v12, "Camera closed while checking sequences"

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1844
    :catchall_0
    move-exception v0

    move-wide/from16 v18, v2

    goto :goto_4

    .line 1821
    :cond_0
    :try_start_2
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1822
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1823
    :try_start_3
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 1824
    .local v12, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_1
    if-eqz v12, :cond_2

    .line 1825
    nop

    .line 1826
    :try_start_4
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v13

    .line 1827
    .local v13, "lastRegularFrameNumber":J
    nop

    .line 1828
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1831
    .local v15, "lastReprocessFrameNumber":J
    cmp-long v17, v13, v2

    if-gtz v17, :cond_2

    cmp-long v17, v15, v4

    if-gtz v17, :cond_2

    .line 1833
    const/4 v9, 0x1

    .line 1834
    move-wide/from16 v18, v2

    :try_start_5
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .end local v2    # "completedFrameNumber":J
    .local v18, "completedFrameNumber":J
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .end local v0    # "index":I
    .end local v13    # "lastRegularFrameNumber":J
    .end local v15    # "lastReprocessFrameNumber":J
    goto :goto_2

    .line 1844
    .end local v18    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_2
    move-wide/from16 v18, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v18    # "completedFrameNumber":J
    :goto_2
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v2, v12

    .line 1848
    .end local v12    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .local v2, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    if-eqz v2, :cond_3

    if-eqz v9, :cond_4

    .line 1849
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 1853
    :cond_4
    if-eqz v9, :cond_5

    .line 1854
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    invoke-direct {v0, v1, v10, v2, v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V

    move-object v3, v0

    .line 1871
    .local v3, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1873
    .local v11, "ident":J
    :try_start_6
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1875
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1876
    goto :goto_3

    .line 1875
    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1878
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v3    # "resultDispatch":Ljava/lang/Runnable;
    .end local v8    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .end local v9    # "sequenceCompleted":Z
    .end local v10    # "requestId":I
    .end local v11    # "ident":J
    :cond_5
    :goto_3
    nop

    .line 1809
    move-object v0, v7

    move-wide/from16 v2, v18

    goto/16 :goto_0

    .line 1844
    .end local v18    # "completedFrameNumber":J
    .local v2, "completedFrameNumber":J
    .restart local v8    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .restart local v9    # "sequenceCompleted":Z
    .restart local v10    # "requestId":I
    :catchall_2
    move-exception v0

    move-wide/from16 v18, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v18    # "completedFrameNumber":J
    :goto_4
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1879
    .end local v8    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .end local v9    # "sequenceCompleted":Z
    .end local v10    # "requestId":I
    .end local v18    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_6
    move-wide/from16 v18, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v18    # "completedFrameNumber":J
    return-void
.end method

.method public static checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2408
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private checkEarlyTriggerSequenceComplete(IJ)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    .line 954
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 956
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 957
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 958
    .local v1, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz v1, :cond_1

    .line 959
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 968
    :cond_1
    if-eqz v1, :cond_2

    .line 974
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v2, p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    .line 989
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 991
    .local v3, "ident":J
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 994
    nop

    .line 995
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    goto :goto_1

    .line 993
    .restart local v2    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 996
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "did not register callback to request %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 996
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .end local v0    # "index":I
    .end local v1    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_1
    goto :goto_2

    .line 1003
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    invoke-direct {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(IJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 1010
    :goto_2
    return-void
.end method

.method static checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 2386
    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 2395
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2420
    if-nez p0, :cond_1

    .line 2421
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2422
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 2426
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v1

    .end local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 2423
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2428
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    return-object p0
.end method

.method static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .line 2437
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 2438
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 2440
    :cond_0
    return-object p0
.end method

.method private checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2444
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_1

    .line 2447
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-nez v0, :cond_0

    .line 2451
    return-void

    .line 2448
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2445
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 10
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 1227
    if-eqz p1, :cond_7

    .line 1228
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1235
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "ignore input format/size check for white listed app"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void

    .line 1240
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    .line 1241
    .local v1, "inputFormats":[I
    const/4 v2, 0x0

    .line 1242
    .local v2, "validFormat":Z
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .line 1242
    .end local v2    # "validFormat":Z
    .local v5, "validFormat":Z
    :goto_0
    if-ge v2, v3, :cond_2

    aget v6, v1, v2

    .line 1243
    .local v6, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1244
    const/4 v5, 0x1

    .line 1242
    .end local v6    # "format":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1248
    :cond_2
    if-eqz v5, :cond_6

    .line 1253
    const/4 v2, 0x0

    .line 1254
    .local v2, "validSize":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 1255
    .local v3, "inputSizes":[Landroid/util/Size;
    array-length v6, v3

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v7, v3, v4

    .line 1256
    .local v7, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1257
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1258
    const/4 v2, 0x1

    .line 1255
    .end local v7    # "s":Landroid/util/Size;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1262
    :cond_4
    if-eqz v2, :cond_5

    .line 1262
    .end local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v1    # "inputFormats":[I
    .end local v2    # "validSize":Z
    .end local v3    # "inputSizes":[Landroid/util/Size;
    .end local v5    # "validFormat":Z
    goto :goto_2

    .line 1263
    .restart local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v1    # "inputFormats":[I
    .restart local v2    # "validSize":Z
    .restart local v3    # "inputSizes":[Landroid/util/Size;
    .restart local v5    # "validFormat":Z
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1249
    .end local v2    # "validSize":Z
    .end local v3    # "inputSizes":[Landroid/util/Size;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1267
    .end local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v1    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    :cond_7
    :goto_2
    return-void
.end method

.method private checkPrivilegedAppList()Z
    .locals 6

    .line 1206
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "persist.vendor.camera.privapp.list"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "packageList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1210
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1211
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1212
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1213
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1214
    const/4 v3, 0x1

    return v3

    .line 1216
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1219
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V
    .locals 23
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "operatingMode"    # I
    .param p6, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p5

    .line 648
    iget-object v12, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 653
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 655
    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v13, v1

    .line 657
    .local v13, "isConstrainedHighSpeed":Z
    if-eqz v13, :cond_2

    if-nez v10, :cond_1

    goto :goto_1

    .line 658
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_2
    :goto_1
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v1, :cond_3

    .line 665
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_3
    const/4 v1, 0x1

    .line 670
    .local v1, "configureSuccess":Z
    const/4 v2, 0x0

    .line 671
    .local v2, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v3, 0x0

    move-object v4, v3

    .line 674
    .local v4, "input":Landroid/view/Surface;
    move-object/from16 v14, p2

    move-object/from16 v15, p6

    :try_start_1
    invoke-virtual {v9, v10, v14, v11, v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;)Z

    move-result v5

    move v1, v5

    .line 676
    if-ne v1, v0, :cond_4

    if-eqz v10, :cond_4

    .line 677
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v0

    .line 686
    :cond_4
    nop

    .line 689
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object v0, v4

    goto :goto_2

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v1, 0x0

    .line 681
    move-object v2, v0

    .line 682
    const/4 v0, 0x0

    .line 689
    .end local v4    # "input":Landroid/view/Surface;
    .local v0, "input":Landroid/view/Surface;
    move/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "configureSuccess":Z
    .end local v2    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .local v16, "configureSuccess":Z
    .local v17, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    const/16 v18, 0x0

    .line 690
    .local v18, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz v13, :cond_6

    .line 691
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v1

    .line 692
    .local v8, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 693
    .local v2, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v2    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_3

    .line 695
    :cond_5
    nop

    .line 696
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object v7, v1

    .line 697
    .local v7, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v8, v3, v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 699
    new-instance v19, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    iget v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v6, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v1, v19

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v20, v5

    move-object v5, v9

    move-object/from16 v21, v7

    move/from16 v7, v16

    .end local v7    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v21, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    move-object/from16 v22, v8

    move-object/from16 v8, v20

    .end local v8    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v22, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    move-object/from16 v1, v19

    .line 702
    .end local v18    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v21    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v22    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v1, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_4

    .line 703
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v18    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_6
    new-instance v19, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iget v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v7, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, v19

    move-object v3, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v9

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    move-object/from16 v1, v19

    .line 708
    .end local v18    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_4
    iput-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 710
    if-nez v17, :cond_7

    .line 714
    iget-object v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    iput-object v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 715
    .end local v0    # "input":Landroid/view/Surface;
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v13    # "isConstrainedHighSpeed":Z
    .end local v16    # "configureSuccess":Z
    .end local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    monitor-exit v12

    .line 716
    return-void

    .line 711
    .restart local v0    # "input":Landroid/view/Surface;
    .restart local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v13    # "isConstrainedHighSpeed":Z
    .restart local v16    # "configureSuccess":Z
    .restart local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :cond_7
    throw v17

    .line 715
    .end local v0    # "input":Landroid/view/Surface;
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v13    # "isConstrainedHighSpeed":Z
    .end local v16    # "configureSuccess":Z
    .end local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v15, p6

    :goto_5
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 2459
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    .line 2455
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "newValue"    # Z

    .line 728
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 729
    .local v0, "enableZsl":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 731
    return-void

    .line 734
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 735
    return-void
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)I
    .locals 18
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1017
    move/from16 v10, p4

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 1021
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v11, "executor":Ljava/util/concurrent/Executor;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1022
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1027
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 1028
    .local v4, "surface":Landroid/view/Surface;
    if-eqz v4, :cond_3

    .line 1032
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1033
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1034
    .local v6, "configuration":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->isForPhysicalCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1035
    invoke-virtual {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1036
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v7

    if-nez v7, :cond_0

    .end local v6    # "configuration":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_3

    .line 1037
    .restart local v6    # "configuration":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Reprocess request on physical stream is not allowed"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    .end local v6    # "configuration":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1042
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v5    # "i":I
    :cond_2
    goto :goto_1

    .line 1029
    .restart local v4    # "surface":Landroid/view/Surface;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null Surface targets are not allowed"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "surface":Landroid/view/Surface;
    :cond_4
    goto :goto_0

    .line 1023
    .restart local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Each request must have at least one Surface target"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_6
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1046
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1047
    if-eqz v10, :cond_7

    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1053
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/CaptureRequest;

    .line 1055
    .local v0, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 1056
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V

    .line 1055
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1059
    :cond_8
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v0, v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v2

    move-object v14, v2

    .line 1064
    .local v14, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 1065
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V

    .line 1064
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1068
    :cond_9
    if-eqz v9, :cond_a

    .line 1069
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v7

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    iget v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v16, v2, -0x1

    move-object v2, v6

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    move-object v12, v6

    move v6, v10

    move-object/from16 v17, v0

    move v0, v7

    move/from16 v7, v16

    .end local v0    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .local v17, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {v15, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1078
    .end local v17    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .restart local v0    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    :cond_a
    move-object/from16 v17, v0

    .end local v0    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .restart local v17    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    :goto_6
    if-eqz v10, :cond_c

    .line 1079
    iget v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    .line 1080
    iget v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1081
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v2

    .line 1080
    invoke-direct {v1, v0, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .line 1083
    :cond_b
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v0

    iput v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    goto :goto_7

    .line 1085
    :cond_c
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    invoke-direct {v2, v8, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    :goto_7
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v0, :cond_d

    .line 1090
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1092
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1094
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v0

    monitor-exit v13

    return v0

    .line 1095
    .end local v14    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    .end local v17    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitUntilIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1143
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1147
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V

    .line 1148
    monitor-exit v0

    .line 1149
    return-void

    .line 1144
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active repeating request ongoing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 2469
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " died unexpectedly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_0

    .line 2472
    return-void

    .line 2475
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2476
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2485
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2487
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2490
    nop

    .line 2491
    return-void

    .line 2489
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 931
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 932
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 1174
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    monitor-exit v0

    return-void

    .line 1179
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    .line 1181
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1187
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_3

    .line 1188
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1191
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 1192
    monitor-exit v0

    .line 1193
    return-void

    .line 1192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public configureOutputs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 375
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v0, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 377
    .local v2, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v2    # "s":Landroid/view/Surface;
    goto :goto_0

    .line 379
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;)Z

    .line 382
    return-void
.end method

.method public configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;)Z
    .locals 11
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 409
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p2, :cond_0

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 412
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot configure an input stream without any output streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "success":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 424
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 426
    .local v2, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v3, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 430
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 431
    .local v6, "streamId":I
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 433
    .local v7, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {p2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 439
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .end local v6    # "streamId":I
    .end local v7    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_3

    .line 437
    .restart local v6    # "streamId":I
    .restart local v7    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v6    # "streamId":I
    .end local v7    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 443
    .end local v5    # "i":I
    :cond_5
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 444
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 449
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    .line 452
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v5}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/InputConfiguration;

    .line 453
    .local v5, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    const/4 v6, 0x0

    if-eq p1, v5, :cond_8

    if-eqz p1, :cond_6

    .line 454
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 455
    :cond_6
    if-eqz v5, :cond_7

    .line 456
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v8}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 457
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v8, -0x1

    .line 458
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 460
    :cond_7
    if-eqz p1, :cond_8

    .line 461
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v8

    .line 462
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v10

    .line 461
    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(III)I

    move-result v7

    .line 463
    .local v7, "streamId":I
    new-instance v8, Ljava/util/AbstractMap$SimpleEntry;

    .line 464
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 469
    .end local v7    # "streamId":I
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 470
    .local v8, "streamId":Ljava/lang/Integer;
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 471
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->delete(I)V

    .line 472
    .end local v8    # "streamId":Ljava/lang/Integer;
    goto :goto_4

    .line 475
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 476
    .local v8, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 477
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v9

    .line 478
    .local v9, "streamId":I
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    .end local v8    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v9    # "streamId":I
    :cond_a
    goto :goto_5

    .line 481
    :cond_b
    iget v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->customOpMode:I

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr p3, v7

    .line 483
    if-eqz p4, :cond_c

    .line 484
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-virtual {v6, p3, v7}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V

    goto :goto_6

    .line 486
    :cond_c
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v7, p3, v6}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    :goto_6
    const/4 v0, 0x1

    .line 502
    .end local v5    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    if-eqz v0, :cond_d

    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 503
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 506
    :cond_d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 508
    nop

    .line 509
    .end local v2    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v3    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    return v0

    .line 502
    .restart local v2    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v3    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    goto :goto_9

    .line 495
    :catch_0
    move-exception v4

    .line 496
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    .line 497
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 500
    :cond_e
    throw v4

    .line 490
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v5

    .line 493
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stream configuration failed due to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    nop

    .line 502
    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 503
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 506
    :cond_f
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_8
    monitor-exit v1

    .line 494
    return v4

    .line 502
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9
    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 503
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 506
    :cond_10
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_a
    throw v4

    .line 509
    .end local v2    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v3    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 9
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 775
    const/4 v1, 0x0

    .line 777
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v1, v2

    .line 781
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 783
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    .line 786
    :cond_1
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 788
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 790
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v0

    return-object v2

    .line 791
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 9
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 741
    .local p2, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 744
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 745
    .local v2, "physicalId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 748
    .end local v2    # "physicalId":Ljava/lang/String;
    goto :goto_0

    .line 746
    .restart local v2    # "physicalId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Physical id matches the logical id!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    .end local v2    # "physicalId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 752
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v1, v2

    .line 756
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 758
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    .line 761
    :cond_3
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 763
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, v1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 765
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v0

    return-object v2

    .line 766
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 628
    if-eqz p1, :cond_2

    .line 632
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v7

    .line 633
    .local v7, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz v7, :cond_1

    .line 636
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    .line 640
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v5

    .line 641
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionParameters()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 639
    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 642
    return-void

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    .end local v7    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid session configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 518
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 520
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 522
    :cond_0
    const/4 v3, 0x0

    .line 523
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 522
    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 525
    return-void
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 7
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 537
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 539
    .local v2, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 541
    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 597
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 603
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 605
    :cond_0
    const/4 v3, 0x0

    .line 606
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 605
    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 609
    return-void

    .line 598
    .end local v0    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 617
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v0, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 619
    .local v2, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v2    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 621
    :cond_0
    nop

    .line 622
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v7, 0x0

    .line 621
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 623
    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 8
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 800
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 801
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 803
    .local v2, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    .line 804
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    monitor-exit v0

    .line 803
    return-object v7

    .line 805
    .end local v2    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 551
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_1

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 557
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 559
    :cond_0
    nop

    .line 560
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 559
    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 562
    return-void

    .line 552
    .end local v0    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 573
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_2

    .line 578
    if-eqz p2, :cond_1

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v0, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 586
    .local v2, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v2    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 588
    :cond_0
    nop

    .line 589
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 588
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 591
    return-void

    .line 579
    .end local v0    # "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1198
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1202
    nop

    .line 1203
    return-void

    .line 1201
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public finalizeOutputConfigs(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 889
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 893
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 895
    .local v2, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v3, -0x1

    .line 896
    .local v3, "streamId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 899
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 900
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 901
    goto :goto_2

    .line 896
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 904
    .end local v4    # "i":I
    :cond_1
    :goto_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 909
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 913
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v3, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 914
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 915
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    goto :goto_0

    .line 910
    .restart local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v3    # "streamId":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The final config for stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " must have at least 1 surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 905
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Deferred config is not part of this session"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    :cond_4
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 890
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deferred config is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1155
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1159
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v1, :cond_0

    .line 1160
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1161
    monitor-exit v0

    return-void

    .line 1164
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v1

    .line 1165
    .local v1, "lastFrameNumber":J
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1166
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    invoke-direct {p0, v3, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .line 1167
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1169
    .end local v1    # "lastFrameNumber":J
    :cond_1
    monitor-exit v0

    .line 1170
    return-void

    .line 1169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public isPrivilegedApp()Z
    .locals 1

    .line 1223
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    return v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 4
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 829
    if-eqz p2, :cond_4

    .line 830
    if-lez p1, :cond_3

    .line 833
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    const/4 v1, -0x1

    .line 835
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 836
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 837
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 838
    goto :goto_1

    .line 835
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 845
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V

    .line 846
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 847
    return-void

    .line 842
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    .end local v1    # "streamId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 830
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxCount given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 809
    if-eqz p1, :cond_3

    .line 811
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    const/4 v1, -0x1

    .line 813
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 814
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    .line 815
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 816
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move v1, v4

    .line 817
    goto :goto_1

    .line 813
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 824
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V

    .line 825
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 826
    return-void

    .line 821
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 825
    .end local v1    # "streamId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 809
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 6
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 295
    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 297
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .local v1, "remoteDeviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 302
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x2

    const-string v5, "The camera device has encountered a serious error"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 311
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 312
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 313
    .end local v1    # "remoteDeviceBinder":Landroid/os/IBinder;
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .locals 7
    .param p1, "failure"    # Landroid/os/ServiceSpecificException;

    .line 323
    const/4 v0, 0x4

    .line 324
    .local v0, "failureCode":I
    const/4 v1, 0x1

    .line 326
    .local v1, "failureIsError":Z
    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 343
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure in opening camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :pswitch_0
    const/4 v0, 0x2

    .line 332
    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v0, 0x1

    .line 329
    goto :goto_0

    .line 334
    :pswitch_2
    const/4 v0, 0x3

    .line 335
    goto :goto_0

    .line 340
    :cond_0
    const/4 v0, 0x4

    .line 341
    goto :goto_0

    .line 337
    :cond_1
    const/4 v1, 0x0

    .line 338
    nop

    .line 347
    :goto_0
    move v2, v0

    .line 348
    .local v2, "code":I
    move v3, v1

    .line 349
    .local v3, "isError":Z
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 350
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 351
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 361
    monitor-exit v4

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1107
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .locals 2
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 722
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 724
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVendorStreamConfigMode(I)V
    .locals 0
    .param p1, "fpsrange"    # I

    .line 365
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->customOpMode:I

    .line 366
    return-void
.end method

.method public stopRepeating()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1117
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1119
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1120
    .local v1, "requestId":I
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    .local v2, "lastFrameNumber":J
    nop

    .line 1130
    nop

    .line 1133
    :try_start_2
    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .end local v1    # "requestId":I
    .end local v2    # "lastFrameNumber":J
    goto :goto_0

    .line 1125
    .restart local v1    # "requestId":I
    :catch_0
    move-exception v2

    .line 1130
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    monitor-exit v0

    return-void

    .line 1135
    .end local v1    # "requestId":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1136
    return-void

    .line 1135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 869
    if-eqz p1, :cond_3

    .line 871
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    const/4 v1, -0x1

    .line 873
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 874
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 875
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 876
    goto :goto_1

    .line 873
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 879
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 883
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V

    .line 884
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 885
    return-void

    .line 880
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 884
    .end local v1    # "streamId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 869
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 5
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    const/4 v1, -0x1

    .line 853
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 854
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 855
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 856
    goto :goto_1

    .line 853
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 859
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 863
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 864
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 865
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 866
    return-void

    .line 860
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid output configuration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    .end local v1    # "streamId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
