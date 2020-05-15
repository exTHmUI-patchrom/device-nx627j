.class public Landroid/hardware/camera2/legacy/RequestThreadManager;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final DEBUG:Z = false

.field private static final JPEG_FRAME_TIMEOUT:I = 0xfa0

.field private static final MAX_IN_FLIGHT_REQUESTS:I = 0x2

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_CONFIGURE_OUTPUTS:I = 0x1

.field private static final MSG_SUBMIT_CAPTURE_REQUEST:I = 0x2

.field private static final PREVIEW_FRAME_TIMEOUT:I = 0x3e8

.field private static final REQUEST_COMPLETE_TIMEOUT:I = 0xfa0

.field private static final USE_BLOB_FORMAT_OVERRIDE:Z = true

.field private static final VERBOSE:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbackOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mDummySurface:Landroid/view/Surface;

.field private mDummyTexture:Landroid/graphics/SurfaceTexture;

.field private final mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private final mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

.field private final mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field private mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

.field private final mIdleLock:Ljava/lang/Object;

.field private mIntermediateBufferSize:Landroid/util/Size;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final mPreviewOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewRunning:Z

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private final mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReceivedJpeg:Landroid/os/ConditionVariable;

.field private final mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mRequestHandlerCb:Landroid/os/Handler$Callback;

.field private final mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

