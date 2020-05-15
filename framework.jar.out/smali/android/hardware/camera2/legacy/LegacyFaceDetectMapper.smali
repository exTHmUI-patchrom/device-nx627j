.class public Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mFaceDetectEnabled:Z

.field private mFaceDetectReporting:Z

.field private mFaceDetectScenePriority:Z

.field private final mFaceDetectSupported:Z

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFacesPrev:[Landroid/hardware/Camera$Face;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "LegacyFaceDetectMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    .line 55
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .line 57
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    .line 72
    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    .line 73
    const-string v0, "characteristics must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 76
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 75
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    .line 80
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 45
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 45
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    return v0
.end method

.method static synthetic access$202(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .line 45
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 17
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 208
    move-object/from16 v3, p2

    const-string/jumbo v0, "result must not be null"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v0, "legacyRequest must not be null"

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v4, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 215
    :try_start_0
    iget-boolean v0, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "fdMode":I
    :goto_0
    iget-boolean v7, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    if-eqz v7, :cond_1

    .line 219
    iget-object v7, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    .line 219
    .local v7, "faces":[Landroid/hardware/Camera$Face;
    goto :goto_1

    .line 221
    .end local v7    # "faces":[Landroid/hardware/Camera$Face;
    :cond_1
    const/4 v7, 0x0

    .line 224
    .restart local v7    # "faces":[Landroid/hardware/Camera$Face;
    :goto_1
    iget-boolean v8, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .line 226
    .local v8, "fdScenePriority":Z
    iget-object v9, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    .line 227
    .local v9, "previousFaces":[Landroid/hardware/Camera$Face;
    iput-object v7, v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    .line 228
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v4, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 231
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v10, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 232
    .local v10, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v11, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    .line 233
    .local v11, "previewSize":Landroid/util/Size;
    iget-object v12, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 235
    .local v12, "params":Landroid/hardware/Camera$Parameters;
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 236
    .local v13, "activeArray":Landroid/graphics/Rect;
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 237
    invoke-virtual {v10, v14}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 236
    invoke-static {v13, v14, v11, v12}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v14

    .line 239
    .local v14, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v15, "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    if-eqz v7, :cond_3

    .line 241
    array-length v6, v7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v1, v7, v5

    .line 242
    .local v1, "face":Landroid/hardware/Camera$Face;
    if-eqz v1, :cond_2

    .line 243
    nop

    .line 244
    invoke-static {v1, v13, v14}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;

    move-result-object v3

    .line 243
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 246
    :cond_2
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    move-object/from16 v16, v1

    const-string/jumbo v1, "mapResultFaces - read NULL face from camera1 device"

    .line 246
    .end local v1    # "face":Landroid/hardware/Camera$Face;
    .local v16, "face":Landroid/hardware/Camera$Face;
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v16    # "face":Landroid/hardware/Camera$Face;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    goto :goto_2

    .line 255
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/Face;

    invoke-interface {v15, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 256
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 259
    if-eqz v8, :cond_4

    .line 260
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 262
    :cond_4
    return-void

    .line 228
    .end local v0    # "fdMode":I
    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v7    # "faces":[Landroid/hardware/Camera$Face;
    .end local v8    # "fdScenePriority":Z
    .end local v9    # "previousFaces":[Landroid/hardware/Camera$Face;
    .end local v10    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v11    # "previewSize":Landroid/util/Size;
    .end local v12    # "params":Landroid/hardware/Camera$Parameters;
    .end local v13    # "activeArray":Landroid/graphics/Rect;
    .end local v14    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .end local v15    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 123
    const-string v0, "captureRequest must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 129
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-static {p1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    .local v0, "fdMode":I
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v2, :cond_0

    .line 132
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 141
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 141
    invoke-static {p1, v2, v3}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 143
    .local v2, "sceneMode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v4, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v4, :cond_1

    .line 144
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 150
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 160
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processFaceDetectMode - ignoring unknown statistics.faceDetectMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 155
    :pswitch_0
    sget-object v4, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto :goto_0

    .line 153
    :pswitch_1
    nop

    .line 165
    :goto_0
    if-nez v0, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v3

    .line 167
    .local v4, "enableFaceDetect":Z
    :goto_2
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 169
    :try_start_0
    iget-boolean v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    if-eq v4, v6, :cond_7

    .line 170
    if-eqz v4, :cond_4

    .line 171
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startFaceDetection()V

    goto :goto_3

    .line 177
    :cond_4
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 183
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    .line 186
    :goto_3
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    .line 187
    if-ne v2, v3, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .line 188
    if-eqz v0, :cond_6

    move v1, v3

    nop

    :cond_6
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    .line 190
    :cond_7
    monitor-exit v5

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
