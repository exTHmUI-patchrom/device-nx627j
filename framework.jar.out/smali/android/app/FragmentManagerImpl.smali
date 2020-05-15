.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroid/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/app/FragmentManagerImpl$OpGenerator;,
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAllowOldReentrantBehavior:Z

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroid/app/Fragment;

.field mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 641
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 640
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 692
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 701
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 704
    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 723
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 735
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Landroid/app/FragmentManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/FragmentManagerImpl;

    .line 640
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/app/FragmentManagerImpl;
    .param p1, "x1"    # Landroid/app/BackStackRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 640
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->completeExecute(Landroid/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Landroid/util/ArraySet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2426
    .local p1, "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2427
    return-void

    .line 2430
    :cond_0
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2431
    .local v0, "state":I
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2432
    .local v1, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move v8, v2

    .end local v2    # "i":I
    .local v8, "i":I
    if-ge v8, v1, :cond_2

    .line 2433
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/Fragment;

    .line 2434
    .local v9, "fragment":Landroid/app/Fragment;
    iget v2, v9, Landroid/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    .line 2435
    invoke-virtual {v9}, Landroid/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroid/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 2436
    iget-object v2, v9, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_1

    .line 2437
    invoke-virtual {p1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2432
    .end local v9    # "fragment":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 2441
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private burpActive()V
    .locals 3

    .line 2953
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2954
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2955
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2956
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 2954
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2960
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .line 1885
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_1

    .line 1889
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1893
    return-void

    .line 1890
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .locals 1

    .line 2056
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2057
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2058
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2059
    return-void
.end method

.method private completeExecute(Landroid/app/BackStackRecord;ZZZ)V
    .locals 9
    .param p1, "record"    # Landroid/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .line 2328
    if-eqz p2, :cond_0

    .line 2329
    invoke-virtual {p1, p4}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_0

    .line 2331
    :cond_0
    invoke-virtual {p1}, Landroid/app/BackStackRecord;->executeOps()V

    .line 2333
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2334
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 2335
    .local v8, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    if-eqz p3, :cond_1

    .line 2338
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2340
    :cond_1
    if-eqz p4, :cond_2

    .line 2341
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v2, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2344
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2345
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2346
    .local v1, "numActive":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 2349
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 2350
    .local v4, "fragment":Landroid/app/Fragment;
    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-boolean v5, v4, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v5, :cond_3

    iget v5, v4, Landroid/app/Fragment;->mContainerId:I

    .line 2351
    invoke-virtual {p1, v5}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2352
    iput-boolean v2, v4, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 2346
    .end local v4    # "fragment":Landroid/app/Fragment;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2356
    .end local v1    # "numActive":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private dispatchMoveToState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 3050
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3051
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    goto :goto_0

    .line 3054
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3055
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3058
    nop

    .line 3060
    :goto_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3061
    return-void

    .line 3057
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .locals 4

    .line 2459
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2460
    .local v0, "numFragments":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2461
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2462
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2464
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2460
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2467
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2
    .param p1, "allowStateLoss"    # Z

    .line 2008
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_3

    .line 2012
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2016
    if-nez p1, :cond_0

    .line 2017
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2020
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2024
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2026
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2029
    nop

    .line 2030
    return-void

    .line 2028
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v1

    .line 2013
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2009
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 5
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2403
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2404
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 2405
    .local v1, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2406
    .local v2, "isPop":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2407
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2410
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2411
    .local v3, "moveToState":Z
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    .line 2412
    .end local v3    # "moveToState":Z
    goto :goto_2

    .line 2413
    :cond_1
    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2414
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->executeOps()V

    .line 2403
    .end local v1    # "record":Landroid/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2417
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 17
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 2184
    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    iget-boolean v11, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2185
    .local v11, "allowReordering":Z
    const/4 v0, 0x0

    .line 2186
    .local v0, "addToBackStack":Z
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    .line 2189
    :cond_0
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2191
    :goto_0
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v2, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2192
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 2193
    .local v1, "oldPrimaryNav":Landroid/app/Fragment;
    move v13, v0

    move-object v12, v1

    move v0, v9

    .end local v1    # "oldPrimaryNav":Landroid/app/Fragment;
    .local v0, "recordNum":I
    .local v12, "oldPrimaryNav":Landroid/app/Fragment;
    .local v13, "addToBackStack":Z
    :goto_1
    const/4 v14, 0x1

    if-ge v0, v10, :cond_4

    .line 2194
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 2195
    .local v1, "record":Landroid/app/BackStackRecord;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2196
    .local v2, "isPop":Z
    if-nez v2, :cond_1

    .line 2197
    iget-object v3, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12}, Landroid/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v3

    .line 2201
    .end local v12    # "oldPrimaryNav":Landroid/app/Fragment;
    .local v3, "oldPrimaryNav":Landroid/app/Fragment;
    move-object v12, v3

    goto :goto_2

    .line 2199
    .end local v3    # "oldPrimaryNav":Landroid/app/Fragment;
    .restart local v12    # "oldPrimaryNav":Landroid/app/Fragment;
    :cond_1
    iget-object v3, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V

    .line 2201
    :goto_2
    if-nez v13, :cond_3

    iget-boolean v3, v1, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    nop

    :cond_3
    :goto_3
    move v13, v14

    .line 2193
    .end local v1    # "record":Landroid/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2203
    .end local v0    # "recordNum":I
    :cond_4
    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2205
    if-nez v11, :cond_5

    .line 2206
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2209
    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2211
    move v15, v10

    .line 2212
    .local v15, "postponeIndex":I
    if-eqz v11, :cond_6

    .line 2213
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v0

    .line 2214
    .local v5, "addedFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    invoke-direct {v6, v5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    .line 2215
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v16, v5

    .end local v5    # "addedFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    .local v16, "addedFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I

    move-result v0

    .line 2217
    .end local v15    # "postponeIndex":I
    .local v0, "postponeIndex":I
    move-object/from16 v1, v16

    invoke-direct {v6, v1}, Landroid/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V

    .line 2220
    .end local v16    # "addedFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    move v15, v0

    .end local v0    # "postponeIndex":I
    .restart local v15    # "postponeIndex":I
    :cond_6
    if-eq v15, v9, :cond_7

    if-eqz v11, :cond_7

    .line 2222
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v15

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2224
    iget v0, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v6, v0, v14}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2227
    :cond_7
    move v0, v9

    .local v0, "recordNum":I
    :goto_4
    if-ge v0, v10, :cond_9

    .line 2228
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 2229
    .restart local v1    # "record":Landroid/app/BackStackRecord;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2230
    .restart local v2    # "isPop":Z
    if-eqz v2, :cond_8

    iget v3, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v3, :cond_8

    .line 2231
    iget v3, v1, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v3}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2232
    const/4 v3, -0x1

    iput v3, v1, Landroid/app/BackStackRecord;->mIndex:I

    .line 2234
    :cond_8
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2227
    .end local v1    # "record":Landroid/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2237
    .end local v0    # "recordNum":I
    :cond_9
    if-eqz v13, :cond_a

    .line 2238
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2240
    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2090
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2091
    .local v0, "numPostponed":I
    :goto_0
    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "numPostponed":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 2092
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2093
    .local v3, "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    const/4 v4, -0x1

    if-eqz p1, :cond_1

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2094
    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2095
    .local v5, "index":I
    if-eq v5, v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2096
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2097
    goto :goto_2

    .line 2100
    .end local v5    # "index":I
    :cond_1
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    .line 2101
    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2102
    :cond_2
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2103
    add-int/lit8 v0, v0, -0x1

    .line 2104
    add-int/lit8 v2, v2, -0x1

    .line 2106
    if-eqz p1, :cond_3

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2107
    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    .local v6, "index":I
    if-eq v5, v4, :cond_3

    .line 2108
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2110
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2112
    .end local v6    # "index":I
    :cond_3
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2091
    .end local v3    # "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2116
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 7
    .param p1, "f"    # Landroid/app/Fragment;

    .line 2375
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2376
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 2378
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 2382
    :cond_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2383
    .local v3, "fragmentIndex":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2384
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2385
    .local v5, "underFragment":Landroid/app/Fragment;
    iget-object v6, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_1

    iget-object v6, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2387
    return-object v5

    .line 2383
    .end local v5    # "underFragment":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2390
    .end local v4    # "i":I
    :cond_2
    return-object v2

    .line 2379
    .end local v3    # "fragmentIndex":I
    :cond_3
    :goto_1
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .locals 2

    .line 2447
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2448
    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2449
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2452
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2481
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2482
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2483
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2487
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2488
    .local v1, "numActions":I
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2489
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2491
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2492
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2493
    .end local v1    # "numActions":I
    monitor-exit p0

    .line 2494
    return v0

    .line 2484
    :cond_2
    :goto_1
    monitor-exit p0

    return v2

    .line 2493
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2250
    .local p1, "fragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2251
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2252
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2253
    .local v2, "fragment":Landroid/app/Fragment;
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    .line 2254
    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2255
    .local v3, "view":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 2251
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 7
    .param p0, "anim"    # Landroid/animation/Animator;

    .line 768
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 769
    return v0

    .line 771
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 772
    move-object v1, p0

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 773
    .local v1, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 774
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    move v4, v0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 775
    const-string v5, "alpha"

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 776
    return v2

    .line 774
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v4    # "i":I
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 780
    move-object v1, p0

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 781
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move v3, v0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 782
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 783
    return v2

    .line 781
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 787
    .end local v1    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_5
    :goto_2
    return v0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 870
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 871
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 873
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 876
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v1, v1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 877
    .local v1, "childManager":Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    return v0

    .line 883
    .end local v1    # "childManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    .line 884
    .local v1, "executePop":Z
    if-eqz v1, :cond_1

    .line 885
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 890
    goto :goto_0

    .line 889
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 893
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 894
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 895
    return v1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I
    .locals 8
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2275
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    move v0, p4

    .line 2276
    .local v0, "postponeIndex":I
    add-int/lit8 v1, p4, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_5

    .line 2277
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    .line 2278
    .local v2, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2279
    .local v3, "isPop":Z
    invoke-virtual {v2}, Landroid/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 2280
    invoke-virtual {v2, p1, v4, p4}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    .line 2281
    .local v4, "isPostponed":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 2282
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2283
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2285
    :cond_1
    new-instance v6, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/app/BackStackRecord;Z)V

    .line 2287
    .local v6, "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2288
    invoke-virtual {v2, v6}, Landroid/app/BackStackRecord;->setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2291
    if-eqz v3, :cond_2

    .line 2292
    invoke-virtual {v2}, Landroid/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2294
    :cond_2
    invoke-virtual {v2, v5}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    .line 2298
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 2299
    if-eq v1, v0, :cond_3

    .line 2300
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2301
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2305
    :cond_3
    invoke-direct {p0, p5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    .line 2276
    .end local v2    # "record":Landroid/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "isPostponed":Z
    .end local v6    # "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2308
    .end local v1    # "i":I
    :cond_5
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2134
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2138
    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2143
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2146
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2147
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2148
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2149
    .local v3, "canReorder":Z
    if-nez v3, :cond_3

    .line 2151
    if-eq v1, v2, :cond_1

    .line 2152
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2156
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 2157
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2158
    :goto_1
    if-ge v4, v0, :cond_2

    .line 2159
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2160
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_2

    .line 2161
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2164
    :cond_2
    invoke-direct {p0, p1, p2, v2, v4}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2165
    move v1, v4

    .line 2166
    add-int/lit8 v2, v4, -0x1

    .line 2147
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2169
    .end local v2    # "recordNum":I
    :cond_4
    if-eq v1, v0, :cond_5

    .line 2170
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2172
    :cond_5
    return-void

    .line 2139
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2135
    :cond_7
    :goto_2
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 2
    .param p0, "transit"    # I

    .line 3480
    const/4 v0, 0x0

    .line 3481
    .local v0, "rev":I
    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 3486
    :cond_0
    const/16 v0, 0x1001

    .line 3487
    goto :goto_0

    .line 3489
    :cond_1
    const/16 v0, 0x1003

    goto :goto_0

    .line 3483
    :cond_2
    const/16 v0, 0x2002

    .line 3484
    nop

    .line 3492
    :goto_0
    return v0
.end method

.method private scheduleCommit()V
    .locals 4

    .line 1934
    monitor-enter p0

    .line 1935
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1936
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1937
    .local v0, "postponeReady":Z
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    .line 1938
    .local v1, "pendingReady":Z
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1939
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1940
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1942
    .end local v0    # "postponeReady":Z
    .end local v1    # "pendingReady":Z
    :cond_3
    monitor-exit p0

    .line 1943
    return-void

    .line 1942
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 803
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 809
    :cond_1
    return-void

    .line 804
    :cond_2
    :goto_0
    return-void
.end method

.method private static setRetaining(Landroid/app/FragmentManagerNonConfig;)V
    .locals 4
    .param p0, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .line 2596
    if-nez p0, :cond_0

    .line 2597
    return-void

    .line 2599
    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2600
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v0, :cond_1

    .line 2601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2602
    .local v2, "fragment":Landroid/app/Fragment;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Fragment;->mRetaining:Z

    .line 2603
    .end local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .line 2605
    :cond_1
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2606
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_2

    .line 2607
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerNonConfig;

    .line 2608
    .local v3, "child":Landroid/app/FragmentManagerNonConfig;
    invoke-static {v3}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    .line 2609
    .end local v3    # "child":Landroid/app/FragmentManagerNonConfig;
    goto :goto_1

    .line 2611
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 791
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    .line 795
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    .line 794
    :cond_1
    return v0

    .line 792
    :cond_2
    :goto_0
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 6
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 743
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v0, Landroid/util/LogWriter;

    const-string v1, "FragmentManager"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 745
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 746
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 747
    const-string v3, "FragmentManager"

    const-string v5, "Activity state:"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string v5, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v2

    .line 751
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 752
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 755
    :cond_0
    const-string v3, "FragmentManager"

    const-string v5, "Fragment manager state:"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :try_start_1
    const-string v3, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 761
    goto :goto_1

    .line 758
    :catch_1
    move-exception v2

    .line 759
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 760
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 764
    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 2
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 3497
    const/4 v0, -0x1

    .line 3498
    .local v0, "animAttr":I
    const/16 v1, 0x1001

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_3

    .line 3505
    :cond_0
    if-eqz p1, :cond_1

    .line 3506
    const/4 v1, 0x2

    goto :goto_0

    .line 3507
    :cond_1
    const/4 v1, 0x3

    :goto_0
    move v0, v1

    .line 3508
    goto :goto_3

    .line 3510
    :cond_2
    if-eqz p1, :cond_3

    .line 3511
    const/4 v1, 0x4

    goto :goto_1

    .line 3512
    :cond_3
    const/4 v1, 0x5

    :goto_1
    move v0, v1

    goto :goto_3

    .line 3500
    :cond_4
    if-eqz p1, :cond_5

    .line 3501
    const/4 v1, 0x0

    goto :goto_2

    .line 3502
    :cond_5
    const/4 v1, 0x1

    :goto_2
    move v0, v1

    .line 3503
    nop

    .line 3515
    :goto_3
    return v0
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/app/BackStackRecord;

    .line 2522
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2525
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .line 1714
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1716
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1717
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1720
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1721
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1724
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1725
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1726
    iput-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1728
    :cond_1
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1729
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1731
    :cond_2
    if-eqz p2, :cond_4

    .line 1732
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto :goto_0

    .line 1722
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1718
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1735
    :cond_4
    :goto_0
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .line 910
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 913
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    .line 1946
    monitor-enter p0

    .line 1947
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1957
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1958
    .local v0, "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1960
    monitor-exit p0

    return v0

    .line 1948
    .end local v0    # "index":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1951
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1952
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    monitor-exit p0

    return v0

    .line 1962
    .end local v0    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .locals 2
    .param p2, "container"    # Landroid/app/FragmentContainer;
    .param p3, "parent"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback<",
            "*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2964
    .local p1, "host":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 2965
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 2966
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 2967
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 2968
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    .line 2969
    return-void

    .line 2964
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1811
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 1813
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1814
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 1815
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1818
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1820
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1823
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1824
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    .line 1821
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1816
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1828
    :cond_3
    :goto_0
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    .line 813
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1508
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1509
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1510
    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1509
    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1511
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_3

    .line 1512
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1513
    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_2

    .line 1514
    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1515
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1517
    :cond_0
    iget-object v3, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1518
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1519
    .local v4, "animatingView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1520
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1524
    :cond_1
    new-instance v5, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v5, p0, v3, v4}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1534
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    goto :goto_0

    .line 1536
    :cond_2
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    :goto_0
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1539
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1541
    :cond_3
    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1542
    const/16 v3, 0x8

    goto :goto_1

    .line 1543
    :cond_4
    move v3, v2

    .line 1544
    .local v3, "visibility":I
    :goto_1
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1546
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    .line 1550
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v3    # "visibility":I
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_6

    .line 1551
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1553
    :cond_6
    iput-boolean v2, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1554
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1555
    return-void