.field private final mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "deviceState"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    .line 99
    new-instance v1, Landroid/hardware/camera2/legacy/RequestQueue;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestQueue;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    .line 105
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string v2, "Incoming Preview"

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 106
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string v2, "Incoming Requests"

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 210
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;

    .line 212
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$2;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 257
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$3;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 264
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$4;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 681
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$5;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    .line 1003
    const-string v1, "camera must not be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    .line 1004
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    .line 1005
    const-string v1, "characteristics must not be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1006
    const-string v1, "RequestThread-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "name":Ljava/lang/String;
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    .line 1008
    const-string v1, "deviceState must not be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 1009
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 1010
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 1011
    new-instance v1, Landroid/hardware/camera2/legacy/CaptureCollector;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/legacy/CaptureCollector;-><init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 1012
    new-instance v1, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    invoke-direct {v1, v0, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 1013
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1014
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 60
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .line 60
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .line 60
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 60
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    return-object p1
.end method

.method static synthetic access$600(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configureOutputs(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    return-object v0
.end method

.method private calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 12
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 580
    .local p1, "callbackOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p2, "callbackSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v0, "configuredJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 585
    .local v1, "sizeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 586
    .local v3, "callbackSurface":Landroid/view/Surface;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 587
    .local v4, "jpegSize":Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 588
    goto :goto_0

    .line 591
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v3    # "callbackSurface":Landroid/view/Surface;
    .end local v4    # "jpegSize":Landroid/util/Size;
    goto :goto_0

    .line 593
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 601
    const/4 v2, -0x1

    .line 602
    .local v2, "maxConfiguredJpegWidth":I
    const/4 v3, -0x1

    .line 603
    .local v3, "maxConfiguredJpegHeight":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 604
    .local v5, "jpegSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 605
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    move v2, v6

    .line 606
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 607
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    move v3, v6

    .line 608
    .end local v5    # "jpegSize":Landroid/util/Size;
    goto :goto_1

    .line 609
    :cond_4
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 611
    .local v4, "smallestBoundJpegSize":Landroid/util/Size;
    nop

    .line 612
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 611
    invoke-static {v5}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 618
    .local v5, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v6, "candidateSupportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 620
    .local v8, "supportedJpegSize":Landroid/util/Size;
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-lt v9, v2, :cond_5

    .line 621
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-lt v9, v3, :cond_5

    .line 622
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    .end local v8    # "supportedJpegSize":Landroid/util/Size;
    :cond_5
    goto :goto_4

    .line 626
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 632
    new-instance v7, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v7}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 635
    .local v7, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-virtual {v7, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 636
    iget-object v8, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v9, "configureOutputs - Will need to crop picture %s into smallest bound size %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 637
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 636
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_7
    return-object v7

    .line 627
    .end local v7    # "smallestSupportedJpegSize":Landroid/util/Size;
    :cond_8
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find any supported JPEG sizes large enough to fit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 646
    .end local v2    # "maxConfiguredJpegWidth":I
    .end local v3    # "maxConfiguredJpegHeight":I
    .end local v4    # "smallestBoundJpegSize":Landroid/util/Size;
    .end local v5    # "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "candidateSupportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_9
    const/4 v2, 0x0

    return-object v2

    .line 581
    .end local v0    # "configuredJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v1    # "sizeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input collections must be same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 4
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .line 650
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 651
    .local v0, "aAspect":F
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 653
    .local v1, "bAspect":F
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private configureOutputs(Ljava/util/Collection;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .local p1, "outputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    move-object/from16 v1, p0

    .line 343
    const/4 v2, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    .line 349
    nop

    .line 357
    const/4 v3, 0x0

    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v4, "Received device exception in configure call: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 364
    return-void

    .line 358
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to clear prior SurfaceTexture, may cause GL deadlock: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 367
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    .line 369
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->ignoreNewFrames()V

    .line 370
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilIdle()V

    .line 372
    :cond_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V

    .line 374
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object v5, v0

    .line 376
    .local v5, "s":Landroid/view/Surface;
    :try_start_2
    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->disconnectSurface(Landroid/view/Surface;)V
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 379
    goto :goto_2

    .line 377
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 378
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v7, "Surface abandoned, skipping..."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v5    # "s":Landroid/view/Surface;
    :goto_2
    goto :goto_1

    .line 381
    :cond_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iput-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 387
    .local v4, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 389
    .local v5, "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 390
    .local v6, "facing":I
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 391
    .local v7, "orientation":I
    if-eqz p1, :cond_3

    .line 392
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/Pair;

    .line 393
    .local v10, "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/view/Surface;

    .line 394
    .local v11, "s":Landroid/view/Surface;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    move-object v12, v0

    .line 396
    .local v12, "outSize":Landroid/util/Size;
    :try_start_3
    invoke-static {v11}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 397
    .local v0, "format":I
    invoke-static {v11, v6, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceOrientation(Landroid/view/Surface;II)V

    .line 398
    const/16 v13, 0x21

    if-eq v0, v13, :cond_2

    .line 414
    invoke-static {v11, v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setScalingMode(Landroid/view/Surface;I)V

    .line 416
    iget-object v13, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "format":I
    goto :goto_4

    .line 402
    .restart local v0    # "format":I
    :cond_2
    invoke-static {v11, v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    .line 405
    iget-object v13, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    invoke-static {v11}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v13, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static {v11}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->connectSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 412
    nop

    .line 422
    .end local v0    # "format":I
    :goto_4
    goto :goto_5

    .line 420
    :catch_3
    move-exception v0

    .line 421
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v13, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v14, "Surface abandoned, skipping..."

    invoke-static {v13, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v10    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v11    # "s":Landroid/view/Surface;
    .end local v12    # "outSize":Landroid/util/Size;
    :goto_5
    goto :goto_3

    .line 426
    :cond_3
    :try_start_4
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 432
    nop

    .line 434
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v9

    .line 435
    .local v9, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-direct {v1, v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v10

    .line 441
    .local v10, "bestRange":[I
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    const/4 v11, 0x0

    aget v11, v10, v11

    aget v12, v10, v2

    invoke-virtual {v0, v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 444
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-direct {v1, v0, v5, v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v11

    .line 447
    .local v11, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 449
    invoke-static {v4}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    .line 452
    .local v0, "largestOutput":Landroid/util/Size;
    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v3

    .line 454
    .local v3, "largestJpegDimen":Landroid/util/Size;
    if-eqz v11, :cond_4

    .line 455
    move-object v12, v11

    goto :goto_6

    :cond_4
    move-object v12, v3

    .line 457
    .local v12, "chosenJpegDimen":Landroid/util/Size;
    :goto_6
    iget-object v13, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    .line 458
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 457
    invoke-static {v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 463
    .local v13, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    move-object/from16 v16, v3

    int-to-long v2, v2

    .end local v3    # "largestJpegDimen":Landroid/util/Size;
    .local v16, "largestJpegDimen":Landroid/util/Size;
    mul-long/2addr v14, v2

    .line 464
    .local v14, "largestOutputArea":J
    invoke-static {v13}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    move-result-object v2

    .line 465
    .local v2, "bestPreviewDimen":Landroid/util/Size;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/util/Size;

    .line 466
    .local v0, "s":Landroid/util/Size;
    .local v18, "largestOutput":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v17

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v19

    move-object/from16 v20, v3

    mul-int v3, v17, v19

    move-object/from16 v21, v9

    int-to-long v8, v3

    .line 467
    .end local v9    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local v8, "currArea":J
    .local v21, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v17

    mul-int v3, v3, v17

    move-object/from16 v22, v4

    int-to-long v3, v3

    .line 468
    .end local v4    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v3, "bestArea":J
    .local v22, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v12, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v17

    if-eqz v17, :cond_5

    cmp-long v17, v8, v3

    if-gez v17, :cond_5

    cmp-long v17, v8, v14

    if-ltz v17, :cond_5

    .line 470
    nop

    .line 472
    .end local v2    # "bestPreviewDimen":Landroid/util/Size;
    .end local v3    # "bestArea":J
    .end local v8    # "currArea":J
    .local v0, "bestPreviewDimen":Landroid/util/Size;
    move-object v2, v0

    .line 465
    .end local v0    # "bestPreviewDimen":Landroid/util/Size;
    .restart local v2    # "bestPreviewDimen":Landroid/util/Size;
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v3, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v22

    goto :goto_7

    .line 474
    .end local v18    # "largestOutput":Landroid/util/Size;
    .end local v21    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v22    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v0, "largestOutput":Landroid/util/Size;
    .restart local v4    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v9    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_6
    move-object/from16 v18, v0

    move-object/from16 v22, v4

    move-object/from16 v21, v9

    .end local v0    # "largestOutput":Landroid/util/Size;
    .end local v4    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v9    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v18    # "largestOutput":Landroid/util/Size;
    .restart local v21    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v22    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iput-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    .line 475
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    .line 476
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 475
    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 482
    .end local v2    # "bestPreviewDimen":Landroid/util/Size;
    .end local v12    # "chosenJpegDimen":Landroid/util/Size;
    .end local v13    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v14    # "largestOutputArea":J
    .end local v16    # "largestJpegDimen":Landroid/util/Size;
    .end local v18    # "largestOutput":Landroid/util/Size;
    goto :goto_8

    .line 483
    .end local v21    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v22    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v4    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v9    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v21, v9

    .end local v4    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v9    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v21    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v22    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iput-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    .line 489
    :goto_8
    if-eqz v11, :cond_8

    .line 495
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureOutputs - set take picture size to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    .line 497
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 496
    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 501
    :cond_8
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    if-nez v0, :cond_9

    .line 502
    new-instance v0, Landroid/hardware/camera2/legacy/GLThreadManager;

    iget v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {v0, v2, v6, v3}, Landroid/hardware/camera2/legacy/GLThreadManager;-><init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 503
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->start()V

    .line 505
    :cond_9
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 507
    .local v2, "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    move-object/from16 v3, v22

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 508
    .end local v22    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v3, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v4, "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 509
    .local v8, "p":Landroid/view/Surface;
    new-instance v9, Landroid/util/Pair;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    invoke-direct {v9, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v8    # "p":Landroid/view/Surface;
    goto :goto_9

    .line 511
    :cond_a
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-virtual {v0, v2, v8}, Landroid/hardware/camera2/legacy/GLThreadManager;->setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 513
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object v9, v0

    .line 515
    .local v9, "p":Landroid/view/Surface;
    :try_start_5
    invoke-static {v9, v6, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceOrientation(Landroid/view/Surface;II)V
    :try_end_5
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 518
    goto :goto_b

    .line 516
    :catch_4
    move-exception v0

    move-object v12, v0

    .line 517
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v12, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v13, "Surface abandoned, skipping setSurfaceOrientation()"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v9    # "p":Landroid/view/Surface;
    :goto_b
    goto :goto_a

    .line 521
    :cond_b
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->allowNewFrames()V

    .line 522
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 523
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_c

    .line 524
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v8}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 528
    :cond_c
    :try_start_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 534
    goto :goto_c

    .line 529
    :catch_5
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v9, "Received device exception while configuring: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 535
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_c
    return-void

    .line 427
    .end local v2    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    .end local v3    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v10    # "bestRange":[I
    .end local v11    # "smallestSupportedJpegSize":Landroid/util/Size;
    .end local v21    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local v4, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_6
    move-exception v0

    move-object v3, v4

    .line 428
    .end local v4    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v4, "Received device exception: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 431
    return-void

    .line 344
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v5    # "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "facing":I
    .end local v7    # "orientation":I
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 345
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v3, "Received device exception in configure call: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 348
    return-void
.end method

.method private createDummySurface()V
    .locals 3

    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummySurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 183
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummySurface:Landroid/view/Surface;

    .line 185
    :cond_1
    return-void
.end method

.method private doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .line 311
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 313
    return-void
.end method

.method private doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->createDummySurface()V

    .line 303
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 304
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->startPreview()V

    .line 306
    :cond_0
    return-void
.end method

.method private doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-eqz v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    .line 330
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 331
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 333
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->startPreview()V

    .line 334
    return-void

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preview capture called with no preview surfaces configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 658
    .local p1, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v1, "No supported frame rates returned!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v0, 0x0

    return-object v0

    .line 663
    :cond_0
    const/4 v0, 0x0

    .line 664
    .local v0, "bestMin":I
    const/4 v1, 0x0

    .line 665
    .local v1, "bestMax":I
    const/4 v2, 0x0

    .line 666
    .local v2, "bestIndex":I
    const/4 v3, 0x0

    .line 667
    .local v3, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 668
    .local v5, "rate":[I
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 669
    .local v6, "minFps":I
    const/4 v7, 0x1

    aget v7, v5, v7

    .line 670
    .local v7, "maxFps":I
    if-gt v7, v1, :cond_1

    if-ne v7, v1, :cond_2

    if-le v6, v0, :cond_2

    .line 671
    :cond_1
    move v0, v6

    .line 672
    move v1, v7

    .line 673
    move v2, v3

    .line 675
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 676
    .end local v5    # "rate":[I
    .end local v6    # "minFps":I
    .end local v7    # "maxFps":I
    goto :goto_0

    .line 678
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    return-object v4
.end method

.method private resetJpegSurfaceFormats(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    .line 539
    return-void

    .line 541
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 542
    .local v1, "s":Landroid/view/Surface;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 547
    :cond_1
    const/16 v2, 0x21

    :try_start_0
    invoke-static {v1, v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_1

    .line 548
    :catch_0
    move-exception v2

    .line 549
    .local v2, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v4, "Surface abandoned, skipping..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v1    # "s":Landroid/view/Surface;
    .end local v2    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :goto_1
    goto :goto_0

    .line 543
    .restart local v1    # "s":Landroid/view/Surface;
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v3, "Jpeg surface is invalid, skipping..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    goto :goto_0

    .line 552
    .end local v1    # "s":Landroid/view/Surface;
    :cond_3
    return-void
.end method

.method private startPreview()V
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 294
    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRepeating(I)J
    .locals 2
    .param p1, "requestId"    # I

    .line 1082
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public configure(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .line 1097
    .local p1, "outputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1098
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 1099
    .local v1, "condition":Landroid/os/ConditionVariable;
    new-instance v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    invoke-direct {v3, v1, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;)V

    .line 1100
    .local v3, "holder":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 1102
    return-void
.end method

.method public flush()J
    .locals 3

    .line 1029
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v1, "Flushing all pending requests."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating()J

    move-result-wide v0

    .line 1031
    .local v0, "lastFrame":J
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V

    .line 1032
    return-wide v0
.end method

.method public quit()V
    .locals 8

    .line 1039
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1041
    .local v0, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1042
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    .line 1044
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    goto :goto_0

    .line 1045
    :catch_0
    move-exception v2

    .line 1046
    .local v2, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v4, "Thread %s (%d) interrupted while quitting."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 1047
    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1046
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1020
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    .line 1021
    return-void
.end method

.method public submitCaptureRequests([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "requests"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    .line 1065
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1067
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1068
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/camera2/legacy/RequestQueue;->submit([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v2

    .line 1069
    .local v2, "info":Landroid/hardware/camera2/utils/SubmitInfo;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1070
    monitor-exit v1

    .line 1071
    return-object v2

    .line 1070
    .end local v2    # "info":Landroid/hardware/camera2/utils/SubmitInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
