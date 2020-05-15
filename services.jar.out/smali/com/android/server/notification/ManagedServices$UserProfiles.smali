.class public Lcom/android/server/notification/ManagedServices$UserProfiles;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProfiles"
.end annotation


# instance fields
.field private final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCurrentProfileIds()[I
    .locals 5

    .line 1275
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1277
    .local v1, "users":[I
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1278
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1279
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 1278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1281
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1282
    .end local v1    # "users":[I
    .end local v2    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1286
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isManagedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1292
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1294
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1295
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCache(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1261
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1262
    .local v0, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_1

    .line 1263
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1264
    .local v1, "currentUserId":I
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1265
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1266
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1267
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1268
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1269
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1270
    :cond_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1272
    .end local v1    # "currentUserId":I
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_1
    return-void
.end method
