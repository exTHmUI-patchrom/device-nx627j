.class public abstract Landroid/net/wifi/hotspot2/ProvisioningCallback;
.super Ljava/lang/Object;
.source "ProvisioningCallback.java"


# static fields
.field public static final OSU_FAILURE_AP_CONNECTION:I = 0x1

.field public static final OSU_FAILURE_PROVIDER_VERIFICATION:I = 0x5

.field public static final OSU_FAILURE_PROVISIONING_ABORTED:I = 0x6

.field public static final OSU_FAILURE_PROVISIONING_NOT_AVAILABLE:I = 0x7

.field public static final OSU_FAILURE_SERVER_CONNECTION:I = 0x3

.field public static final OSU_FAILURE_SERVER_URL_INVALID:I = 0x2

.field public static final OSU_FAILURE_SERVER_VALIDATION:I = 0x4

.field public static final OSU_STATUS_AP_CONNECTED:I = 0x2

.field public static final OSU_STATUS_AP_CONNECTING:I = 0x1

.field public static final OSU_STATUS_PROVIDER_VERIFIED:I = 0x5

.field public static final OSU_STATUS_SERVER_CONNECTED:I = 0x3

.field public static final OSU_STATUS_SERVER_VALIDATED:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onProvisioningFailure(I)V
.end method

.method public abstract onProvisioningStatus(I)V
.end method
