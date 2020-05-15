.class public Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.source "ImsServiceControllerStaticCompat.java"


# static fields
.field private static final IMS_SERVICE_NAME:Ljava/lang/String; = "ims"

.field private static final TAG:Ljava/lang/String; = "ImsSCStaticCompat"


# instance fields
.field private mImsServiceCompat:Lcom/android/ims/internal/IImsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "callbacks"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    .line 46
    return-void
.end method


# virtual methods
.method protected getInterface(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "ImsSCStaticCompat"

    const-string v1, "getInterface: IImsService returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method protected setServiceController(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "serviceController"    # Landroid/os/IBinder;

    .line 65
    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    .line 66
    return-void
.end method

.method public startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
    .param p3, "flags"    # I

    .line 50
    const-string v0, "ims"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 53
    const/4 v1, 0x0

    return v1

    .line 58
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 60
    const/4 v1, 0x1

    return v1
.end method