.end method

.method public detachFragment(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1793
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1795
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1796
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    .line 1798
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1800
    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1801
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1803
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1805
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    goto :goto_0

    .line 1801
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1808
    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .line 3006
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3007
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3008
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3111
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3112
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3113
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3110
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3116
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3201
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3202
    return v1

    .line 3204
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3205
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3206
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_1

    .line 3207
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3208
    return v2

    .line 3204
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3212
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public dispatchCreate()V
    .locals 1

    .line 3001
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3002
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3003
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3137
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3138
    return v1

    .line 3140
    :cond_0
    const/4 v0, 0x0

    .line 3141
    .local v0, "show":Z
    const/4 v2, 0x0

    .line 3142
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    move-object v3, v2

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "show":Z
    .local v3, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3143
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 3144
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_2

    .line 3145
    invoke-virtual {v4, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3146
    const/4 v2, 0x1

    .line 3147
    if-nez v3, :cond_1

    .line 3148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 3150
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3142
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3155
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3156
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 3157
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3158
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3159
    :cond_4
    invoke-virtual {v1}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    .line 3156
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 3164
    .end local v1    # "i":I
    :cond_6
    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3166
    return v2
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 3033
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3034
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3035
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3036
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 3037
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 3038
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 3039
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .line 3029
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3030
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    .line 3119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3120
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3121
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3122
    invoke-virtual {v1}, Landroid/app/Fragment;->performLowMemory()V

    .line 3119
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3125
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3068
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3069
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3070
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3071
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3068
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3074
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 3078
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3079
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3080
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3081
    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3078
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3084
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3320
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3322
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3323
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3324
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3327
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3328
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3329
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3331
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3332
    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .line 3273
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3274
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3275
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3276
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3277
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 3280
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3281
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3282
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    .line 3284
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3285
    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3304
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3305
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3306
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3307
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3308
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3311
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3312
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3313
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3315
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3316
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3441
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3442
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3443
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3444
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3445
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    .line 3448
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3449
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3450
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3452
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3453
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3456
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3457
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3458
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3459
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3460
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    .line 3463
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3464
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3465
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3467
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3468
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3381
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3383
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3384
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3385
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    .line 3388
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3389
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3390
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3392
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3393
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .line 3258
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3259
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3260
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3261
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3262
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 3265
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3266
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3267
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    .line 3269
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3270
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3289
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3290
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3291
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3292
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3293
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3296
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3297
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3298
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3300
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3301
    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3366
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3367
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3368
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3369
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3370
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    .line 3373
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3374
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3375
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3377
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3378
    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3411
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3412
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3413
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3414
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3415
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3418
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3419
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3420
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3422
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3423
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3351
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3352
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3353
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3354
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3355
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    .line 3358
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3359
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3360
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3362
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3363
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3396
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3397
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3398
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3399
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3400
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    .line 3403
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3404
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3405
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3407
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3408
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    .line 3336
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3338
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3339
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3340
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3343
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3344
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3345
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3347
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3348
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3426
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 3427
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3428
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3429
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3430
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    .line 3433
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3434
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3435
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3437
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_2
    goto :goto_0

    .line 3438
    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3186
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3187
    return v1

    .line 3189
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3190
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3191
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_1

    .line 3192
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3193
    return v2

    .line 3189
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3197
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3216
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3217
    return-void

    .line 3219
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3220
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3221
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 3222
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3219
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3225
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .line 3021
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3022
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3091
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3092
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3093
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3094
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3091
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3097
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 3101
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3102
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3103
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3104
    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3101
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3107
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3170
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3171
    return v1

    .line 3173
    :cond_0
    const/4 v0, 0x0

    .line 3174
    .local v0, "show":Z
    nop

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3175
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 3176
    .local v2, "f":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    .line 3177
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3178
    const/4 v0, 0x1

    .line 3174
    .end local v2    # "f":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3182
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public dispatchResume()V
    .locals 1

    .line 3016
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3017
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3018
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .line 3011
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3012
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3013
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .line 3025
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3026
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .line 3128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3129
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3130
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 3131
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    .line 3128
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3134
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 5

    .line 2498
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_2

    .line 2499
    const/4 v0, 0x0

    .line 2500
    .local v0, "loadersRunning":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "loadersRunning":Z
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2501
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 2502
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v4, :cond_0

    .line 2503
    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v4}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v4

    or-int/2addr v2, v4

    .line 2500
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2506
    .end local v0    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 2507
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2508
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2511
    .end local v2    # "loadersRunning":Z
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 995
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 996
    .local v1, "N":I
    if-lez v1, :cond_1

    .line 997
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    move v3, v2

    .line 1000
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1001
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1002
    .local v4, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1003
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1004
    if-eqz v4, :cond_0

    .line 1005
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1000
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1011
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1012
    .restart local v1    # "N":I
    if-lez v1, :cond_2

    .line 1013
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    move v3, v2

    .line 1015
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1016
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1017
    .restart local v4    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1020
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v4}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    .end local v4    # "f":Landroid/app/Fragment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1025
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1026
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1027
    if-lez v1, :cond_3

    .line 1028
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    move v3, v2

    .line 1029
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 1030
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1031
    .restart local v4    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1032
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    .end local v4    # "f":Landroid/app/Fragment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1037
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1038
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1039
    if-lez v1, :cond_4

    .line 1040
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    move v3, v2

    .line 1041
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 1042
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    .line 1043
    .local v4, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1044
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1041
    .end local v4    # "bs":Landroid/app/BackStackRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1050
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 1051
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 1052
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 1053
    if-lez v1, :cond_5

    .line 1054
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack Indices:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    move v3, v2

    .line 1055
    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v1, :cond_5

    .line 1056
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    .line 1057
    .restart local v4    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1058
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1055
    .end local v4    # "bs":Landroid/app/BackStackRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1063
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1064
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAvailBackStackIndices: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 1070
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1071
    if-lez v1, :cond_7

    .line 1072
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    nop

    .line 1073
    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_7

    .line 1074
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    .line 1075
    .local v3, "r":Landroid/app/FragmentManagerImpl$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1073
    .end local v3    # "r":Landroid/app/FragmentManagerImpl$OpGenerator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1081
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "FragmentManager misc state:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mHost="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mContainer="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1084
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v2, :cond_8

    .line 1085
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mParent="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1087
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mCurState="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1088
    const-string v2, " mStateSaved="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1089
    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1090
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_9

    .line 1091
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1094
    :cond_9
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1095
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNoTransactionsBecause="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    :cond_a
    return-void

    .line 1067
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroid/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1908
    if-nez p2, :cond_0

    .line 1909
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1911
    :cond_0
    monitor-enter p0

    .line 1912
    :try_start_0
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1919
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1922
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    .line 1924
    monitor-exit p0

    .line 1925
    return-void

    .line 1913
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 1915
    monitor-exit p0

    return-void

    .line 1917
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1924
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ensureInflatedFragmentView(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1485
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_1

    .line 1486
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1488
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1489
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1490
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    :cond_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1492
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1495
    :cond_1
    return-void
.end method

.method public execPendingActions()Z
    .locals 4

    .line 2065
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2067
    const/4 v1, 0x0

    .line 2068
    .local v1, "didSomething":Z
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2069
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2071
    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2074
    nop

    .line 2075
    const/4 v1, 0x1

    goto :goto_0

    .line 2073
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2078
    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2079
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 2081
    return v1
.end method

.method public execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroid/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 2033
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 2035
    :cond_0
    return-void

    .line 2037
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2038
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2039
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2041
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2044
    goto :goto_0

    .line 2043
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2047
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2048
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 2049
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 818
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 819
    .local v0, "updates":Z
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 820
    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .line 1832
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1833
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1834
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 1835
    return-object v1

    .line 1832
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1838
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 1840
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1841
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1842
    .restart local v1    # "f":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    .line 1843
    return-object v1

    .line 1840
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1847
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1851
    if-eqz p1, :cond_1

    .line 1853
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1854
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1855
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1856
    return-object v1

    .line 1853
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1860
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1862
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1863
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1864
    .restart local v1    # "f":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1865
    return-object v1

    .line 1862
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1869
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .line 1873
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1874
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1875
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1876
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 1877
    return-object v1

    .line 1874
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1881
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 1991
    monitor-enter p0

    .line 1992
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1993
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1996
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    monitor-exit p0

    .line 1999
    return-void

    .line 1998
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .line 905
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 900
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 934
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 935
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    .line 936
    const/4 v0, 0x0

    return-object v0

    .line 938
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 939
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 940
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 943
    :cond_1
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 951
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .line 3615
    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroid/app/Fragment;
    .locals 1

    .line 3238
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-object v0
.end method

.method getTargetSdk()I
    .locals 3

    .line 2976
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 2977
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2978
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2979
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2980
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 2981
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v2

    .line 2985
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1767
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1772
    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1774
    :cond_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 3472
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3473
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    goto :goto_0

    .line 3475
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 3477
    :goto_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 971
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1156
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 1897
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .line 1102
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1103
    .local v0, "animObj":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 1104
    return-object v0

    .line 1107
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1109
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v2

    .line 1108
    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1110
    .local v1, "anim":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 1111
    return-object v1

    .line 1115
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 1116
    return-object v1

    .line 1119
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 1120
    .local v2, "styleIndex":I
    if-gez v2, :cond_3

    .line 1121
    return-object v1

    .line 1124
    :cond_3
    if-nez p4, :cond_4

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1125
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 1127
    :cond_4
    if-nez p4, :cond_5

    .line 1128
    return-object v1

    .line 1131
    :cond_5
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1133
    .local v3, "attrs":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1134
    .local v4, "anim":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1136
    if-nez v4, :cond_6

    .line 1137
    return-object v1

    .line 1140
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1679
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1680
    return-void

    .line 1683
    :cond_0
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1684
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1685
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1687
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1688
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_2
    return-void
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1692
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1693
    return-void

    .line 1696
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 1705
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1709
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    .line 1711
    return-void
.end method

.method moveFragmentToExpectedState(Landroid/app/Fragment;)V
    .locals 10
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1564
    if-nez p1, :cond_0

    .line 1565
    return-void

    .line 1567
    :cond_0
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1568
    .local v0, "nextState":I
    iget-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1569
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1572
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1576
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1578
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1580
    invoke-direct {p0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v1

    .line 1581
    .local v1, "underFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    .line 1582
    iget-object v4, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1584
    .local v4, "underView":Landroid/view/View;
    iget-object v5, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1585
    .local v5, "container":Landroid/view/ViewGroup;
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 1586
    .local v6, "underIndex":I
    iget-object v7, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1587
    .local v7, "viewIndex":I
    if-ge v7, v6, :cond_3

    .line 1588
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1589
    iget-object v8, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1592
    .end local v4    # "underView":Landroid/view/View;
    .end local v5    # "container":Landroid/view/ViewGroup;
    .end local v6    # "underIndex":I
    .end local v7    # "viewIndex":I
    :cond_3
    iget-boolean v4, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 1594
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 1595
    iput-boolean v2, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1597
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 1598
    .local v2, "anim":Landroid/animation/Animator;
    if-eqz v2, :cond_4

    .line 1599
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1600
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1601
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1605
    .end local v1    # "underFragment":Landroid/app/Fragment;
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_5

    .line 1606
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/app/Fragment;)V

    .line 1608
    :cond_5
    return-void
.end method

.method moveToState(IZ)V
    .locals 7
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1620
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1624
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_2

    .line 1625
    return-void

    .line 1628
    :cond_2
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1630
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 1631
    const/4 v0, 0x0

    .line 1634
    .local v0, "loadersRunning":Z
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1635
    .local v1, "numAdded":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "loadersRunning":Z
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1636
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1637
    .local v4, "f":Landroid/app/Fragment;
    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 1638
    iget-object v5, v4, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_3

    .line 1639
    iget-object v5, v4, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1635
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1645
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1646
    .local v0, "numActive":I
    move v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "loadersRunning":Z
    :goto_2
    if-ge v3, v0, :cond_7

    .line 1647
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 1648
    .local v5, "f":Landroid/app/Fragment;
    if-eqz v5, :cond_6

    iget-boolean v6, v5, Landroid/app/Fragment;->mRemoving:Z

    if-nez v6, :cond_5

    iget-boolean v6, v5, Landroid/app/Fragment;->mDetached:Z

    if-eqz v6, :cond_6

    :cond_5
    iget-boolean v6, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-nez v6, :cond_6

    .line 1649
    invoke-virtual {p0, v5}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 1650
    iget-object v6, v5, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v6, :cond_6

    .line 1651
    iget-object v6, v5, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v6}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v6

    or-int/2addr v4, v6

    .line 1646
    .end local v5    # "f":Landroid/app/Fragment;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1656
    .end local v3    # "i":I
    :cond_7
    if-nez v4, :cond_8

    .line 1657
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1660
    :cond_8
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    .line 1661
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 1662
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1665
    .end local v0    # "numActive":I
    .end local v1    # "numAdded":I
    .end local v4    # "loadersRunning":Z
    :cond_9
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1481
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1482
    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 17
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1162
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    .line 1167
    iget-boolean v0, v8, Landroid/app/Fragment;->mAdded:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    move/from16 v0, p2

    goto :goto_1

    .line 1167
    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v9, :cond_2

    .line 1168
    const/4 v0, 0x1

    .line 1170
    .end local p2    # "newState":I
    .local v0, "newState":I
    :cond_2
    :goto_1
    iget-boolean v1, v8, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_4

    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-le v0, v1, :cond_4

    .line 1171
    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1173
    const/4 v0, 0x1

    goto :goto_2

    .line 1176
    :cond_3
    iget v0, v8, Landroid/app/Fragment;->mState:I

    .line 1181
    :cond_4
    :goto_2
    iget-boolean v1, v8, Landroid/app/Fragment;->mDeferStart:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_5

    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-ge v1, v10, :cond_5

    if-le v0, v11, :cond_5

    .line 1182
    const/4 v0, 0x3

    .line 1184
    :cond_5
    iget v1, v8, Landroid/app/Fragment;->mState:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v1, v0, :cond_21

    .line 1188
    iget-boolean v1, v8, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Landroid/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_6

    .line 1189
    return-void

    .line 1191
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1196
    invoke-virtual {v8, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1199
    :cond_7
    iget v1, v8, Landroid/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    .line 1201
    :pswitch_0
    if-lez v0, :cond_11

    .line 1202
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_8
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 1204
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1206
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1208
    iget-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v1, :cond_9

    .line 1209
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 1212
    :cond_9
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 1214
    iget-boolean v1, v8, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_a

    .line 1215
    iput-boolean v9, v8, Landroid/app/Fragment;->mDeferStart:Z

    .line 1216
    if-le v0, v11, :cond_a

    .line 1217
    const/4 v0, 0x3

    .line 1222
    :cond_a
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, v8, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1223
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v1, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1224
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_b

    .line 1225
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v1, v1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_3

    :cond_b
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v1

    :goto_3
    iput-object v1, v8, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1229
    iget-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v1, :cond_d

    .line 1230
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v2, v2, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-ne v1, v2, :cond_c

    .line 1235
    iget-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v1, v1, Landroid/app/Fragment;->mState:I

    if-ge v1, v9, :cond_d

    .line 1236
    iget-object v2, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_4

    .line 1231
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declared target fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that does not belong to this FragmentManager!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_d
    :goto_4
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 1241
    iput-boolean v14, v8, Landroid/app/Fragment;->mCalled:Z

    .line 1242
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1243
    iget-boolean v1, v8, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_10

    .line 1247
    iget-object v1, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_e

    .line 1248
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    goto :goto_5

    .line 1250
    :cond_e
    iget-object v1, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1252
    :goto_5
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 1254
    iget-boolean v1, v8, Landroid/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_f

    .line 1255
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1256
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1257
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_6

    .line 1259
    :cond_f
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1, v9}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 1260
    iput v9, v8, Landroid/app/Fragment;->mState:I

    .line 1262
    :goto_6
    iput-boolean v14, v8, Landroid/app/Fragment;->mRetaining:Z

    goto :goto_7

    .line 1244
    :cond_10
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " did not call through to super.onAttach()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1269
    .end local v0    # "newState":I
    .local v1, "newState":I
    :cond_11
    :goto_7
    :pswitch_1
    move v1, v0

    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/app/Fragment;)V

    .line 1271
    if-le v1, v9, :cond_1b

    .line 1272
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_12
    iget-boolean v0, v8, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_19

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "container":Landroid/view/ViewGroup;
    iget v2, v8, Landroid/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_15

    .line 1276
    iget v2, v8, Landroid/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 1277
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1282
    :cond_13
    iget-object v2, v7, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v3, v8, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1283
    .end local v0    # "container":Landroid/view/ViewGroup;
    .local v2, "container":Landroid/view/ViewGroup;
    if-nez v2, :cond_14

    iget-boolean v0, v8, Landroid/app/Fragment;->mRestored:Z

    if-nez v0, :cond_14

    .line 1286
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v8, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .local v0, "resName":Ljava/lang/String;
    goto :goto_8

    .line 1287
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v0, "unknown"

    .line 1290
    .local v0, "resName":Ljava/lang/String;
    :goto_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/app/Fragment;->mContainerId:I

    .line 1292
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1290
    invoke-direct {v7, v3}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1297
    .end local v0    # "resName":Ljava/lang/String;
    :cond_14
    move-object v0, v2

    .line 1297
    .end local v2    # "container":Landroid/view/ViewGroup;
    .local v0, "container":Landroid/view/ViewGroup;
    :cond_15
    iput-object v0, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1298
    iget-object v2, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v0, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1300
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 1301
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1302
    if-eqz v0, :cond_16

    .line 1303
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1305
    :cond_16
    iget-boolean v2, v8, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_17

    .line 1306
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    :cond_17
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1309
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v2, v3, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1313
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    goto :goto_9

    :cond_18
    move v9, v14

    :goto_9
    iput-boolean v9, v8, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1318
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_19
    iget-object v0, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1319
    iget-object v0, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1320
    iget-object v0, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 1321
    iget-object v0, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1323
    :cond_1a
    iput-object v13, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1327
    :cond_1b
    move v0, v1

    .line 1327
    .end local v1    # "newState":I
    .local v0, "newState":I
    :pswitch_2
    if-le v0, v12, :cond_1c

    .line 1328
    iput v11, v8, Landroid/app/Fragment;->mState:I

    .line 1332
    :cond_1c
    :pswitch_3
    if-le v0, v11, :cond_1e

    .line 1333
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1d

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performStart()V

    .line 1335
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    .line 1339
    :cond_1e
    :pswitch_4
    if-le v0, v10, :cond_20

    .line 1340
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performResume()V

    .line 1342
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    .line 1344
    iput-object v13, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1345
    iput-object v13, v8, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1473
    :cond_20
    :goto_a
    move/from16 v10, p3

    move/from16 v11, p4

    goto/16 :goto_f

    .line 1348
    :cond_21
    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-le v1, v0, :cond_20

    .line 1349
    iget v1, v8, Landroid/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_a

    .line 1351
    :pswitch_5
    const/4 v1, 0x5

    if-ge v0, v1, :cond_23

    .line 1352
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performPause()V

    .line 1354
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    .line 1358
    :cond_23
    :pswitch_6
    if-ge v0, v10, :cond_25

    .line 1359
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_24

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performStop()V

    .line 1361
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    .line 1366
    :cond_25
    :pswitch_7
    if-ge v0, v12, :cond_2c

    .line 1367
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_26
    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_27

    .line 1371
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v8, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_27

    .line 1372
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1375
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performDestroyView()V

    .line 1376
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    .line 1377
    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    iget-object v1, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2b

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v1

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_28

    .line 1380
    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1381
    iget-object v1, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1383
    :cond_28
    const/4 v1, 0x0

    .line 1384
    .local v1, "anim":Landroid/animation/Animator;
    iget v2, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v2, :cond_29

    iget-boolean v2, v7, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_29

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1385
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1386
    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    .line 1387
    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v7, v8, v10, v14, v11}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_b

    .line 1390
    :cond_29
    move/from16 v10, p3

    move/from16 v11, p4

    .line 1390
    .end local v1    # "anim":Landroid/animation/Animator;
    .local v12, "anim":Landroid/animation/Animator;
    :goto_b
    move-object v12, v1

    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 1391
    if-eqz v12, :cond_2a

    .line 1392
    iget-object v15, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1393
    .local v15, "container":Landroid/view/ViewGroup;
    iget-object v5, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1394
    .local v5, "view":Landroid/view/View;
    move-object v6, v8

    .line 1395
    .local v6, "fragment":Landroid/app/Fragment;
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1396
    invoke-virtual {v8, v12}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1397
    invoke-virtual {v8, v0}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    .line 1398
    new-instance v4, Landroid/app/FragmentManagerImpl$2;

    move-object v1, v4

    move-object v2, v7

    move-object v3, v15

    move-object v9, v4

    move-object v4, v5

    move-object/from16 v16, v5

    move-object v5, v8

    .line 1398
    .end local v5    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    invoke-direct/range {v1 .. v6}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V

    invoke-virtual {v12, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1414
    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v12, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1415
    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v7, v1, v12}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1416
    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    .line 1419
    .end local v6    # "fragment":Landroid/app/Fragment;
    .end local v15    # "container":Landroid/view/ViewGroup;
    .end local v16    # "view":Landroid/view/View;
    :cond_2a
    iget-object v1, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1419
    .end local v12    # "anim":Landroid/animation/Animator;
    goto :goto_c

    .line 1421
    :cond_2b
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_c
    iput-object v13, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1422
    iput-object v13, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1423
    iput-boolean v14, v8, Landroid/app/Fragment;->mInLayout:Z

    goto :goto_d

    .line 1427
    :cond_2c
    :pswitch_8
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_d
    const/4 v1, 0x1

    if-ge v0, v1, :cond_32

    .line 1428
    iget-boolean v1, v7, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v1, :cond_2d

    .line 1429
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    .line 1437
    .restart local v1    # "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1438
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1441
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1446
    invoke-virtual {v8, v0}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    .line 1447
    const/4 v0, 0x1

    goto :goto_f

    .line 1449
    :cond_2e
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_2f
    iget-boolean v1, v8, Landroid/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_30

    .line 1451
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performDestroy()V

    .line 1452
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    goto :goto_e

    .line 1454
    :cond_30
    iput v14, v8, Landroid/app/Fragment;->mState:I

    .line 1457
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performDetach()V

    .line 1458
    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    .line 1459
    if-nez p5, :cond_32

    .line 1460
    iget-boolean v2, v8, Landroid/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_31

    .line 1461
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_f

    .line 1463
    :cond_31
    iput-object v13, v8, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1464
    iput-object v13, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1465
    iput-object v13, v8, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1473
    :cond_32
    :goto_f
    iget v2, v8, Landroid/app/Fragment;->mState:I

    if-eq v2, v0, :cond_33

    .line 1474
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToState: Fragment state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not updated inline; expected state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/app/Fragment;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iput v0, v8, Landroid/app/Fragment;->mState:I

    .line 1478
    :cond_33
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 3

    .line 2989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2990
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2991
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2992
    .local v1, "addedCount":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2993
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2994
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 2995
    invoke-virtual {v2}, Landroid/app/Fragment;->noteStateNotSaved()V

    .line 2992
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2998
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 3520
    move-object/from16 v8, p4

    const-string v0, "fragment"

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3521
    return-object v1

    .line 3524
    :cond_0
    const-string v0, "class"

    invoke-interface {v8, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3525
    .local v0, "fname":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/R$styleable;->Fragment:[I

    .line 3526
    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 3527
    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3528
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3530
    .end local v0    # "fname":Ljava/lang/String;
    .local v11, "fname":Ljava/lang/String;
    :cond_1
    move-object v11, v0

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 3531
    .local v12, "id":I
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3532
    .local v13, "tag":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 3534
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    :cond_2
    move v14, v2

    .line 3535
    .local v14, "containerId":I
    if-ne v14, v0, :cond_4

    if-ne v12, v0, :cond_4

    if-eqz v13, :cond_3

    goto :goto_0

    .line 3536
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3544
    :cond_4
    :goto_0
    if-eq v12, v0, :cond_5

    invoke-virtual {v6, v12}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 3545
    .local v2, "fragment":Landroid/app/Fragment;
    :goto_1
    if-nez v2, :cond_6

    if-eqz v13, :cond_6

    .line 3546
    invoke-virtual {v6, v13}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 3548
    :cond_6
    if-nez v2, :cond_7

    if-eq v14, v0, :cond_7

    .line 3549
    invoke-virtual {v6, v14}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 3552
    :cond_7
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3553
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3552
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :cond_8
    if-nez v2, :cond_a

    .line 3556
    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v0, v7, v11, v1}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 3557
    .end local v2    # "fragment":Landroid/app/Fragment;
    .local v0, "fragment":Landroid/app/Fragment;
    iput-boolean v3, v0, Landroid/app/Fragment;->mFromLayout:Z

    .line 3558
    if-eqz v12, :cond_9

    move v1, v12

    goto :goto_2

    :cond_9
    move v1, v14

    :goto_2
    iput v1, v0, Landroid/app/Fragment;->mFragmentId:I

    .line 3559
    iput v14, v0, Landroid/app/Fragment;->mContainerId:I

    .line 3560
    iput-object v13, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 3561
    iput-boolean v3, v0, Landroid/app/Fragment;->mInLayout:Z

    .line 3562
    iput-object v6, v0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 3563
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, v0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3564
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3565
    invoke-virtual {v6, v0, v3}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 3590
    move-object v5, v0

    goto :goto_3

    .line 3566
    .end local v0    # "fragment":Landroid/app/Fragment;
    .restart local v2    # "fragment":Landroid/app/Fragment;
    :cond_a
    iget-boolean v0, v2, Landroid/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_10

    .line 3576
    iput-boolean v3, v2, Landroid/app/Fragment;->mInLayout:Z

    .line 3577
    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v2, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3581
    iget-boolean v0, v2, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_b

    .line 3582
    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v8, v1}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3590
    :cond_b
    move-object v5, v2

    .line 3590
    .end local v2    # "fragment":Landroid/app/Fragment;
    .local v5, "fragment":Landroid/app/Fragment;
    :goto_3
    iget v0, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v3, :cond_c

    iget-boolean v0, v5, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    .line 3591
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object v0, v6

    move-object v1, v5

    move-object v7, v5

    move v5, v15

    .line 3591
    .end local v5    # "fragment":Landroid/app/Fragment;
    .local v7, "fragment":Landroid/app/Fragment;
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_4

    .line 3593
    .end local v7    # "fragment":Landroid/app/Fragment;
    .restart local v5    # "fragment":Landroid/app/Fragment;
    :cond_c
    move-object v7, v5

    .line 3593
    .end local v5    # "fragment":Landroid/app/Fragment;
    .restart local v7    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v6, v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 3596
    :goto_4
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 3600
    if-eqz v12, :cond_d

    .line 3601
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 3603
    :cond_d
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3604
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3606
    :cond_e
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3597
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3569
    .end local v7    # "fragment":Landroid/app/Fragment;
    .restart local v2    # "fragment":Landroid/app/Fragment;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3571
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 3611
    const/4 v0, 0x0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 7
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1144
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 1145
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1148
    return-void

    .line 1150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 1151
    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1153
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 4

    .line 825
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 826
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 847
    if-ltz p1, :cond_0

    .line 850
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 851
    return-void

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 836
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 837
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .line 830
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 831
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 855
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 856
    if-ltz p1, :cond_0

    .line 859
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 857
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 841
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 842
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2530
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2531
    return v1

    .line 2533
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    .line 2534
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2535
    .local v2, "last":I
    if-gez v2, :cond_1

    .line 2536
    return v1

    .line 2538
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    .end local v2    # "last":I
    goto/16 :goto_4

    .line 2541
    :cond_2
    const/4 v2, -0x1

    .line 2542
    .local v2, "index":I
    if-nez p3, :cond_3

    if-ltz p4, :cond_a

    .line 2545
    :cond_3
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .line 2546
    .end local v2    # "index":I
    .local v3, "index":I
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_0
    if-ltz v2, :cond_6

    .line 2547
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 2548
    .local v3, "bss":Landroid/app/BackStackRecord;
    if-eqz p3, :cond_4

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2549
    goto :goto_1

    .line 2551
    :cond_4
    if-ltz p4, :cond_5

    iget v4, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_5

    .line 2552
    goto :goto_1

    .line 2554
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 2555
    .end local v3    # "bss":Landroid/app/BackStackRecord;
    goto :goto_0

    .line 2556
    :cond_6
    :goto_1
    if-gez v2, :cond_7

    .line 2557
    return v1

    .line 2559
    :cond_7
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_a

    .line 2560
    add-int/lit8 v2, v2, -0x1

    .line 2562
    :goto_2
    if-ltz v2, :cond_a

    .line 2563
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 2564
    .restart local v3    # "bss":Landroid/app/BackStackRecord;
    if-eqz p3, :cond_8

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-ltz p4, :cond_a

    iget v4, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_a

    .line 2566
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 2567
    goto :goto_2

    .line 2573
    .end local v3    # "bss":Landroid/app/BackStackRecord;
    :cond_a
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_b

    .line 2574
    return v1

    .line 2576
    :cond_b
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_3
    if-le v1, v2, :cond_c

    .line 2577
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2581
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_c
    :goto_4
    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .line 925
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 929
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 3243
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1738
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1740
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1749
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1750
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1751
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    .line 1753
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1755
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1756
    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1758
    :cond_3
    return-void

    .line 1751
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .line 918
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 921
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .line 2514
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2516
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2519
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .line 2822
    if-nez p1, :cond_0

    return-void

    .line 2823
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/FragmentManagerState;

    .line 2824
    .local v0, "fms":Landroid/app/FragmentManagerState;
    iget-object v1, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v1, :cond_1

    return-void

    .line 2826
    :cond_1
    const/4 v1, 0x0

    .line 2830
    .local v1, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    .line 2831
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v4

    .line 2832
    .local v4, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2833
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    .line 2834
    .local v5, "count":I
    :goto_0
    move v6, v3

    .line 2834
    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 2835
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    .line 2836
    .local v7, "f":Landroid/app/Fragment;
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_3
    move v8, v3

    .line 2838
    .local v8, "index":I
    :goto_2
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v9, v9, v8

    iget v9, v9, Landroid/app/FragmentState;->mIndex:I

    iget v10, v7, Landroid/app/Fragment;->mIndex:I

    if-eq v9, v10, :cond_4

    .line 2839
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2841
    :cond_4
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v9, v9

    if-ne v8, v9, :cond_5

    .line 2842
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find active fragment with index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2845
    :cond_5
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v9, v9, v8

    .line 2846
    .local v9, "fs":Landroid/app/FragmentState;
    iput-object v7, v9, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2847
    iput-object v2, v7, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2848
    iput v3, v7, Landroid/app/Fragment;->mBackStackNesting:I

    .line 2849
    iput-boolean v3, v7, Landroid/app/Fragment;->mInLayout:Z

    .line 2850
    iput-boolean v3, v7, Landroid/app/Fragment;->mAdded:Z

    .line 2851
    iput-object v2, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2852
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v10, :cond_6

    .line 2853
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2854
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v7, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2856
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v10, v7, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2834
    .end local v7    # "f":Landroid/app/Fragment;
    .end local v8    # "index":I
    .end local v9    # "fs":Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 2863
    .end local v4    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_7
    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 2864
    move v4, v3

    .line 2864
    .local v4, "i":I
    :goto_3
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 2865
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v5, v5, v4

    .line 2866
    .local v5, "fs":Landroid/app/FragmentState;
    if-eqz v5, :cond_a

    .line 2867
    const/4 v6, 0x0

    .line 2868
    .local v6, "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 2869
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/app/FragmentManagerNonConfig;

    .line 2871
    :cond_8
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    move-result-object v7

    .line 2872
    .restart local v7    # "f":Landroid/app/Fragment;
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreAllState: active #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_9
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v9, v7, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2877
    iput-object v2, v5, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2864
    .end local v5    # "fs":Landroid/app/FragmentState;
    .end local v6    # "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    .end local v7    # "f":Landroid/app/Fragment;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2882
    .end local v4    # "i":I
    :cond_b
    if-eqz p2, :cond_e

    .line 2883
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v4

    .line 2884
    .local v4, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_4

    :cond_c
    move v5, v3

    .line 2885
    .local v5, "count":I
    :goto_4
    move v6, v3

    .line 2885
    .local v6, "i":I
    :goto_5
    if-ge v6, v5, :cond_e

    .line 2886
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    .line 2887
    .restart local v7    # "f":Landroid/app/Fragment;
    iget v8, v7, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v8, :cond_d

    .line 2888
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v9, v7, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Fragment;

    iput-object v8, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2889
    iget-object v8, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-nez v8, :cond_d

    .line 2890
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Re-attaching retained fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " target no longer exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    iput-object v2, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2885
    .end local v7    # "f":Landroid/app/Fragment;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2899
    .end local v4    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_e
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2900
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v4, :cond_12

    .line 2901
    move v4, v3

    .line 2901
    .local v4, "i":I
    :goto_6
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 2902
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v6, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2903
    .local v5, "f":Landroid/app/Fragment;
    if-nez v5, :cond_f

    .line 2904
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No instantiated fragment for index #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2907
    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/app/Fragment;->mAdded:Z

    .line 2908
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_10

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: added #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_10
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 2912
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2913
    :try_start_0
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2914
    monitor-exit v6

    .line 2901
    .end local v5    # "f":Landroid/app/Fragment;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2914
    .restart local v5    # "f":Landroid/app/Fragment;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2910
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already added!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2919
    .end local v4    # "i":I
    .end local v5    # "f":Landroid/app/Fragment;
    :cond_12
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v4, :cond_15

    .line 2920
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v4, v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2921
    move v2, v3

    .line 2921
    .local v2, "i":I
    :goto_7
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v4, v4

    if-ge v2, v4, :cond_16

    .line 2922
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v4

    .line 2923
    .local v4, "bse":Landroid/app/BackStackRecord;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_13

    .line 2924
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    new-instance v5, Landroid/util/LogWriter;

    const/4 v6, 0x2

    const-string v7, "FragmentManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 2927
    .local v5, "logw":Landroid/util/LogWriter;
    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v3, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2928
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string v7, "  "

    invoke-virtual {v4, v7, v6, v3}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2929
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 2931
    .end local v5    # "logw":Landroid/util/LogWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_13
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2932
    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_14

    .line 2933
    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v4}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 2921
    .end local v4    # "bse":Landroid/app/BackStackRecord;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2937
    .end local v2    # "i":I
    :cond_15
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2940
    :cond_16
    iget v2, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v2, :cond_17

    .line 2941
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v3, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    .line 2944
    :cond_17
    iget v2, v0, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v2, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 2945
    return-void
