.class Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;
.super Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProvisioningCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/ProvisioningCallback;

    .line 3867
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;-><init>()V

    .line 3868
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 3869
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    .line 3870
    return-void
.end method

.method public static synthetic lambda$onProvisioningFailure$1(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .locals 1
    .param p1, "status"    # I

    .line 3881
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningFailure(I)V

    .line 3882
    return-void
.end method

.method public static synthetic lambda$onProvisioningStatus$0(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .locals 1
    .param p1, "status"    # I

    .line 3874
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningStatus(I)V

    .line 3875
    return-void
.end method


# virtual methods
.method public onProvisioningFailure(I)V
    .locals 2
    .param p1, "status"    # I

    .line 3880
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3883
    return-void
.end method

.method public onProvisioningStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 3873
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$0_NXiwyrbrT_579x-6QMO0y3rzc;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$0_NXiwyrbrT_579x-6QMO0y3rzc;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3876
    return-void
.end method
