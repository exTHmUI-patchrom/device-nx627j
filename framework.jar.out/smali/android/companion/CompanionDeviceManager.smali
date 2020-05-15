.class public final Landroid/companion/CompanionDeviceManager;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceManager$CallbackProxy;,
        Landroid/companion/CompanionDeviceManager$Callback;
    }
.end annotation


# static fields
.field public static final COMPANION_DEVICE_DISCOVERY_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field private static final DEBUG:Z = false

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.companion.extra.DEVICE"

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/companion/ICompanionDeviceManager;


# direct methods
.method public constructor <init>(Landroid/companion/ICompanionDeviceManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Landroid/companion/ICompanionDeviceManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 101
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/companion/CompanionDeviceManager;

    .line 53
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/companion/CompanionDeviceManager;

    .line 53
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;
    .locals 1
    .param p0, "x0"    # Landroid/companion/CompanionDeviceManager;

    .line 53
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    return-object v0
.end method

.method private checkFeaturePresent()Z
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, "featurePresent":Z
    :goto_0
    nop

    .line 257
    return v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 141
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v7, Landroid/companion/CompanionDeviceManager$CallbackProxy;

    .line 149
    invoke-static {p3}, Landroid/os/Handler;->mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$1;)V

    .line 150
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0, p1, v7, v1}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disassociate(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceMacAddress"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->disassociate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    nop

    .line 198
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAssociations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 241
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 214
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 220
    .local v2, "intentSender":Landroid/content/IntentSender;
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v2    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 226
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 221
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
