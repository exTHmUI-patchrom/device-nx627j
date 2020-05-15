.class public abstract Landroid/telephony/CarrierMessagingServiceManager;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;
    }
.end annotation


# instance fields
.field private volatile mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrierPackageName"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    new-instance v2, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;-><init>(Landroid/telephony/CarrierMessagingServiceManager;Landroid/telephony/CarrierMessagingServiceManager$1;)V

    iput-object v2, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    .line 64
    iget-object v2, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public disposeConnection(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    iget-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    .line 77
    return-void
.end method

.method protected abstract onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
.end method
