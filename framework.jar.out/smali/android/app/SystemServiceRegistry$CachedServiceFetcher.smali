.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCacheIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1071
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    invoke-static {}, Landroid/app/SystemServiceRegistry;->access$008()I

    move-result v0

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    .line 1076
    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 1081
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 1082
    .local v0, "cache":[Ljava/lang/Object;
    iget-object v1, p1, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 1085
    .local v1, "gates":[I
    :goto_0
    const/4 v2, 0x0

    .line 1086
    .local v2, "doInitialize":Z
    monitor-enter v0

    .line 1088
    :try_start_0
    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v3, v0, v3

    .line 1089
    .local v3, "service":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_5

    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto/16 :goto_4

    .line 1098
    :cond_0
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 1099
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    const/4 v7, 0x0

    aput v7, v1, v4

    .line 1106
    :cond_1
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4

    if-nez v4, :cond_2

    .line 1107
    const/4 v2, 0x1

    .line 1108
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    const/4 v7, 0x1

    aput v7, v1, v4

    .line 1110
    .end local v3    # "service":Ljava/lang/Object;, "TT;"
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1112
    if-eqz v2, :cond_3

    .line 1115
    const/4 v3, 0x0

    .line 1116
    .restart local v3    # "service":Ljava/lang/Object;, "TT;"
    move v4, v5

    .line 1120
    .local v4, "newState":I
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1121
    .end local v3    # "service":Ljava/lang/Object;, "TT;"
    .local v5, "service":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x2

    .line 1127
    .end local v4    # "newState":I
    .local v6, "newState":I
    monitor-enter v0

    .line 1128
    :try_start_2
    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v3

    .line 1129
    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v3

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1131
    monitor-exit v0

    .line 1132
    nop

    .line 1133
    move-object v3, v5

    move v4, v6

    goto :goto_1

    .line 1131
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1127
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .end local v6    # "newState":I
    .restart local v3    # "service":Ljava/lang/Object;, "TT;"
    .restart local v4    # "newState":I
    :catchall_1
    move-exception v5

    goto :goto_2

    .line 1123
    :catch_0
    move-exception v5

    .line 1124
    .local v5, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_3
    invoke-static {v5}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1127
    .end local v5    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    monitor-enter v0

    .line 1128
    :try_start_4
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v3, v0, v5

    .line 1129
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v4, v1, v5

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1131
    monitor-exit v0

    .line 1132
    nop

    .line 1133
    :goto_1
    return-object v3

    .line 1131
    :catchall_2
    move-exception v5

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 1127
    :goto_2
    monitor-enter v0

    .line 1128
    :try_start_5
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v3, v0, v6

    .line 1129
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v4, v1, v6

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1131
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v5

    :catchall_3
    move-exception v5

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5

    .line 1137
    .end local v3    # "service":Ljava/lang/Object;, "TT;"
    .end local v4    # "newState":I
    :cond_3
    monitor-enter v0

    .line 1138
    :goto_3
    :try_start_7
    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v3, v1, v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ge v3, v6, :cond_4

    .line 1140
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1145
    goto :goto_3

    .line 1141
    :catch_1
    move-exception v3

    .line 1142
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v4, "SystemServiceRegistry"

    const-string v5, "getService() interrupted"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1144
    const/4 v4, 0x0

    monitor-exit v0

    return-object v4

    .line 1147
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_4
    monitor-exit v0

    .line 1148
    .end local v2    # "doInitialize":Z
    goto/16 :goto_0

    .line 1147
    .restart local v2    # "doInitialize":Z
    :catchall_4
    move-exception v3

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .line 1090
    .local v3, "service":Ljava/lang/Object;, "TT;"
    :cond_5
    :goto_4
    :try_start_a
    monitor-exit v0

    return-object v3

    .line 1110
    .end local v3    # "service":Ljava/lang/Object;, "TT;"
    :catchall_5
    move-exception v3

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v3
.end method
