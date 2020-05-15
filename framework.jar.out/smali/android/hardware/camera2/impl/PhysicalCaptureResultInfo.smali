.class public Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
.super Ljava/lang/Object;
.source "PhysicalCaptureResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cameraId:Ljava/lang/String;

.field private cameraMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraMetadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 66
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    return-void
.end method
