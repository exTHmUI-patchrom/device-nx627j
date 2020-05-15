.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;,
        Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnWindowShownListener;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    }
.end annotation


# static fields
.field private static sIllegalOnDrawModificationIsFatal:Z


# instance fields
.field private mAlive:Z

.field private mInDispatchOnDraw:Z

.field private mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewTreeObserver$OnDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnWindowAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnWindowShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowShown:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 336
    nop

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    .line 338
    return-void
.end method

.method private checkIsAlive()V
    .locals 2

    .line 849
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-eqz v0, :cond_0

    .line 853
    return-void

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private kill()V
    .locals 1

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 876
    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 795
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 797
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 803
    return-void
.end method

.method public addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 669
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 671
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 675
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v0, :cond_2

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call addOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-nez v1, :cond_1

    .line 681
    const-string v1, "ViewTreeObserver"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 679
    .restart local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    throw v0

    .line 684
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method public addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 829
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 830
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 834
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 509
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 511
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 544
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 546
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 594
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 596
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 723
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 725
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 729
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 730
    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 757
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 759
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 763
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method public addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 439
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 441
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 446
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 474
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 476
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .line 629
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 631
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 636
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    if-eqz v0, :cond_1

    .line 637
    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V

    .line 639
    :cond_1
    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 1080
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1082
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1083
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1085
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1086
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1087
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1090
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1091
    goto :goto_1

    .line 1090
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    .line 1093
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchOnDraw()V
    .locals 5

    .line 1015
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    .line 1017
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 1018
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1019
    .local v1, "numListeners":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1020
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1022
    .end local v3    # "i":I
    :cond_0
    iput-boolean v2, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    .line 1024
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method public final dispatchOnEnterAnimationComplete()V
    .locals 3

    .line 1103
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1105
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 1107
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;->onEnterAnimationComplete()V

    .line 1108
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    goto :goto_0

    .line 1110
    :cond_0
    return-void
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .line 921
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 922
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 923
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 924
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    invoke-interface {v2, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    .line 925
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    goto :goto_0

    .line 927
    :cond_0
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .locals 5

    .line 939
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 940
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 941
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 943
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 944
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 945
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 948
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 949
    goto :goto_1

    .line 948
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    .line 951
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchOnPreDraw()Z
    .locals 8

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "cancelDraw":Z
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 972
    .local v1, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 973
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v2

    .line 975
    .local v2, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v3

    .line 976
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 978
    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 979
    const-string v5, "ViewTreeObserver"

    const-string v6, "dispatchOnPreDraw, OnPreDrawListener is null!"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 981
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v0, v5

    .line 976
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 984
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 985
    goto :goto_2

    .line 984
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v3

    .line 987
    .end local v2    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :cond_2
    :goto_2
    return v0
.end method

.method final dispatchOnScrollChanged()V
    .locals 5

    .line 1049
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1050
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1051
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1053
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1054
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1055
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1059
    goto :goto_1

    .line 1058
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    .line 1061
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .locals 3
    .param p1, "inTouchMode"    # Z

    .line 1032
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1034
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1035
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 1036
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    .line 1037
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    goto :goto_0

    .line 1039
    :cond_0
    return-void
.end method

.method final dispatchOnWindowAttachedChange(Z)V
    .locals 3
    .param p1, "attached"    # Z

    .line 886
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 888
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowAttachListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 889
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 890
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    if-eqz p1, :cond_0

    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    goto :goto_1

    .line 891
    :cond_0
    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    .line 892
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    :goto_1
    goto :goto_0

    .line 894
    :cond_1
    return-void
.end method

.method final dispatchOnWindowFocusChange(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .line 904
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 906
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 907
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 908
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    .line 909
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    goto :goto_0

    .line 911
    :cond_0
    return-void
.end method

.method public final dispatchOnWindowShown()V
    .locals 5

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    .line 997
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 998
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1001
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1002
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1003
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1006
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1007
    goto :goto_1

    .line 1006
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    .line 1009
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method final hasComputeInternalInsetsListeners()Z
    .locals 2

    .line 1067
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1069
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final hasOnPreDrawListeners()Z
    .locals 1

    .line 957
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    .line 865
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/ViewTreeObserver;

    .line 348
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 356
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 360
    :cond_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 364
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 368
    :cond_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 372
    :cond_5
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_7

    .line 373
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_6

    .line 374
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_3

    .line 376
    :cond_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 380
    :cond_7
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_8

    .line 382
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_4

    .line 384
    :cond_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 388
    :cond_9
    :goto_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 389
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 390
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 392
    :cond_a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 396
    :cond_b
    :goto_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_d

    .line 397
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_c

    .line 398
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 400
    :cond_c
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 404
    :cond_d
    :goto_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_f

    .line 405
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_e

    .line 406
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_7

    .line 408
    :cond_e
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 412
    :cond_f
    :goto_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_11

    .line 413
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_10

    .line 414
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_8

    .line 416
    :cond_10
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 420
    :cond_11
    :goto_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_13

    .line 421
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_12

    .line 422
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_9

    .line 424
    :cond_12
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 428
    :cond_13
    :goto_9
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    .line 429
    return-void
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 567
    return-void
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 818
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 819
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 820
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 823
    return-void
.end method

.method public removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 699
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 700
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 701
    return-void

    .line 703
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v0, :cond_2

    .line 704
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call removeOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 706
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-nez v1, :cond_1

    .line 709
    const-string v1, "ViewTreeObserver"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 707
    .restart local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    throw v0

    .line 712
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 713
    return-void
.end method

.method public removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 841
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 842
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 843
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 528
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 529
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 530
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 579
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 580
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 613
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 614
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 615
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 618
    return-void
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 742
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 743
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 747
    return-void
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 776
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 777
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 778
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method public removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 459
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 460
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 461
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 494
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 495
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method public removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .line 652
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 653
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 657
    return-void
.end method
