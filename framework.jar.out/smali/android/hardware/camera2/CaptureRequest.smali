.class public final Landroid/hardware/camera2/CaptureRequest;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CaptureRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureRequest$Builder;,
        Landroid/hardware/camera2/CaptureRequest$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/CameraMetadata<",
        "Landroid/hardware/camera2/CaptureRequest$Key<",
        "*>;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[D>;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEmptySurfaceSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsPartOfCHSRequestList:Z

.field private mIsReprocess:Z

.field private mLogicalCameraId:Ljava/lang/String;

.field private mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private final mPhysicalCameraSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private mReprocessableSessionId:I

.field private mStreamIdxArray:[I

.field private mSurfaceConverted:Z

.field private mSurfaceIdxArray:[I

.field private final mSurfaceSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfacesLock:Ljava/lang/Object;

.field private mUserTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 223
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->mEmptySurfaceSet:Landroid/util/ArraySet;

    .line 489
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CaptureRequest$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 986
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1013
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.transform"

    const-class v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1040
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.gains"

    const-class v2, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1072
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.aberrationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1128
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeAntibandingMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1161
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeExposureCompensation"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1211
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeLock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1263
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1323
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1343
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeTargetFpsRange"

    new-instance v2, Landroid/hardware/camera2/CaptureRequest$2;

    invoke-direct {v2}, Landroid/hardware/camera2/CaptureRequest$2;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1416
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aePrecaptureTrigger"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1457
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1518
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1555
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afTrigger"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1585
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbLock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1645
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1706
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1748
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.captureIntent"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1787
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.effectMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1827
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1894
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.sceneMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1937
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.videoStabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1972
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.postRawSensitivityBoost"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2005
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.enableZsl"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2053
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.edge.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2088
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.flash.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2112
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.hotPixel.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2124
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsLocation"

    const-class v2, Landroid/location/Location;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2135
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsCoordinates"

    const-class v2, [D

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2145
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsProcessingMethod"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2155
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsTimestamp"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2198
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.orientation"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2210
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.quality"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2221
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.thumbnailQuality"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2256
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.thumbnailSize"

    const-class v2, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2293
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.aperture"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2323
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.filterDensity"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2348
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.focalLength"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2380
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.focusDistance"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2422
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.opticalStabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2477
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.noiseReduction.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2490
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.request.id"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2551
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.scaler.cropRegion"

    const-class v2, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2576
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.exposureTime"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2657
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.frameDuration"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2689
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.sensitivity"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2706
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.testPatternData"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2741
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.testPatternMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2794
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.shading.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2819
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.faceDetectMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2834
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.hotPixelMapMode"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2862
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.lensShadingMapMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2888
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.oisDataMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2905
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curveBlue"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2922
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curveGreen"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2984
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curveRed"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3046
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curve"

    const-class v2, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3095
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3116
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.gamma"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3141
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.presetCurve"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3158
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.led.transmit"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3207
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.blackLevel.lock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3257
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.reprocess.effectiveExposureFactor"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3319
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.distortionCorrection.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 245
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    .line 207
    const-string v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    .line 209
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    .line 227
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    .line 233
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    .line 246
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/CaptureRequest$1;

    .line 81
    invoke-direct {p0}, Landroid/hardware/camera2/CaptureRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 6
    .param p1, "source"    # Landroid/hardware/camera2/CaptureRequest;

    .line 256
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    .line 207
    const-string v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    .line 209
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    .line 227
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    .line 233
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    .line 257
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 260
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 260
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 264
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 265
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 266
    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    .line 267
    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    .line 268
    iget v0, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    .line 269
    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    .line 270
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "x1"    # Landroid/hardware/camera2/CaptureRequest$1;

    .line 81
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "settings"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "isReprocess"    # Z
    .param p3, "reprocessableSessionId"    # I
    .param p4, "logicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p5, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    .line 207
    const-string v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    .line 209
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    .line 227
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    .line 233
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    .line 299
    if-eqz p5, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Create a reprocess capture request with with more than one physical camera is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    :goto_0
    iput-object p4, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    .line 305
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    if-eqz p5, :cond_2

    .line 308
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "physicalId":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v1    # "physicalId":Ljava/lang/String;
    goto :goto_1

    .line 314
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 315
    iput-boolean p2, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    .line 316
    const/4 v0, -0x1

    if-eqz p2, :cond_4

    .line 317
    if-eq p3, v0, :cond_3

    .line 321
    iput p3, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    goto :goto_2

    .line 318
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create a reprocess capture request with an invalid session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_4
    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    .line 325
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "x1"    # Z
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/util/Set;
    .param p6, "x5"    # Landroid/hardware/camera2/CaptureRequest$1;

    .line 81
    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/camera2/CaptureRequest;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/camera2/CaptureRequest;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CaptureRequest;

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CaptureRequest;

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CaptureRequest;

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Landroid/hardware/camera2/CaptureRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    return p1
.end method

.method private equals(Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/camera2/CaptureRequest;

    .line 474
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    .line 475
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    .line 476
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    .line 477
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iget-boolean v1, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget v1, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 515
    .local v0, "physicalCameraCount":I
    if-lez v0, :cond_4

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    .line 522
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 523
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    .line 524
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 525
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/4 v1, 0x1

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "physicalId":Ljava/lang/String;
    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 529
    .local v4, "physicalCameraSettings":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v4, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    .line 530
    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .end local v3    # "physicalId":Ljava/lang/String;
    .end local v4    # "physicalCameraSettings":Landroid/hardware/camera2/impl/CameraMetadataNative;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v1, v3

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    .line 534
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    .line 536
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 538
    const-class v2, Landroid/view/Surface;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 539
    .local v2, "parcelableArray":[Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 540
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 541
    .local v5, "p":Landroid/os/Parcelable;
    move-object v6, v5

    check-cast v6, Landroid/view/Surface;

    .line 542
    .local v6, "s":Landroid/view/Surface;
    iget-object v7, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v5    # "p":Landroid/os/Parcelable;
    .end local v6    # "s":Landroid/view/Surface;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 547
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .local v3, "streamSurfaceSize":I
    if-nez v3, :cond_3

    .line 551
    .end local v2    # "parcelableArray":[Landroid/os/Parcelable;
    .end local v3    # "streamSurfaceSize":I
    monitor-exit v1

    .line 552
    return-void

    .line 549
    .restart local v2    # "parcelableArray":[Landroid/os/Parcelable;
    .restart local v3    # "streamSurfaceSize":I
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Reading cached CaptureRequest is not supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 551
    .end local v2    # "parcelableArray":[Landroid/os/Parcelable;
    .end local v3    # "streamSurfaceSize":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 516
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical camera count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should always be positive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public containsTarget(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 595
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public convertSurfaceToStreamId(Landroid/util/SparseArray;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p1, "configuredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v1, p0

    .line 618
    move-object/from16 v2, p1

    iget-object v3, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 619
    :try_start_0
    iget-boolean v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "CaptureRequest-JV"

    const-string v4, "Cannot convert already converted surfaces!"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v3

    return-void

    .line 624
    :cond_0
    iget-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    .line 625
    iget-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "i":I
    iget-object v4, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 628
    .local v5, "s":Landroid/view/Surface;
    const/4 v6, 0x0

    .line 629
    .local v6, "streamFound":Z
    const/4 v7, 0x0

    move v8, v6

    move v6, v0

    move v0, v7

    .local v0, "j":I
    .local v6, "i":I
    .local v8, "streamFound":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 630
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 631
    .local v9, "streamId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 632
    .local v10, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v11, 0x0

    .line 633
    .local v11, "surfaceId":I
    invoke-virtual {v10}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    .line 634
    .local v13, "outSurface":Landroid/view/Surface;
    if-ne v5, v13, :cond_1

    .line 635
    const/4 v8, 0x1

    .line 636
    iget-object v12, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aput v9, v12, v6

    .line 637
    iget-object v12, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aput v11, v12, v6

    .line 638
    add-int/lit8 v6, v6, 0x1

    .line 639
    goto :goto_3

    .line 641
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 642
    .end local v13    # "outSurface":Landroid/view/Surface;
    goto :goto_2

    .line 643
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 644
    goto :goto_4

    .line 629
    .end local v9    # "streamId":I
    .end local v10    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v11    # "surfaceId":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 648
    .end local v0    # "j":I
    :cond_4
    :goto_4
    if-nez v8, :cond_8

    .line 650
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v9

    .line 651
    .local v9, "reqSurfaceId":J
    nop

    .local v7, "j":I
    :goto_5
    move v0, v7

    .end local v7    # "j":I
    .restart local v0    # "j":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 652
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 653
    .local v7, "streamId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 654
    .local v11, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v12, 0x0

    .line 655
    .local v12, "surfaceId":I
    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Surface;

    .line 656
    .local v14, "outSurface":Landroid/view/Surface;
    invoke-static {v14}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v15

    cmp-long v15, v9, v15

    if-nez v15, :cond_5

    .line 657
    const/4 v8, 0x1

    .line 658
    iget-object v13, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aput v7, v13, v6

    .line 659
    iget-object v13, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aput v12, v13, v6

    .line 660
    add-int/lit8 v6, v6, 0x1

    .line 661
    goto :goto_7

    .line 663
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 664
    .end local v14    # "outSurface":Landroid/view/Surface;
    goto :goto_6

    .line 665
    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    .line 666
    goto :goto_8

    .line 651
    .end local v7    # "streamId":I
    .end local v11    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v12    # "surfaceId":I
    :cond_7
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "j":I
    .local v7, "j":I
    goto :goto_5

    .line 671
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v9    # "reqSurfaceId":J
    .local v0, "i":I
    :cond_8
    :goto_8
    move v0, v6

    if-eqz v8, :cond_9

    .line 677
    .end local v5    # "s":Landroid/view/Surface;
    .end local v8    # "streamFound":Z
    goto/16 :goto_0

    .line 672
    .restart local v5    # "s":Landroid/view/Surface;
    .restart local v8    # "streamFound":Z
    :cond_9
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    .line 673
    iput-object v4, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    .line 674
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "CaptureRequest contains unconfigured Input/Output Surface!"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 678
    .end local v5    # "s":Landroid/view/Surface;
    .end local v8    # "streamFound":Z
    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    .line 679
    .end local v0    # "i":I
    monitor-exit v3

    .line 680
    return-void

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 469
    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 470
    invoke-direct {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->equals(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 342
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 362
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 363
    .local v0, "thisClass":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 373
    invoke-super {p0}, Landroid/hardware/camera2/CameraMetadata;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogicalCameraId()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    .line 436
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method protected getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)TT;"
        }
    .end annotation

    .line 352
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReprocessableSessionId()I
    .locals 2

    .line 448
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 453
    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    return v0

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Getting the reprocessable session ID for a non-reprocess capture request is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 391
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 486
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPartOfCRequestList()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    return v0
.end method

.method public isReprocess()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    return v0
.end method

.method public recoverStreamIdToSurface()V
    .locals 3

    .line 686
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-nez v1, :cond_0

    .line 688
    const-string v1, "CaptureRequest-JV"

    const-string v2, "Cannot convert already converted surfaces!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    monitor-exit v0

    return-void

    .line 692
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    .line 693
    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    .line 694
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    .line 695
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 561
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 562
    .local v0, "physicalCameraCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 566
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 567
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    goto :goto_0

    .line 570
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 572
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    goto :goto_0

    .line 574
    :cond_1
    iget-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->mEmptySurfaceSet:Landroid/util/ArraySet;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    .line 578
    .local v2, "surfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/Surface;>;"
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Surface;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 579
    iget-boolean v3, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 580
    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    array-length v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    nop

    .local v4, "i":I
    :goto_2
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 582
    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 586
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    .end local v2    # "surfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/Surface;>;"
    :cond_4
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
