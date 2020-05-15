.class public Lcom/android/internal/telephony/NetworkRegistrationManager;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbackTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRegStateChangeRegistrants:Landroid/os/RegistrantList;

.field private mServiceBinder:Landroid/telephony/INetworkService$Stub;

.field private final mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NetworkRegistrationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "transportType"    # I
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    .line 63
    iput p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 64
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->bindService()Z

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceBinder:Landroid/telephony/INetworkService$Stub;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService$Stub;)Landroid/telephony/INetworkService$Stub;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;
    .param p1, "x1"    # Landroid/telephony/INetworkService$Stub;

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceBinder:Landroid/telephony/INetworkService$Stub;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method private bindService()Z
    .locals 4

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.NetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x0

    return v2
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 6

    .line 196
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    packed-switch v0, :pswitch_data_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_0
    const v0, 0x1040174

    .line 204
    .local v0, "resourceId":I
    const-string v1, "carrier_network_service_wlan_package_override_string"

    .line 206
    .local v1, "carrierConfig":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v0    # "resourceId":I
    .end local v1    # "carrierConfig":Ljava/lang/String;
    :pswitch_1
    const v0, 0x1040176

    .line 199
    .restart local v0    # "resourceId":I
    const-string v1, "carrier_network_service_wwan_package_override_string"

    .line 201
    .restart local v1    # "carrierConfig":Ljava/lang/String;
    nop

    .line 208
    :goto_0
    nop

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 217
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v3, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for transport type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)I

    .line 225
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static logd(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/android/internal/telephony/NetworkRegistrationManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static loge(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/android/internal/telephony/NetworkRegistrationManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getNetworkRegistrationState(ILandroid/os/Message;)V
    .locals 6
    .param p1, "domain"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 88
    if-nez p2, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkRegistrationState domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "service not connected."

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Service not connected."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void

    .line 99
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V

    .line 101
    .local v0, "callback":Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceBinder:Landroid/telephony/INetworkService$Stub;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, p1, v0}, Landroid/telephony/INetworkService$Stub;->getNetworkRegistrationState(IILandroid/telephony/INetworkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/telephony/NetworkRegistrationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkRegistrationState RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v3, v4, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 109
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceBinder:Landroid/telephony/INetworkService$Stub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceBinder:Landroid/telephony/INetworkService$Stub;

    invoke-virtual {v0}, Landroid/telephony/INetworkService$Stub;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerForNetworkRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 80
    const-string v0, "registerForNetworkRegistrationStateChanged"

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public unregisterForNetworkRegistrationStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 77
    return-void
.end method
