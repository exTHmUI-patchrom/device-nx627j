.class public abstract Landroid/hardware/camera2/CameraMetadata;
.super Ljava/lang/Object;
.source "CameraMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COLOR_CORRECTION_ABERRATION_MODE_FAST:I = 0x1

.field public static final COLOR_CORRECTION_ABERRATION_MODE_HIGH_QUALITY:I = 0x2

.field public static final COLOR_CORRECTION_ABERRATION_MODE_OFF:I = 0x0

.field public static final COLOR_CORRECTION_MODE_FAST:I = 0x1

.field public static final COLOR_CORRECTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final COLOR_CORRECTION_MODE_TRANSFORM_MATRIX:I = 0x0

.field public static final CONTROL_AE_ANTIBANDING_MODE_50HZ:I = 0x1

.field public static final CONTROL_AE_ANTIBANDING_MODE_60HZ:I = 0x2

.field public static final CONTROL_AE_ANTIBANDING_MODE_AUTO:I = 0x3

.field public static final CONTROL_AE_ANTIBANDING_MODE_OFF:I = 0x0

.field public static final CONTROL_AE_MODE_OFF:I = 0x0

.field public static final CONTROL_AE_MODE_ON:I = 0x1

.field public static final CONTROL_AE_MODE_ON_ALWAYS_FLASH:I = 0x3

.field public static final CONTROL_AE_MODE_ON_AUTO_FLASH:I = 0x2

.field public static final CONTROL_AE_MODE_ON_AUTO_FLASH_REDEYE:I = 0x4

.field public static final CONTROL_AE_MODE_ON_EXTERNAL_FLASH:I = 0x5

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_START:I = 0x1

.field public static final CONTROL_AE_STATE_CONVERGED:I = 0x2

.field public static final CONTROL_AE_STATE_FLASH_REQUIRED:I = 0x4

.field public static final CONTROL_AE_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AE_STATE_LOCKED:I = 0x3

.field public static final CONTROL_AE_STATE_PRECAPTURE:I = 0x5

.field public static final CONTROL_AE_STATE_SEARCHING:I = 0x1

.field public static final CONTROL_AF_MODE_AUTO:I = 0x1

.field public static final CONTROL_AF_MODE_CONTINUOUS_PICTURE:I = 0x4

.field public static final CONTROL_AF_MODE_CONTINUOUS_VIDEO:I = 0x3

.field public static final CONTROL_AF_MODE_EDOF:I = 0x5

.field public static final CONTROL_AF_MODE_MACRO:I = 0x2

.field public static final CONTROL_AF_MODE_OFF:I = 0x0

.field public static final CONTROL_AF_SCENE_CHANGE_DETECTED:I = 0x1

.field public static final CONTROL_AF_SCENE_CHANGE_NOT_DETECTED:I = 0x0

.field public static final CONTROL_AF_STATE_ACTIVE_SCAN:I = 0x3

.field public static final CONTROL_AF_STATE_FOCUSED_LOCKED:I = 0x4

.field public static final CONTROL_AF_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AF_STATE_NOT_FOCUSED_LOCKED:I = 0x5

.field public static final CONTROL_AF_STATE_PASSIVE_FOCUSED:I = 0x2

.field public static final CONTROL_AF_STATE_PASSIVE_SCAN:I = 0x1

.field public static final CONTROL_AF_STATE_PASSIVE_UNFOCUSED:I = 0x6

.field public static final CONTROL_AF_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_AF_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_AF_TRIGGER_START:I = 0x1

.field public static final CONTROL_AWB_MODE_AUTO:I = 0x1

.field public static final CONTROL_AWB_MODE_CLOUDY_DAYLIGHT:I = 0x6

.field public static final CONTROL_AWB_MODE_DAYLIGHT:I = 0x5

.field public static final CONTROL_AWB_MODE_FLUORESCENT:I = 0x3

.field public static final CONTROL_AWB_MODE_INCANDESCENT:I = 0x2

.field public static final CONTROL_AWB_MODE_OFF:I = 0x0

.field public static final CONTROL_AWB_MODE_SHADE:I = 0x8

.field public static final CONTROL_AWB_MODE_TWILIGHT:I = 0x7

.field public static final CONTROL_AWB_MODE_WARM_FLUORESCENT:I = 0x4

.field public static final CONTROL_AWB_STATE_CONVERGED:I = 0x2

.field public static final CONTROL_AWB_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AWB_STATE_LOCKED:I = 0x3

.field public static final CONTROL_AWB_STATE_SEARCHING:I = 0x1

