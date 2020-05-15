.class final Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;
.super Ljava/lang/Object;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessNetworkThresholds"
.end annotation


# static fields
.field public static final CDMA2000:[I

.field public static final EUTRAN:[I

.field public static final GERAN:[I

.field public static final UTRAN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 600
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->GERAN:[I

    .line 613
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->UTRAN:[I

    .line 625
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->EUTRAN:[I

    .line 639
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->CDMA2000:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x6d
        -0x67
        -0x61
        -0x59
    .end array-data

    :array_1
    .array-data 4
        -0x72
        -0x68
        -0x5e
        -0x54
    .end array-data

    :array_2
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data

    :array_3
    .array-data 4
        -0x69
        -0x5a
        -0x4b
        -0x41
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
