.class Lcom/android/server/autofill/AutofillManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 211
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private getActiveAutofillServicePackageName()Ljava/lang/String;
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v0

    .line 274
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 275
    .local v1, "userState":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 276
    return-object v2

    .line 278
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 279
    .local v3, "serviceComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 280
    return-object v2

    .line 282
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleActiveAutofillServiceRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;I)V

    .line 268
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 270
    return-void
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 288
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 250
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getActiveAutofillServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "activePackageName":Ljava/lang/String;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    .line 253
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 254
    if-nez p4, :cond_0

    .line 255
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;I)V

    goto :goto_1

    .line 259
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/autofill/AutofillManagerService$2;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 252
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "activePackageName":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 263
    return v3

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v1

    .line 235
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 236
    .local v2, "userState":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 238
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerService$2;->handleActiveAutofillServiceRemoved(I)V

    .line 244
    .end local v1    # "userId":I
    .end local v2    # "userState":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getActiveAutofillServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;I)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$2;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 228
    .end local v1    # "activePackageName":Ljava/lang/String;
    :goto_0
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSomePackagesChanged()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$400(Lcom/android/server/autofill/AutofillManagerService;I)V

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