.field public static final CONTROL_CAPTURE_INTENT_CUSTOM:I = 0x0

.field public static final CONTROL_CAPTURE_INTENT_MANUAL:I = 0x6

.field public static final CONTROL_CAPTURE_INTENT_MOTION_TRACKING:I = 0x7

.field public static final CONTROL_CAPTURE_INTENT_PREVIEW:I = 0x1

.field public static final CONTROL_CAPTURE_INTENT_STILL_CAPTURE:I = 0x2

.field public static final CONTROL_CAPTURE_INTENT_VIDEO_RECORD:I = 0x3

.field public static final CONTROL_CAPTURE_INTENT_VIDEO_SNAPSHOT:I = 0x4

.field public static final CONTROL_CAPTURE_INTENT_ZERO_SHUTTER_LAG:I = 0x5

.field public static final CONTROL_EFFECT_MODE_AQUA:I = 0x8

.field public static final CONTROL_EFFECT_MODE_BLACKBOARD:I = 0x7

.field public static final CONTROL_EFFECT_MODE_MONO:I = 0x1

.field public static final CONTROL_EFFECT_MODE_NEGATIVE:I = 0x2

.field public static final CONTROL_EFFECT_MODE_OFF:I = 0x0

.field public static final CONTROL_EFFECT_MODE_POSTERIZE:I = 0x5

.field public static final CONTROL_EFFECT_MODE_SEPIA:I = 0x4

.field public static final CONTROL_EFFECT_MODE_SOLARIZE:I = 0x3

.field public static final CONTROL_EFFECT_MODE_WHITEBOARD:I = 0x6

.field public static final CONTROL_MODE_AUTO:I = 0x1

.field public static final CONTROL_MODE_OFF:I = 0x0

.field public static final CONTROL_MODE_OFF_KEEP_STATE:I = 0x3

.field public static final CONTROL_MODE_USE_SCENE_MODE:I = 0x2

.field public static final CONTROL_SCENE_MODE_ACTION:I = 0x2

.field public static final CONTROL_SCENE_MODE_BARCODE:I = 0x10

.field public static final CONTROL_SCENE_MODE_BEACH:I = 0x8

.field public static final CONTROL_SCENE_MODE_CANDLELIGHT:I = 0xf

.field public static final CONTROL_SCENE_MODE_DEVICE_CUSTOM_END:I = 0x7f

.field public static final CONTROL_SCENE_MODE_DEVICE_CUSTOM_START:I = 0x64

.field public static final CONTROL_SCENE_MODE_DISABLED:I = 0x0

.field public static final CONTROL_SCENE_MODE_FACE_PRIORITY:I = 0x1

.field public static final CONTROL_SCENE_MODE_FACE_PRIORITY_LOW_LIGHT:I = 0x13

.field public static final CONTROL_SCENE_MODE_FIREWORKS:I = 0xc

.field public static final CONTROL_SCENE_MODE_HDR:I = 0x12

.field public static final CONTROL_SCENE_MODE_HIGH_SPEED_VIDEO:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_SCENE_MODE_LANDSCAPE:I = 0x4

.field public static final CONTROL_SCENE_MODE_NIGHT:I = 0x5

.field public static final CONTROL_SCENE_MODE_NIGHT_PORTRAIT:I = 0x6

.field public static final CONTROL_SCENE_MODE_PARTY:I = 0xe

.field public static final CONTROL_SCENE_MODE_PORTRAIT:I = 0x3

.field public static final CONTROL_SCENE_MODE_SNOW:I = 0x9

.field public static final CONTROL_SCENE_MODE_SPORTS:I = 0xd

.field public static final CONTROL_SCENE_MODE_STEADYPHOTO:I = 0xb

.field public static final CONTROL_SCENE_MODE_SUNSET:I = 0xa

.field public static final CONTROL_SCENE_MODE_THEATRE:I = 0x7

.field public static final CONTROL_VIDEO_STABILIZATION_MODE_OFF:I = 0x0

.field public static final CONTROL_VIDEO_STABILIZATION_MODE_ON:I = 0x1

.field private static final DEBUG:Z = false

.field public static final DISTORTION_CORRECTION_MODE_FAST:I = 0x1

.field public static final DISTORTION_CORRECTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final DISTORTION_CORRECTION_MODE_OFF:I = 0x0

.field public static final EDGE_MODE_FAST:I = 0x1

.field public static final EDGE_MODE_HIGH_QUALITY:I = 0x2

.field public static final EDGE_MODE_OFF:I = 0x0

.field public static final EDGE_MODE_ZERO_SHUTTER_LAG:I = 0x3

