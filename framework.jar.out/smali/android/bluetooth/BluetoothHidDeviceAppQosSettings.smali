.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field private final mDelayVariation:I

.field private final mLatency:I

.field private final mPeakBandwidth:I

.field private final mServiceType:I

.field private final mTokenBucketSize:I

.field private final mTokenRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "tokenRate"    # I
    .param p3, "tokenBucketSize"    # I
    .param p4, "peakBandwidth"    # I
    .param p5, "latency"    # I
    .param p6, "delayVariation"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    .line 65
    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    .line 66
    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    .line 67
    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    .line 68
    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    .line 69
    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getDelayVariation()I
    .locals 1

    .line 93
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    return v0
.end method

.method public getPeakBandwidth()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    return v0
.end method

.method public getServiceType()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    return v0
.end method

.method public getTokenBucketSize()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    return v0
.end method

.method public getTokenRate()I
    .locals 1

    .line 77
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
