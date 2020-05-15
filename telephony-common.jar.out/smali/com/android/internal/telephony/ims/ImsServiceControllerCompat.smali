.class public Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceController;
.source "ImsServiceControllerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSCCompat"


# instance fields
.field private final mConfigCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mMmTelCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceController:Lcom/android/ims/internal/IImsServiceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "callbacks"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    .line 61
    return-void
.end method

.method private createMMTelCompat(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->getInterface(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object v0

    .line 184
    .local v0, "interfaceAdapter":Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    new-instance v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)V

    .line 186
    .local v1, "mmTelAdapter":Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    new-instance v2, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;-><init>()V

    .line 188
    .local v2, "regAdapter":Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V

    .line 189
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;

    .line 191
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->getOldConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;-><init>(Lcom/android/ims/internal/IImsConfig;)V

    .line 190
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v3

    return-object v3
.end method

.method private createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/os/IInterface;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    packed-switch p2, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createMMTelCompat(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disableIms(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 92
    .local v0, "adapter":Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    if-nez v0, :cond_0

    .line 93
    const-string v1, "ImsSCCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableIms: adapter null for slot :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->disableIms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsSCCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t enable IMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public enableIms(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 75
    .local v0, "adapter":Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    if-nez v0, :cond_0

    .line 76
    const-string v1, "ImsSCCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableIms: adapter null for slot :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->enableIms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsSCCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t enable IMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;

    .line 122
    .local v0, "adapter":Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;
    if-nez v0, :cond_0

    .line 123
    const-string v1, "ImsSCCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig: Config does not exist for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    return-object v1

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    return-object v1
.end method

.method protected getInterface(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->createMMTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    .line 174
    .local v0, "feature":Lcom/android/ims/internal/IImsMMTelFeature;
    if-nez v0, :cond_0

    .line 175
    const-string v1, "ImsSCCompat"

    const-string v2, "createMMTelCompat: createMMTelFeature returned null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 178
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v1
.end method

.method public getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    .line 109
    .local v0, "adapter":Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;
    if-nez v0, :cond_0

    .line 110
    const-string v1, "ImsSCCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegistration: Registration does not exist for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    return-object v1
.end method

.method protected getServiceInterface()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "android.telephony.ims.compat.ImsService"

    return-object v0
.end method

.method protected isServiceControllerAvailable()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyImsServiceReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const-string v0, "ImsSCCompat"

    const-string v1, "notifyImsServiceReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method protected removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 159
    return-void
.end method

.method protected setServiceController(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "serviceController"    # Landroid/os/IBinder;

    .line 163
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    .line 164
    return-void
.end method