.field public static final FLASH_MODE_OFF:I = 0x0

.field public static final FLASH_MODE_SINGLE:I = 0x1

.field public static final FLASH_MODE_TORCH:I = 0x2

.field public static final FLASH_STATE_CHARGING:I = 0x1

.field public static final FLASH_STATE_FIRED:I = 0x3

.field public static final FLASH_STATE_PARTIAL:I = 0x4

.field public static final FLASH_STATE_READY:I = 0x2

.field public static final FLASH_STATE_UNAVAILABLE:I = 0x0

.field public static final HOT_PIXEL_MODE_FAST:I = 0x1

.field public static final HOT_PIXEL_MODE_HIGH_QUALITY:I = 0x2

.field public static final HOT_PIXEL_MODE_OFF:I = 0x0

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_3:I = 0x3

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL:I = 0x4

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_FULL:I = 0x1

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY:I = 0x2

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED:I = 0x0

.field public static final LED_AVAILABLE_LEDS_TRANSMIT:I = 0x0

.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_EXTERNAL:I = 0x2

.field public static final LENS_FACING_FRONT:I = 0x0

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_APPROXIMATE:I = 0x1

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_CALIBRATED:I = 0x2

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_UNCALIBRATED:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_MODE_OFF:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_MODE_ON:I = 0x1

.field public static final LENS_POSE_REFERENCE_GYROSCOPE:I = 0x1

.field public static final LENS_POSE_REFERENCE_PRIMARY_CAMERA:I = 0x0

.field public static final LENS_STATE_MOVING:I = 0x1

.field public static final LENS_STATE_STATIONARY:I = 0x0

.field public static final LOGICAL_MULTI_CAMERA_SENSOR_SYNC_TYPE_APPROXIMATE:I = 0x0

.field public static final LOGICAL_MULTI_CAMERA_SENSOR_SYNC_TYPE_CALIBRATED:I = 0x1

.field public static final NOISE_REDUCTION_MODE_FAST:I = 0x1

.field public static final NOISE_REDUCTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final NOISE_REDUCTION_MODE_MINIMAL:I = 0x3

.field public static final NOISE_REDUCTION_MODE_OFF:I = 0x0

.field public static final NOISE_REDUCTION_MODE_ZERO_SHUTTER_LAG:I = 0x4

.field public static final REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE:I = 0x0

.field public static final REQUEST_AVAILABLE_CAPABILITIES_BURST_CAPTURE:I = 0x6

.field public static final REQUEST_AVAILABLE_CAPABILITIES_CONSTRAINED_HIGH_SPEED_VIDEO:I = 0x9

.field public static final REQUEST_AVAILABLE_CAPABILITIES_DEPTH_OUTPUT:I = 0x8

.field public static final REQUEST_AVAILABLE_CAPABILITIES_LOGICAL_MULTI_CAMERA:I = 0xb

.field public static final REQUEST_AVAILABLE_CAPABILITIES_MANUAL_POST_PROCESSING:I = 0x2

.field public static final REQUEST_AVAILABLE_CAPABILITIES_MANUAL_SENSOR:I = 0x1

.field public static final REQUEST_AVAILABLE_CAPABILITIES_MONOCHROME:I = 0xc

.field public static final REQUEST_AVAILABLE_CAPABILITIES_MOTION_TRACKING:I = 0xa

.field public static final REQUEST_AVAILABLE_CAPABILITIES_PRIVATE_REPROCESSING:I = 0x4

.field public static final REQUEST_AVAILABLE_CAPABILITIES_RAW:I = 0x3

.field public static final REQUEST_AVAILABLE_CAPABILITIES_READ_SENSOR_SETTINGS:I = 0x5

.field public static final REQUEST_AVAILABLE_CAPABILITIES_YUV_REPROCESSING:I = 0x7

.field public static final SCALER_CROPPING_TYPE_CENTER_ONLY:I = 0x0

.field public static final SCALER_CROPPING_TYPE_FREEFORM:I = 0x1

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR:I = 0x3

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG:I = 0x2

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG:I = 0x1

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGB:I = 0x4

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB:I = 0x0

.field public static final SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME:I = 0x1

.field public static final SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN:I = 0x0

.field public static final SENSOR_REFERENCE_ILLUMINANT1_CLOUDY_WEATHER:I = 0xa