.end method

.method retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .locals 1

    .line 2585
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    .line 2586
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 11

    .line 2711
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2712
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2713
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2715
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2716
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2718
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 2723
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2724
    .local v1, "N":I
    new-array v2, v1, [Landroid/app/FragmentState;

    .line 2725
    .local v2, "active":[Landroid/app/FragmentState;
    const/4 v3, 0x0

    .line 2726
    .local v3, "haveFragments":Z
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .line 2726
    .local v3, "i":I
    .local v5, "haveFragments":Z
    :goto_0
    if-ge v3, v1, :cond_7

    .line 2727
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 2728
    .local v6, "f":Landroid/app/Fragment;
    if-eqz v6, :cond_6

    .line 2729
    iget v7, v6, Landroid/app/Fragment;->mIndex:I

    if-gez v7, :cond_1

    .line 2730
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2735
    :cond_1
    const/4 v5, 0x1

    .line 2737
    new-instance v7, Landroid/app/FragmentState;

    invoke-direct {v7, v6}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 2738
    .local v7, "fs":Landroid/app/FragmentState;
    aput-object v7, v2, v3

    .line 2740
    iget v8, v6, Landroid/app/Fragment;->mState:I

    if-lez v8, :cond_4

    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_4

    .line 2741
    invoke-virtual {p0, v6}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2743
    iget-object v8, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v8, :cond_5

    .line 2744
    iget-object v8, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v8, v8, Landroid/app/Fragment;->mIndex:I

    if-gez v8, :cond_2

    .line 2745
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2749
    :cond_2
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_3

    .line 2750
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2752
    :cond_3
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 2754
    iget v8, v6, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_5

    .line 2755
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v6, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2762
    :cond_4
    iget-object v8, v6, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2765
    :cond_5
    :goto_1
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    .end local v6    # "f":Landroid/app/Fragment;
    .end local v7    # "fs":Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2770
    .end local v3    # "i":I
    :cond_7
    if-nez v5, :cond_9

    .line 2771
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "FragmentManager"

    const-string/jumbo v4, "saveAllState: no fragments!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_8
    return-object v0

    .line 2775
    :cond_9
    const/4 v0, 0x0

    .line 2776
    .local v0, "added":[I
    const/4 v3, 0x0

    .line 2779
    .local v3, "backStack":[Landroid/app/BackStackState;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2780
    if-lez v1, :cond_c

    .line 2781
    new-array v0, v1, [I

    .line 2782
    move v6, v4

    .line 2782
    .local v6, "i":I
    :goto_2
    if-ge v6, v1, :cond_c

    .line 2783
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    iget v7, v7, Landroid/app/Fragment;->mIndex:I

    aput v7, v0, v6

    .line 2784
    aget v7, v0, v6

    if-gez v7, :cond_a

    .line 2785
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2786
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2785
    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2789
    :cond_a
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveAllState: adding fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2790
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2789
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2795
    .end local v6    # "i":I
    :cond_c
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    .line 2796
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2797
    if-lez v1, :cond_e

    .line 2798
    new-array v3, v1, [Landroid/app/BackStackState;

    .line 2799
    nop

    .line 2799
    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_e

    .line 2800
    new-instance v6, Landroid/app/BackStackState;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BackStackRecord;

    invoke-direct {v6, p0, v7}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v6, v3, v4

    .line 2801
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2802
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2801
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2807
    .end local v4    # "i":I
    :cond_e
    new-instance v4, Landroid/app/FragmentManagerState;

    invoke-direct {v4}, Landroid/app/FragmentManagerState;-><init>()V

    .line 2808
    .local v4, "fms":Landroid/app/FragmentManagerState;
    iput-object v2, v4, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 2809
    iput-object v0, v4, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 2810
    iput-object v3, v4, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 2811
    iget v6, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v6, v4, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 2812
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v6, :cond_f

    .line 2813
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    iput v6, v4, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 2815
    :cond_f
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2816
    return-object v4

    .line 2719
    .end local v0    # "added":[I
    .end local v1    # "N":I
    .end local v2    # "active":[Landroid/app/FragmentState;
    .end local v3    # "backStack":[Landroid/app/BackStackState;
    .end local v4    # "fms":Landroid/app/FragmentManagerState;
    .end local v5    # "haveFragments":Z
    :cond_10
    :goto_4
    return-object v0
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .line 2675
    const/4 v0, 0x0

    .line 2677
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2678
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2680
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2681
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2682
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2683
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2684
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2687
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2688
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 2690
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2691
    if-nez v0, :cond_3

    .line 2692
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2694
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2697
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 2698
    if-nez v0, :cond_5

    .line 2699
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2702
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2705
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 958
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 959
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 962
    :cond_0
    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 963
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 964
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    nop

    :cond_1
    return-object v1

    .line 966
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/app/Fragment;

    .line 2659
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2660
    return-void

    .line 2662
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2663
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 2665
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2667
    :goto_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2668
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2669
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2670
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2672
    :cond_2
    return-void
.end method

.method saveNonConfig()V
    .locals 9

    .line 2614
    const/4 v0, 0x0

    .line 2615
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2616
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 2617
    const/4 v2, 0x0

    move-object v4, v1

    move-object v1, v0

    move v0, v2

    .line 2617
    .local v0, "i":I
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v4, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    :goto_0
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 2618
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2619
    .local v5, "f":Landroid/app/Fragment;
    if-eqz v5, :cond_5

    .line 2620
    iget-boolean v6, v5, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_2

    .line 2621
    if-nez v1, :cond_0

    .line 2622
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 2624
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    iget-object v6, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    iput v6, v5, Landroid/app/Fragment;->mTargetIndex:I

    .line 2626
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retainNonConfig: keeping retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_2
    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v6, :cond_3

    .line 2630
    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2631
    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2631
    .local v6, "child":Landroid/app/FragmentManagerNonConfig;
    goto :goto_2

    .line 2635
    .end local v6    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_3
    iget-object v6, v5, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2638
    .restart local v6    # "child":Landroid/app/FragmentManagerNonConfig;
    :goto_2
    if-nez v4, :cond_4

    if-eqz v6, :cond_4

    .line 2639
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 2640
    move v7, v2

    .line 2640
    .local v7, "j":I
    :goto_3
    if-ge v7, v0, :cond_4

    .line 2641
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2645
    .end local v7    # "j":I
    :cond_4
    if-eqz v4, :cond_5

    .line 2646
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    .end local v5    # "f":Landroid/app/Fragment;
    .end local v6    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2651
    .end local v0    # "i":I
    :cond_6
    move-object v0, v1

    move-object v1, v4

    .line 2651
    .end local v4    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 2652
    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_4

    .line 2654
    :cond_8
    new-instance v2, Landroid/app/FragmentManagerNonConfig;

    invoke-direct {v2, v0, v1}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2656
    :goto_4
    return-void
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .line 1966
    monitor-enter p0

    .line 1967
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1970
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1971
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 1972
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1975
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 1976
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1980
    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1984
    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    .end local v0    # "N":I
    :goto_1
    monitor-exit p0

    .line 1988
    return-void

    .line 1987
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryNavigationFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .line 3229
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 3230
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3234
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    .line 3235
    return-void
.end method

.method public showFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1783
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    .line 1785
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1788
    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1790
    :cond_1
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 2

    .line 1668
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1670
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1671
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1672
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 1673
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1670
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1676
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 977
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 983
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 985
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3247
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 3248
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3249
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    .line 3250
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3251
    goto :goto_1

    .line 3248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3254
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 3255
    return-void

    .line 3254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
