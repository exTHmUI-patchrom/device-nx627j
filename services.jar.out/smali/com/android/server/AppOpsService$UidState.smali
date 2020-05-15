.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidState"
.end annotation


# instance fields
.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public startNesting:I

.field public state:I

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 336
    iput v0, p0, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 348
    iput p1, p0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 349
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 5
    .param p1, "op"    # I
    .param p3, "which"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 371
    .local p2, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 372
    .local v0, "curValue":Z
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 373
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "cbi":I
    :goto_0
    if-nez v0, :cond_1

    if-ltz v2, :cond_1

    .line 375
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    iget v4, v4, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 377
    iput-boolean v3, p0, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 378
    const/4 v0, 0x1

    .line 374
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 382
    .end local v2    # "cbi":I
    :cond_1
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 383
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 353
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 354
    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 386
    .local p1, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    .line 387
    .local v0, "which":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 388
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 390
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 391
    if-nez v0, :cond_0

    .line 392
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v3

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 389
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 398
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6

    .line 399
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 400
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 401
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v3}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2
    if-ltz v4, :cond_5

    .line 402
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    iget v5, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v5, v2, :cond_4

    .line 403
    if-nez v0, :cond_3

    .line 404
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v5

    .line 406
    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v0}, Lcom/android/server/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 401
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 399
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 411
    .end local v1    # "i":I
    :cond_6
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 412
    return-void
.end method

.method evalMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 362
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 363
    iget v0, p0, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 364
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 366
    :cond_1
    return p1
.end method

.method public isDefault()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 358
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 357
    :goto_1
    return v0
.end method
