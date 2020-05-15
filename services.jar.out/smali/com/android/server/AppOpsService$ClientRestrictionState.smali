.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4202
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4203
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4204
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 4205
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5
    .param p1, "array"    # [Z

    .line 4338
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4339
    return v1

    .line 4341
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-boolean v4, p1, v3

    .line 4342
    .local v4, "value":Z
    if-eqz v4, :cond_1

    .line 4343
    return v2

    .line 4341
    .end local v4    # "value":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4346
    :cond_2
    return v1
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V
    .locals 2
    .param p1, "changedCode"    # I

    .line 4325
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/AppOpsService;->access$900(Lcom/android/server/AppOpsService;II)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    .line 4313
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 4314
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v1}, Lcom/android/server/AppOpsService;->access$800(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4315
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 4316
    monitor-exit v0

    return-void

    .line 4318
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4319
    .local v1, "userCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 4320
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 4321
    .local v4, "restrictions":[Z
    array-length v5, v4

    .line 4322
    .local v5, "restrictionCount":I
    move v6, v2

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 4323
    aget-boolean v7, v4, v6

    if-eqz v7, :cond_1

    .line 4324
    move v7, v6

    .line 4325
    .local v7, "changedCode":I
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v8, v8, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;

    invoke-direct {v9, p0, v7}, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;-><init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4322
    .end local v7    # "changedCode":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4319
    .end local v4    # "restrictions":[Z
    .end local v5    # "restrictionCount":I
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4329
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4330
    .end local v1    # "userCount":I
    monitor-exit v0

    .line 4331
    return-void

    .line 4330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 4334
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4335
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .locals 4
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4272
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4273
    return v1

    .line 4275
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 4276
    .local v0, "restrictions":[Z
    if-nez v0, :cond_1

    .line 4277
    return v1

    .line 4279
    :cond_1
    aget-boolean v2, v0, p1

    if-nez v2, :cond_2

    .line 4280
    return v1

    .line 4282
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 4283
    return v2

    .line 4285
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4286
    .local v1, "perUserExclusions":[Ljava/lang/String;
    if-nez v1, :cond_4

    .line 4287
    return v2

    .line 4289
    :cond_4
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDefault()Z
    .locals 1

    .line 4308
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4293
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4295
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4296
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4299
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 4300
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4301
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4302
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4305
    :cond_1
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .line 4209
    const/4 v0, 0x0

    .line 4211
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 4212
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4216
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p4, v1, :cond_2

    .line 4217
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 4219
    .local v1, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 4220
    .local v3, "users":[I
    move v4, v2

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4221
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v3, v4

    .line 4220
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4223
    .end local v1    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 4224
    .end local v3    # "users":[I
    :cond_2
    const/4 v1, 0x1

    new-array v3, v1, [I

    aput p4, v3, v2

    .restart local v3    # "users":[I
    :goto_1
    move-object v1, v3

    .line 4227
    .end local v3    # "users":[I
    .local v1, "users":[I
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v3, :cond_a

    .line 4228
    array-length v3, v1

    .line 4230
    .local v3, "numUsers":I
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_a

    .line 4231
    aget v4, v1, v2

    .line 4233
    .local v4, "thisUserId":I
    iget-object v5, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 4234
    .local v5, "userRestrictions":[Z
    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    .line 4235
    const/16 v6, 0x59

    new-array v5, v6, [Z

    .line 4236
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4238
    :cond_3
    if-eqz v5, :cond_5

    aget-boolean v6, v5, p1

    if-eq v6, p2, :cond_5

    .line 4239
    aput-boolean p2, v5, p1

    .line 4240
    if-nez p2, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4241
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4242
    const/4 v5, 0x0

    .line 4244
    :cond_4
    const/4 v0, 0x1

    .line 4247
    :cond_5
    if-eqz v5, :cond_9

    .line 4248
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    .line 4249
    .local v6, "noExcludedPackages":Z
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    .line 4250
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4252
    :cond_6
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4253
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4252
    invoke-static {p3, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 4254
    if-eqz v6, :cond_7

    .line 4255
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4256
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_8

    .line 4257
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_3

    .line 4260
    :cond_7
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4262
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 4230
    .end local v4    # "thisUserId":I
    .end local v5    # "userRestrictions":[Z
    .end local v6    # "noExcludedPackages":Z
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4268
    .end local v2    # "i":I
    .end local v3    # "numUsers":I
    :cond_a
    return v0
.end method
