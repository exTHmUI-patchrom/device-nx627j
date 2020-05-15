.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$VisibilityMode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I

.field private mSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 96
    sget-object v0, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 98
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    .line 102
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 146
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 147
    .local v0, "visibility":I
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 150
    .local v1, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 151
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 6
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "endValues"    # Landroid/transition/TransitionValues;

    .line 191
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$1;)V

    .line 192
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 193
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 194
    const/4 v3, -0x1

    if-eqz p0, :cond_0

    iget-object v4, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 196
    iget-object v4, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 198
    :cond_0
    iput v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 199
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 201
    :goto_0
    if-eqz p1, :cond_1

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 203
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 205
    :cond_1
    iput v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 206
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 208
    :goto_1
    const/4 v1, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 209
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 211
    return-object v0

    .line 213
    :cond_2
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v3, v4, :cond_4

    .line 214
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_3

    .line 215
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 216
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 217
    :cond_3
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_8

    .line 218
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 219
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 222
    :cond_4
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_8

    .line 223
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    .line 224
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 225
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 226
    :cond_5
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    .line 227
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 228
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 232
    :cond_6
    if-nez p0, :cond_7

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_7

    .line 233
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 234
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 235
    :cond_7
    if-nez p1, :cond_8

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_8

    .line 236
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 237
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 239
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 161
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 162
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 156
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 157
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 245
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 246
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 248
    :cond_0
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v1, :cond_1

    .line 249
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 252
    :cond_1
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 257
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 1

    .line 137
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 142
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 4
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .line 462
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 463
    return v0

    .line 465
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 466
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 467
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 470
    return v0

    .line 472
    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 473
    .local v1, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 4
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 180
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 181
    return v0

    .line 183
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 186
    .local v2, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 281
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 287
    .local v1, "endParent":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v4

    .line 289
    .local v4, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    .line 290
    .local v3, "endParentValues":Landroid/transition/TransitionValues;
    nop

    .line 291
    invoke-static {v4, v3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 292
    iget-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v5, :cond_1

    .line 293
    return-object v2

    .line 296
    .end local v0    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v1    # "endParent":Landroid/view/View;
    .end local v3    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v4    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_1
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    :goto_0
    return-object v2
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 356
    iget v4, v0, Landroid/transition/Visibility;->mMode:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    .line 357
    return-object v6

    .line 360
    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v4, v6

    .line 361
    .local v4, "startView":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_2

    iget-object v7, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v7, v6

    .line 362
    .local v7, "endView":Landroid/view/View;
    :goto_1
    const/4 v8, 0x0

    .line 363
    .local v8, "overlayView":Landroid/view/View;
    const/4 v9, 0x0

    .line 364
    .local v9, "viewToKeep":Landroid/view/View;
    const/4 v10, 0x1

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_2

    .line 399
    :cond_3
    const/4 v11, 0x4

    move/from16 v12, p5

    if-ne v12, v11, :cond_4

    .line 400
    move-object v9, v7

    goto/16 :goto_3

    .line 403
    :cond_4
    if-ne v4, v7, :cond_5

    .line 404
    move-object v9, v7

    goto/16 :goto_3

    .line 405
    :cond_5
    iget-boolean v11, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v11, :cond_6

    .line 406
    move-object v8, v4

    goto :goto_3

    .line 408
    :cond_6
    nop

    .line 409
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 408
    invoke-static {v1, v4, v11}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    goto :goto_3

    .line 365
    :cond_7
    :goto_2
    move/from16 v12, p5

    if-eqz v7, :cond_8

    .line 367
    move-object v8, v7

    goto :goto_3

    .line 368
    :cond_8
    if-eqz v4, :cond_b

    .line 372
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_9

    .line 374
    move-object v8, v4

    goto :goto_3

    .line 375
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Landroid/view/View;

    if-eqz v11, :cond_b

    .line 376
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 377
    .local v11, "startParent":Landroid/view/View;
    invoke-virtual {v0, v11, v10}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v13

    .line 378
    .local v13, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {v0, v11, v10}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v14

    .line 380
    .local v14, "endParentValues":Landroid/transition/TransitionValues;
    nop

    .line 381
    invoke-static {v13, v14}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v15

    .line 382
    .local v15, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v6, v15, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v6, :cond_a

    .line 383
    invoke-static {v1, v4, v11}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 395
    .end local v8    # "overlayView":Landroid/view/View;
    .local v6, "overlayView":Landroid/view/View;
    move-object v8, v6

    goto :goto_3

    .line 385
    .end local v6    # "overlayView":Landroid/view/View;
    .restart local v8    # "overlayView":Landroid/view/View;
    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_b

    .line 386
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v6

    .line 387
    .local v6, "id":I
    const/4 v5, -0x1

    if-eq v6, v5, :cond_b

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v5, :cond_b

    .line 392
    move-object v5, v4

    .line 395
    .end local v6    # "id":I
    .end local v8    # "overlayView":Landroid/view/View;
    .end local v11    # "startParent":Landroid/view/View;
    .end local v13    # "startParentValues":Landroid/transition/TransitionValues;
    .end local v14    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v15    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .local v5, "overlayView":Landroid/view/View;
    move-object v8, v5

    .line 413
    .end local v5    # "overlayView":Landroid/view/View;
    .restart local v8    # "overlayView":Landroid/view/View;
    :cond_b
    :goto_3
    move v5, v12

    .line 414
    .local v5, "finalVisibility":I
    move-object v6, v1

    .line 416
    .local v6, "finalSceneRoot":Landroid/view/ViewGroup;
    const/4 v11, 0x0

    if-eqz v8, :cond_d

    .line 418
    iget-object v13, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v14, "android:visibility:screenLocation"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 419
    .local v13, "screenLoc":[I
    aget v14, v13, v11

    .line 420
    .local v14, "screenX":I
    aget v15, v13, v10

    .line 421
    .local v15, "screenY":I
    const/4 v10, 0x2

    new-array v10, v10, [I

    .line 422
    .local v10, "loc":[I
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 423
    aget v11, v10, v11

    sub-int v11, v14, v11

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v11, v11, v16

    invoke-virtual {v8, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 424
    const/4 v11, 0x1

    aget v11, v10, v11

    sub-int v11, v15, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v11, v11, v16

    invoke-virtual {v8, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 426
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v11

    .line 427
    .local v11, "animator":Landroid/animation/Animator;
    if-nez v11, :cond_c

    .line 428
    move-object/from16 v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    .end local v4    # "startView":Landroid/view/View;
    .local v17, "startView":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 439
    move-object/from16 v18, v7

    goto :goto_4

    .line 430
    .end local v17    # "startView":Landroid/view/View;
    .restart local v4    # "startView":Landroid/view/View;
    :cond_c
    move-object/from16 v17, v4

    .end local v4    # "startView":Landroid/view/View;
    .restart local v17    # "startView":Landroid/view/View;
    move-object v4, v8

    .line 431
    .local v4, "finalOverlayView":Landroid/view/View;
    move-object/from16 v18, v7

    new-instance v7, Landroid/transition/Visibility$1;

    .end local v7    # "endView":Landroid/view/View;
    .local v18, "endView":Landroid/view/View;
    invoke-direct {v7, v0, v6, v4}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 439
    .end local v4    # "finalOverlayView":Landroid/view/View;
    :goto_4
    return-object v11

    .line 442
    .end local v10    # "loc":[I
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v13    # "screenLoc":[I
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v17    # "startView":Landroid/view/View;
    .end local v18    # "endView":Landroid/view/View;
    .local v4, "startView":Landroid/view/View;
    .restart local v7    # "endView":Landroid/view/View;
    :cond_d
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    .end local v4    # "startView":Landroid/view/View;
    .end local v7    # "endView":Landroid/view/View;
    .restart local v17    # "startView":Landroid/view/View;
    .restart local v18    # "endView":Landroid/view/View;
    if-eqz v9, :cond_f

    .line 443
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 444
    .local v4, "originalVisibility":I
    invoke-virtual {v9, v11}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 445
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v7

    .line 446
    .local v7, "animator":Landroid/animation/Animator;
    if-eqz v7, :cond_e

    .line 447
    new-instance v10, Landroid/transition/Visibility$DisappearListener;

    iget-boolean v11, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    invoke-direct {v10, v9, v5, v11}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 449
    .local v10, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v7, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-virtual {v7, v10}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 451
    invoke-virtual {v0, v10}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 452
    .end local v10    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    goto :goto_5

    .line 453
    :cond_e
    invoke-virtual {v9, v4}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 455
    :goto_5
    return-object v7

    .line 457
    .end local v4    # "originalVisibility":I
    .end local v7    # "animator":Landroid/animation/Animator;
    :cond_f
    const/4 v4, 0x0

    return-object v4
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 122
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 125
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    .line 126
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSuppressLayout(Z)V
    .locals 0
    .param p1, "suppress"    # Z

    .line 110
    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 111
    return-void
.end method
