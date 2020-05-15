.class public Landroid/telephony/ims/compat/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService(Compat)"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.compat.ImsService"


# instance fields
.field private final mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mImsServiceController:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/telephony/ims/compat/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/ImsService$1;-><init>(Landroid/telephony/ims/compat/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/ims/compat/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->createEmergencyMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/ims/compat/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->createMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/ims/compat/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->createRcsFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/compat/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method private addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "f"    # Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 178
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 181
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 183
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 184
    iget-object v2, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createEmergencyMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 136
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    .line 137
    .local v0, "f":Landroid/telephony/ims/compat/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 139
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private createMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 147
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    .line 148
    .local v0, "f":Landroid/telephony/ims/compat/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 150
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private createRcsFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 158
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;

    move-result-object v0

    .line 159
    .local v0, "f":Landroid/telephony/ims/compat/feature/RcsFeature;
    if-eqz v0, :cond_0

    .line 160
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 161
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/RcsFeature;->getBinder()Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 192
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 195
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 196
    const-string v2, "ImsService(Compat)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v0

    return-void

    .line 200
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 201
    .local v2, "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    if-nez v2, :cond_1

    .line 202
    const-string v3, "ImsService(Compat)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exists on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v0

    return-void

    .line 206
    :cond_1
    invoke-virtual {v2, p3}, Landroid/telephony/ims/compat/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 207
    invoke-virtual {v2}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureRemoved()V

    .line 208
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 209
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0
    .param p1, "f"    # Landroid/telephony/ims/compat/feature/ImsFeature;
    .param p2, "slotId"    # I
    .param p3, "featureType"    # I
    .param p4, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 169
    invoke-virtual {p1, p0}, Landroid/telephony/ims/compat/feature/ImsFeature;->setContext(Landroid/content/Context;)V

    .line 170
    invoke-virtual {p1, p2}, Landroid/telephony/ims/compat/feature/ImsFeature;->setSlotId(I)V

    .line 171
    invoke-virtual {p1, p4}, Landroid/telephony/ims/compat/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 172
    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/compat/ImsService;->addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V

    .line 174
    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureReady()V

    .line 175
    return-void
.end method


# virtual methods
.method public getFeatures(I)Landroid/util/SparseArray;
    .locals 1
    .param p1, "slotId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 119
    const-string v0, "android.telephony.ims.compat.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "ImsService(Compat)"

    const-string v1, "ImsService(Compat) Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method
