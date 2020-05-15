.class public Lcn/nubia/server/screenswitch/SwitchCallbackList;
.super Ljava/lang/Object;
.source "SwitchCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenSwitchService"


# instance fields
.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcn/nubia/server/screenswitch/SwitchCallbackList<",
            "TE;>.Callback;>;"
        }
    .end annotation
.end field

.field private mKilled:Z

.field private mRecentCallers:Ljava/lang/StringBuilder;

.field private mResults:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mBroadcastCount:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mKilled:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/screenswitch/SwitchCallbackList;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static synthetic lambda$resetResults$0(Lcn/nubia/server/screenswitch/SwitchCallbackList;Landroid/os/IInterface;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/IInterface;

    .line 62
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private logExcessiveCallbacks()V
    .locals 10

    .line 228
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    int-to-long v0, v0

    .line 229
    .local v0, "size":J
    const-wide/16 v2, 0xbb8

    .line 230
    .local v2, "TOO_MANY":J
    const-wide/16 v4, 0x3e8

    .line 231
    .local v4, "MAX_CHARS":J
    const-wide/16 v6, 0xbb8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_1

    .line 232
    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-nez v6, :cond_0

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    iget-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 236
    iget-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    iget-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 239
    const-string v6, "ScreenSwitchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "More than 3000 remote callbacks registered. Recent callers:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v6, 0x0

    iput-object v6, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    return-void
.end method


# virtual methods
.method public beginBroadcast()I
    .locals 5

    .line 141
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 142
    :try_start_0
    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mBroadcastCount:I

    if-gtz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mBroadcastCount:I

    .line 148
    .local v1, "N":I
    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 149
    monitor-exit v0

    return v2

    .line 151
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 152
    .local v3, "active":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-ge v4, v1, :cond_2

    .line 153
    :cond_1
    new-array v4, v1, [Ljava/lang/Object;

    move-object v3, v4

    iput-object v4, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 155
    :cond_2
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 156
    iget-object v4, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0

    return v1

    .line 143
    .end local v1    # "N":I
    .end local v3    # "active":[Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public broadcast(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TE;>;"
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->beginBroadcast()I

    move-result v0

    .line 192
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {p0, v1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->finishBroadcast()V

    .line 197
    nop

    .line 198
    return-void
.end method

.method public checkComplete()Z
    .locals 4

    .line 76
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    const/4 v0, 0x1

    .line 77
    .local v0, "result":Z
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 79
    .local v3, "tmp":Z
    and-int/2addr v0, v3

    .line 80
    .end local v3    # "tmp":Z
    goto :goto_0

    .line 81
    :cond_0
    monitor-exit v1

    .line 82
    return v0

    .line 81
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public finishBroadcast()V
    .locals 5

    .line 171
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 172
    :try_start_0
    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mBroadcastCount:I

    if-ltz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 178
    .local v1, "active":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 179
    iget v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mBroadcastCount:I

    .line 180
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 181
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mBroadcastCount:I

    .line 186
    .end local v1    # "active":[Ljava/lang/Object;
    monitor-exit v0

    .line 187
    return-void

    .line 173
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBroadcastCookie(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 167
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public getRegisteredCallbackCookie(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 219
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mKilled:Z

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 223
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCookie:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRegisteredCallbackCount()I
    .locals 2

    .line 201
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mKilled:Z

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 205
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRegisteredCallbackItem(I)Landroid/os/IInterface;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mKilled:Z

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 214
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public kill()V
    .locals 6

    .line 122
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "cbi":I
    :goto_0
    if-ltz v1, :cond_0

    .line 124
    iget-object v3, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    .line 125
    .local v3, "cb":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    iget-object v4, v3, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 123
    .end local v3    # "cb":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 127
    .end local v1    # "cbi":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 128
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 129
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mKilled:Z

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    return-void
.end method

.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 138
    return-void
.end method

.method public register(Landroid/os/IInterface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .locals 8
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mKilled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 92
    monitor-exit v0

    return v2

    .line 95
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->logExcessiveCallbacks()V

    .line 96
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_1
    new-instance v3, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    invoke-direct {v3, p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;-><init>(Lcn/nubia/server/screenswitch/SwitchCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 99
    .local v3, "cb":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 100
    iget-object v4, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v4, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    monitor-exit v0

    return v6

    .line 103
    .end local v3    # "cb":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v2

    .line 106
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public resetResults()V
    .locals 2

    .line 59
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 61
    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchCallbackList$DPsANvjQcXpDpiljQHfaQC5fEKY;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchCallbackList$DPsANvjQcXpDpiljQHfaQC5fEKY;-><init>(Lcn/nubia/server/screenswitch/SwitchCallbackList;)V

    invoke-virtual {p0, v1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;

    .line 112
    .local v1, "cb":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    iget-object v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 114
    iget-object v3, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 115
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 117
    :cond_0
    monitor-exit v0

    return v2

    .line 118
    .end local v1    # "cb":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateResult(Landroid/os/IInterface;Z)V
    .locals 3
    .param p2, "result"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    if-nez p1, :cond_0

    .line 69
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update result callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