.field public static final SENSOR_REFERENCE_ILLUMINANT1_COOL_WHITE_FLUORESCENT:I = 0xe

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D50:I = 0x17

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D55:I = 0x14

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D65:I = 0x15

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D75:I = 0x16

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAYLIGHT:I = 0x1

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAYLIGHT_FLUORESCENT:I = 0xc

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAY_WHITE_FLUORESCENT:I = 0xd

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FINE_WEATHER:I = 0x9

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FLASH:I = 0x4

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FLUORESCENT:I = 0x2

.field public static final SENSOR_REFERENCE_ILLUMINANT1_ISO_STUDIO_TUNGSTEN:I = 0x18

.field public static final SENSOR_REFERENCE_ILLUMINANT1_SHADE:I = 0xb

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_A:I = 0x11

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_B:I = 0x12

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_C:I = 0x13

.field public static final SENSOR_REFERENCE_ILLUMINANT1_TUNGSTEN:I = 0x3

.field public static final SENSOR_REFERENCE_ILLUMINANT1_WHITE_FLUORESCENT:I = 0xf

.field public static final SENSOR_TEST_PATTERN_MODE_COLOR_BARS:I = 0x2

.field public static final SENSOR_TEST_PATTERN_MODE_COLOR_BARS_FADE_TO_GRAY:I = 0x3

.field public static final SENSOR_TEST_PATTERN_MODE_CUSTOM1:I = 0x100

.field public static final SENSOR_TEST_PATTERN_MODE_OFF:I = 0x0

.field public static final SENSOR_TEST_PATTERN_MODE_PN9:I = 0x4

.field public static final SENSOR_TEST_PATTERN_MODE_SOLID_COLOR:I = 0x1

.field public static final SHADING_MODE_FAST:I = 0x1

.field public static final SHADING_MODE_HIGH_QUALITY:I = 0x2

.field public static final SHADING_MODE_OFF:I = 0x0

.field public static final STATISTICS_FACE_DETECT_MODE_FULL:I = 0x2

.field public static final STATISTICS_FACE_DETECT_MODE_OFF:I = 0x0

.field public static final STATISTICS_FACE_DETECT_MODE_SIMPLE:I = 0x1

.field public static final STATISTICS_LENS_SHADING_MAP_MODE_OFF:I = 0x0

.field public static final STATISTICS_LENS_SHADING_MAP_MODE_ON:I = 0x1

.field public static final STATISTICS_OIS_DATA_MODE_OFF:I = 0x0

.field public static final STATISTICS_OIS_DATA_MODE_ON:I = 0x1

.field public static final STATISTICS_SCENE_FLICKER_50HZ:I = 0x1

.field public static final STATISTICS_SCENE_FLICKER_60HZ:I = 0x2

.field public static final STATISTICS_SCENE_FLICKER_NONE:I = 0x0

.field public static final SYNC_FRAME_NUMBER_CONVERGING:I = -0x1

.field public static final SYNC_FRAME_NUMBER_UNKNOWN:I = -0x2

.field public static final SYNC_MAX_LATENCY_PER_FRAME_CONTROL:I = 0x0

.field public static final SYNC_MAX_LATENCY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CameraMetadataAb"

.field public static final TONEMAP_MODE_CONTRAST_CURVE:I = 0x0

.field public static final TONEMAP_MODE_FAST:I = 0x1

.field public static final TONEMAP_MODE_GAMMA_VALUE:I = 0x3

.field public static final TONEMAP_MODE_HIGH_QUALITY:I = 0x2

.field public static final TONEMAP_MODE_PRESET_CURVE:I = 0x4

.field public static final TONEMAP_PRESET_CURVE_REC709:I = 0x1

.field public static final TONEMAP_PRESET_CURVE_SRGB:I


# instance fields
.field private mNativeInstance:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 68
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<TTKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/CameraMetadata;->mNativeInstance:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 69
    return-void
.end method

.method private static shouldKeyBeAdded(Ljava/lang/Object;Ljava/lang/reflect/Field;[I)Z
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "filterTags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(TTKey;",
            "Ljava/lang/reflect/Field;",
            "[I)Z"
        }
    .end annotation

    .line 219
    .local p0, "key":Ljava/lang/Object;, "TTKey;"
    if-eqz p0, :cond_7

    .line 228
    instance-of v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    .line 229
    move-object v0, p0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    .line 229
    .local v0, "nativeKey":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    :goto_0
    goto :goto_1

    .line 230
    .end local v0    # "nativeKey":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    :cond_0
    instance-of v0, p0, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_1

    .line 231
    move-object v0, p0

    check-cast v0, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    instance-of v0, p0, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_6

    .line 233
    move-object v0, p0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    goto :goto_0

    .line 236
    .restart local v0    # "nativeKey":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    :goto_1
    nop

    .line 239
    const-class v1, Landroid/hardware/camera2/impl/PublicKey;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 241
    return v2

    .line 245
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 246
    return v1

    .line 249
    :cond_3
    const-class v3, Landroid/hardware/camera2/impl/SyntheticKey;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 253
    return v1

    .line 260
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v3

    .line 263
    .local v3, "keyTag":I
    invoke-static {p2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    .line 236
    .end local v0    # "nativeKey":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .end local v3    # "keyTag":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key type must be that of a metadata key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract getKeyClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTKey;>;"
        }
    .end annotation
