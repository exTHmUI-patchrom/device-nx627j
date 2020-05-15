.class public final Landroid/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 83
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 102
    iput-object p3, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    .line 103
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 104
    iput p2, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 118
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 119
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 127
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 128
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    .line 129
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 209
    const v0, 0x1020213

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;
    .locals 3
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 56
    const v0, 0x10203c4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 58
    .local v1, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    if-nez v1, :cond_0

    .line 59
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 62
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    .line 63
    .local v0, "scene":Landroid/transition/Scene;
    if-eqz v0, :cond_1

    .line 64
    return-object v0

    .line 66
    :cond_1
    new-instance v2, Landroid/transition/Scene;

    invoke-direct {v2, p0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    move-object v0, v2

    .line 67
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 198
    const v0, 0x1020213

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 199
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 170
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 174
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 186
    :cond_3
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    .line 187
    return-void
.end method

.method public exit()V
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 155
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .line 268
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 231
    iput-object p1, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 232
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 252
    iput-object p1, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 253
    return-void
.end method
