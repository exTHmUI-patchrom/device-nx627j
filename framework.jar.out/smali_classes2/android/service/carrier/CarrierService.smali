.class public abstract Landroid/service/carrier/CarrierService;
.super Landroid/app/Service;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
    }
.end annotation


# static fields
.field public static final CARRIER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.carrier.CarrierService"

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierService"

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;

    invoke-direct {v0, p0}, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;-><init>(Landroid/service/carrier/CarrierService;)V

    iput-object v0, p0, Landroid/service/carrier/CarrierService;->mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;

    .line 64
    sget-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "telephony.registry"

    .line 66
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyCarrierNetworkChange(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 124
    :try_start_0
    sget-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Landroid/service/carrier/CarrierService;->mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;

    return-object v0
.end method

.method public abstract onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
.end method
