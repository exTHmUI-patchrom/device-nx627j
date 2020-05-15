.class public Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorHelper"


# instance fields
.field private final m_bSequence:Z

.field private final m_items:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final m_root:Landroid/view/View;

.field private m_set:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "items"    # [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;Z)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;
    .param p2, "items"    # [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;
    .param p3, "bSequence"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_root:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_items:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 25
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_bSequence:Z

    .line 26
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addItems([Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V
    .locals 2
    .param p1, "items"    # [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 47
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    .line 51
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_bSequence:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->getAnimators([Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->getAnimators([Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 58
    :goto_0
    return-void
.end method

.method private getAnimators([Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)Ljava/util/List;
    .locals 5
    .param p1, "items"    # [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 63
    .local v3, "i":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;
    invoke-static {v3, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->access$000(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;)Landroid/animation/Animator;

    move-result-object v4

    .line 64
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "i":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v4    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v0
.end method

.method private getView(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 71
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_root:Landroid/view/View;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_root:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 34
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_items:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->addItems([Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 37
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 43
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->m_set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 44
    return-void
.end method
