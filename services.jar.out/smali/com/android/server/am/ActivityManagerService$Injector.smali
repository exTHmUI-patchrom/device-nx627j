.class public Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private mNmi:Lcom/android/server/NetworkManagementInternal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureHasNetworkManagementInternal()Z
    .locals 1

    .line 29558
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-nez v0, :cond_0

    .line 29559
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    .line 29561
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAppOpsService(Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 29543
    new-instance v0, Lcom/android/server/AppOpsService;

    invoke-direct {v0, p1, p2}, Lcom/android/server/AppOpsService;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 29539
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiHandler(Lcom/android/server/am/ActivityManagerService;)Landroid/os/Handler;
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 29547
    new-instance v0, Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object v0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 29551
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->ensureHasNetworkManagementInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29552
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkManagementInternal;->isNetworkRestrictedForUid(I)Z

    move-result v0

    return v0

    .line 29554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