.end method

.method getKeys(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[I)Ljava/util/ArrayList;
    .locals 9
    .param p4, "filterTags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TTKey;>;",
            "Landroid/hardware/camera2/CameraMetadata<",
            "TTKey;>;[I)",
            "Ljava/util/ArrayList<",
            "TTKey;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<TTKey;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TTKey;>;"
    .local p3, "instance":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<TTKey;>;"
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-class p1, Landroid/hardware/camera2/CaptureResult;

    .line 149
    :cond_0
    if-eqz p4, :cond_1

    .line 150
    invoke-static {p4}, Ljava/util/Arrays;->sort([I)V

    .line 153
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TTKey;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 156
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 158
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 159
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 163
    :try_start_0
    invoke-virtual {v4, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .local v5, "key":Ljava/lang/Object;, "TTKey;"
    nop

    .line 167
    nop

    .line 170
    if-eqz p3, :cond_2

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CameraMetadata;->getProtected(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 171
    :cond_2
    invoke-static {v5, v4, p4}, Landroid/hardware/camera2/CameraMetadata;->shouldKeyBeAdded(Ljava/lang/Object;Ljava/lang/reflect/Field;[I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "key":Ljava/lang/Object;, "TTKey;"
    goto :goto_1

    .line 166
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Can\'t get IllegalArgumentException"

    invoke-direct {v3, v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 164
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Can\'t get IllegalAccessException"

    invoke-direct {v3, v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 156
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_4
    iget-object v2, p0, Landroid/hardware/camera2/CameraMetadata;->mNativeInstance:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-nez v2, :cond_5

    .line 185
    return-object v0

    .line 188
    :cond_5
    iget-object v2, p0, Landroid/hardware/camera2/CameraMetadata;->mNativeInstance:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v2, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 190
    .local v2, "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TTKey;>;"
    if-eqz v2, :cond_b

    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 194
    .local v4, "k":Ljava/lang/Object;, "TTKey;"
    instance-of v5, v4, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v5, :cond_7

    .line 195
    move-object v5, v4

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "keyName":Ljava/lang/String;
    move-object v6, v4

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Key;->getVendorId()J

    move-result-wide v6

    .local v6, "vendorId":J
    :goto_3
    goto :goto_4

    .line 197
    .end local v5    # "keyName":Ljava/lang/String;
    .end local v6    # "vendorId":J
    :cond_7
    instance-of v5, v4, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v5, :cond_8

    .line 198
    move-object v5, v4

    check-cast v5, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    .line 199
    .restart local v5    # "keyName":Ljava/lang/String;
    move-object v6, v4

    check-cast v6, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureResult$Key;->getVendorId()J

    move-result-wide v6

    goto :goto_3

    .line 200
    .end local v5    # "keyName":Ljava/lang/String;
    :cond_8
    instance-of v5, v4, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v5, :cond_6

    .line 201
    move-object v5, v4

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v5

    .line 202
    .restart local v5    # "keyName":Ljava/lang/String;
    move-object v6, v4

    check-cast v6, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v6

    .line 207
    .restart local v6    # "vendorId":J
    :goto_4
    if-eqz p4, :cond_9

    .line 208
    invoke-static {v5, v6, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v8

    .line 207
    invoke-static {p4, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-ltz v8, :cond_a

    .line 209
    :cond_9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v4    # "k":Ljava/lang/Object;, "TTKey;"
    .end local v5    # "keyName":Ljava/lang/String;
    .end local v6    # "vendorId":J
    :cond_a
    goto :goto_2

    .line 214
    :cond_b
    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTKey;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<TTKey;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraMetadata<TTKey;>;>;"
    nop

    .line 119
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadata;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Landroid/hardware/camera2/CameraMetadata;->getKeys(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 118
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TTKey;)TT;"
        }
    .end annotation
.end method

.method protected setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0
    .param p1, "nativeInstance"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 94
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<TTKey;>;"
    iput-object p1, p0, Landroid/hardware/camera2/CameraMetadata;->mNativeInstance:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 95
    return-void
.end method
