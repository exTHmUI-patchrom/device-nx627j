.class Landroid/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/FragmentManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .line 3646
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3647
    iput-object p2, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    .line 3648
    iput p3, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    .line 3649
    iput p4, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    .line 3650
    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
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

    .line 3655
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3658
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 3659
    .local v0, "childManager":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3662
    const/4 v1, 0x0

    return v1

    .line 3665
    .end local v0    # "childManager":Landroid/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v6, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v7, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
