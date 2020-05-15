.class Landroid/app/LoaderManagerImpl;
.super Landroid/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mCreatingLoader:Z

.field private mHost:Landroid/app/FragmentHostCallback;

.field final mInactiveLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "host"    # Landroid/app/FragmentHostCallback;
    .param p3, "started"    # Z

    .line 547
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    .line 548
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 549
    iput-object p2, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 550
    iput-boolean p3, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 551
    return-void
.end method

.method static synthetic access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;
    .locals 1
    .param p0, "x0"    # Landroid/app/LoaderManagerImpl;

    .line 211
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    return-object v0
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .line 572
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 573
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 574
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    nop

    .line 577
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 575
    return-object v0

    .line 577
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw v0
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .line 563
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 564
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 565
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 566
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 3
    .param p1, "id"    # I

    .line 735
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_4

    .line 739
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 741
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 742
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 743
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 744
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 746
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 747
    if-ltz v0, :cond_2

    .line 748
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 749
    .restart local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 750
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 752
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v1

    if-nez v1, :cond_3

    .line 753
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 755
    :cond_3
    return-void

    .line 736
    .end local v0    # "idx":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doDestroy()V
    .locals 3

    .line 850
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v0, :cond_2

    .line 851
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 853
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 852
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 855
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 858
    :cond_2
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 860
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 859
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 862
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 864
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .line 838
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 839
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    iput-boolean v1, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 838
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 841
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    .line 844
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 845
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 844
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 847
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 4

    .line 811
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_1

    .line 813
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 815
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    return-void

    .line 819
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 820
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 821
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_2

    .line 822
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 821
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 824
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method doStart()V
    .locals 4

    .line 778
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_1

    .line 780
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 782
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    return-void

    .line 786
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 790
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_2

    .line 791
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 790
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 793
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method doStop()V
    .locals 4

    .line 796
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_1

    .line 798
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 800
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    return-void

    .line 804
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 805
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 804
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 807
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 808
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 879
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 880
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "innerPrefix":Ljava/lang/String;
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 883
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 884
    .local v3, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 885
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 882
    .end local v3    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 890
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 893
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 894
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 895
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 892
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 899
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 3

    .line 827
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 828
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 831
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 832
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 831
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 835
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getFragmentHostCallback()Landroid/app/FragmentHostCallback;
    .locals 1

    .line 558
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    return-object v0
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 763
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_2

    .line 767
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 768
    .local v0, "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_1

    .line 769
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 772
    :cond_0
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 774
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 764
    .end local v0    # "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRunningLoaders()Z
    .locals 6

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "loadersRunning":Z
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 904
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "loadersRunning":Z
    :goto_0
    if-ge v0, v1, :cond_1

    .line 905
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 906
    .local v4, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-boolean v5, v4, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    or-int/2addr v3, v5

    .line 904
    .end local v4    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "i":I
    :cond_1
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 617
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_5

    .line 621
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 623
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    if-nez v0, :cond_1

    .line 627
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 628
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    :cond_1
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_2
    iput-object p3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 634
    :cond_3
    :goto_0
    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_4

    .line 636
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 639
    :cond_4
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 618
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 582
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 583
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 589
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 667
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_c

    .line 671
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 672
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restartLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    if-eqz v0, :cond_b

    .line 674
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 675
    .local v1, "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_9

    .line 676
    iget-boolean v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_2

    .line 681
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 683
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 684
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    .line 685
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 690
    :cond_2
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->cancel()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 694
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LoaderManager"

    const-string v4, "  Current loader is stopped; replacing"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_3
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 696
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 701
    :cond_4
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "LoaderManager"

    const-string v4, "  Current loader is running; configuring pending loader"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_5
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_7

    .line 704
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Removing pending loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_6
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 706
    iput-object v3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 708
    :cond_7
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "LoaderManager"

    const-string v3, "  Enqueuing as new pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 711
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v2

    .line 717
    :cond_9
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Making last loader inactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_a
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    .line 719
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    .end local v1    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_b
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 724
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 668
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 869
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 873
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateHostController(Landroid/app/FragmentHostCallback;)V
    .locals 0
    .param p1, "host"    # Landroid/app/FragmentHostCallback;

    .line 554
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 555
    return-void
.end method
