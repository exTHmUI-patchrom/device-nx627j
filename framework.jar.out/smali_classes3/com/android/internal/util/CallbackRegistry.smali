.class public Lcom/android/internal/util/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "notifier":Lcom/android/internal/util/CallbackRegistry$NotifierCallback;, "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<TC;TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 78
    iput-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    .line 79
    return-void
.end method

.method private isRemovedLocked(I)Z
    .locals 11
    .param p1, "index"    # I

    .line 229
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-ge p1, v5, :cond_1

    .line 231
    shl-long/2addr v2, p1

    .line 232
    .local v2, "bitMask":J
    iget-wide v7, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    and-long/2addr v7, v2

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    return v4

    .line 233
    .end local v2    # "bitMask":J
    :cond_1
    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v5, :cond_2

    .line 235
    return v6

    .line 237
    :cond_2
    div-int/lit8 v5, p1, 0x40

    sub-int/2addr v5, v4

    .line 238
    .local v5, "maskIndex":I
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v7, v7

    if-lt v5, v7, :cond_3

    .line 240
    return v6

    .line 243
    :cond_3
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v7, v7, v5

    .line 244
    .local v7, "bits":J
    rem-int/lit8 v9, p1, 0x40

    shl-long/2addr v2, v9

    .line 245
    .restart local v2    # "bitMask":J
    and-long v9, v7, v2

    cmp-long v0, v9, v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    return v4
.end method

.method private notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 7
    .param p2, "arg"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I
    .param p6, "bits"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v0, 0x1

    .line 202
    .local v0, "bitMask":J
    move-wide v1, v0

    move v0, p4

    .local v0, "i":I
    .local v1, "bitMask":J
    :goto_0
    if-ge v0, p5, :cond_1

    .line 203
    and-long v3, p6, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 206
    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v1, v3

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .local v0, "maxNotified":I
    iget-wide v8, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 125
    return-void
.end method

.method private notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 11
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    move v9, v1

    .line 148
    .local v9, "remainderIndex":I
    invoke-direct {p0, p1, p2, p3, v9}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 152
    add-int/lit8 v1, v9, 0x2

    mul-int/lit8 v10, v1, 0x40

    .line 155
    .local v10, "startCallbackIndex":I
    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, v10

    move v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 156
    return-void
.end method

.method private notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 15
    .param p2, "arg"    # I
    .param p4, "remainderIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    move-object v8, p0

    .line 171
    if-gez p4, :cond_0

    .line 172
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/util/CallbackRegistry;->notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 180
    move-object/from16 v13, p1

    move/from16 v14, p2

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, v8, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v9, v0, p4

    .line 175
    .local v9, "bits":J
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v11, v0, 0x40

    .line 176
    .local v11, "startIndex":I
    iget-object v0, v8, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v11, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 177
    .local v12, "endIndex":I
    add-int/lit8 v0, p4, -0x1

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v6, p3

    invoke-direct {v8, v13, v14, v6, v0}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 178
    move-object v0, v8

    move-object v1, v13

    move v2, v14

    move-object v3, v6

    move v4, v11

    move v5, v12

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 180
    .end local v9    # "bits":J
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    :goto_0
    return-void
.end method

.method private removeRemovedCallbacks(IJ)V
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "removed"    # J

    .line 259
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    add-int/lit8 v0, p1, 0x40

    .line 261
    .local v0, "endIndex":I
    const-wide/high16 v1, -0x8000000000000000L

    .line 262
    .local v1, "bitMask":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, p1, :cond_1

    .line 263
    and-long v4, p2, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_0
    const/4 v4, 0x1

    ushr-long/2addr v1, v4

    .line 262
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 268
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private setRemovalBitLocked(I)V
    .locals 7
    .param p1, "index"    # I

    .line 286
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_0

    .line 288
    shl-long/2addr v0, p1

    .line 289
    .local v0, "bitMask":J
    iget-wide v2, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 290
    .end local v0    # "bitMask":J
    goto :goto_1

    .line 291
    :cond_0
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 292
    .local v3, "remainderIndex":I
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v2, v4, [J

    iput-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    goto :goto_0

    .line 294
    :cond_1
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v4, v4

    if-ge v4, v3, :cond_2

    .line 296
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v2, v4, [J

    .line 297
    .local v2, "newRemainders":[J
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    .line 300
    .end local v2    # "newRemainders":[J
    :cond_2
    :goto_0
    rem-int/lit8 v2, p1, 0x40

    shl-long/2addr v0, v2

    .line 301
    .restart local v0    # "bitMask":J
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, v2, v3

    or-long/2addr v4, v0

    aput-wide v4, v2, v3

    .line 303
    .end local v0    # "bitMask":J
    .end local v3    # "remainderIndex":I
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    monitor-exit p0

    return-void

    .line 215
    .end local v0    # "index":I
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 346
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 350
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 353
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw v0
.end method

.method public declared-synchronized clone()Lcom/android/internal/util/CallbackRegistry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/CallbackRegistry<",
            "TC;TT;TA;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 356
    const/4 v0, 0x0

    move-object v1, v0

    .line 358
    .local v1, "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/CallbackRegistry;

    move-object v1, v2

    .line 359
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 360
    iput-object v0, v1, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    .line 361
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 363
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 364
    .local v2, "numListeners":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 365
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    iget-object v3, v1, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_1
    goto :goto_1

    .line 355
    .end local v1    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 369
    .restart local v1    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 355
    .end local v1    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/CallbackRegistry;->clone()Lcom/android/internal/util/CallbackRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copyListeners()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 311
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 313
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 314
    invoke-direct {p0, v2}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 310
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 5

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 328
    monitor-exit p0

    return v1

    .line 329
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 330
    monitor-exit p0

    return v2

    .line 332
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 333
    .local v0, "numListeners":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 334
    invoke-direct {p0, v3}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 335
    monitor-exit p0

    return v2

    .line 333
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    .end local v3    # "i":I
    :cond_3
    monitor-exit p0

    return v1

    .line 326
    .end local v0    # "numListeners":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw v0
.end method

.method public declared-synchronized notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 94
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 95
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v3, v3, v0

    .line 99
    .local v3, "removedBits":J
    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 100
    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x40

    invoke-direct {p0, v5, v3, v4}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 101
    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aput-wide v1, v5, v0

    .line 97
    .end local v3    # "removedBits":J
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_1
    iget-wide v3, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x0

    iget-wide v3, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 107
    iput-wide v1, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_2
    monitor-exit p0

    return-void

    .line 91
    .end local p1    # "sender":Ljava/lang/Object;, "TT;"
    .end local p2    # "arg":I
    .end local p3    # "arg2":Ljava/lang/Object;, "TA;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 275
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 279
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v0    # "index":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    throw p1
.end method
