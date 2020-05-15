.class Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/app/BackStackRecord;Z)V
    .locals 0
    .param p1, "record"    # Landroid/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .line 3680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3681
    iput-boolean p2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3682
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 3683
    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 3674
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;
    .locals 1
    .param p0, "x0"    # Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 3674
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    return-object v0
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    .line 3741
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/FragmentManagerImpl;->access$300(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3742
    return-void
.end method

.method public completeTransaction()V
    .locals 8

    .line 3723
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3724
    .local v0, "canceled":Z
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v3, v3, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 3725
    .local v3, "manager":Landroid/app/FragmentManagerImpl;
    iget-object v4, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3726
    .local v4, "numAdded":I
    move v5, v1

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 3727
    iget-object v6, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 3728
    .local v6, "fragment":Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3729
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Landroid/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3730
    invoke-virtual {v6}, Landroid/app/Fragment;->startPostponedEnterTransition()V

    .line 3726
    .end local v6    # "fragment":Landroid/app/Fragment;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3733
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v5, v5, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v7, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-static {v5, v6, v7, v1, v2}, Landroid/app/FragmentManagerImpl;->access$300(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3734
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 3713
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStartEnterTransition()V
    .locals 1

    .line 3692
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3693
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    .line 3694
    return-void

    .line 3696
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->access$200(Landroid/app/FragmentManagerImpl;)V

    .line 3697
    return-void
.end method

.method public startListening()V
    .locals 1

    .line 3706
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3707
    return-void
.end method
