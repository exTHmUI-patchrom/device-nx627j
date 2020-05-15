.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$EpicenterCallback;,
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final MATCH_VIEW_NAME_STR:Ljava/lang/String; = "viewName"

.field private static final STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/transition/TransitionValuesMaps;

.field mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field mNameOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:Landroid/transition/TransitionSet;

.field mPathMotion:Landroid/transition/PathMotion;

.field mPaused:Z

.field mPropagation:Landroid/transition/TransitionPropagation;

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/transition/TransitionValuesMaps;

.field mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 166
    new-instance v0, Landroid/transition/Transition$1;

    invoke-direct {v0}, Landroid/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    .line 200
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 179
    iput-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 183
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 184
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 185
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 193
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 194
    iput-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 195
    sget-object v1, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 204
    iput-object v0, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 220
    iput v1, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 223
    iput-boolean v1, p0, Landroid/transition/Transition;->mPaused:Z

    .line 227
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 230
    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 249
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 179
    iput-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 183
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 184
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 185
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 193
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 194
    iput-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 195
    sget-object v1, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 204
    iput-object v0, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 220
    iput v1, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 223
    iput-boolean v1, p0, Landroid/transition/Transition;->mPaused:Z

    .line 227
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 230
    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 249
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 270
    sget-object v0, Lcom/android/internal/R$styleable;->Transition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 271
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    .line 272
    .local v3, "duration":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 273
    invoke-virtual {p0, v3, v4}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 275
    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v7, v2

    .line 276
    .local v7, "startDelay":J
    cmp-long v2, v7, v5

    if-lez v2, :cond_1

    .line 277
    invoke-virtual {p0, v7, v8}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 279
    :cond_1
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 280
    .local v1, "resID":I
    if-lez v1, :cond_2

    .line 281
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 283
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "matchOrder":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 285
    invoke-static {v2}, Landroid/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->setMatchOrder([I)V

    .line 287
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    return-void
.end method

.method static synthetic access$000(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/transition/Transition;

    .line 120
    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 630
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 631
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 632
    .local v2, "start":Landroid/transition/TransitionValues;
    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v2    # "start":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 640
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    .line 641
    .local v1, "end":Landroid/transition/TransitionValues;
    iget-object v2, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    iget-object v2, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v2, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v1    # "end":Landroid/transition/TransitionValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 646
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method static addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V
    .locals 9
    .param p0, "transitionValuesMaps"    # Landroid/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 1487
    iget-object v0, p0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1489
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1490
    iget-object v2, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1492
    iget-object v2, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1494
    :cond_0
    iget-object v2, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1497
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    .line 1498
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1499
    iget-object v3, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1501
    iget-object v3, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1503
    :cond_2
    iget-object v3, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1508
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1509
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1510
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1511
    .local v5, "itemId":J
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_5

    .line 1513
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1514
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1515
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1516
    iget-object v8, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1518
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_4
    goto :goto_2

    .line 1519
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1520
    iget-object v1, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1524
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_6
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 514
    aget v0, p0, p1

    .line 515
    .local v0, "value":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 516
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    .line 517
    const/4 v1, 0x1

    return v1

    .line 515
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1558
    if-nez p1, :cond_0

    .line 1559
    return-void

    .line 1561
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1562
    .local v0, "id":I
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1563
    return-void

    .line 1565
    :cond_1
    iget-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1566
    return-void

    .line 1568
    :cond_2
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1569
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1570
    .local v1, "numTypes":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1571
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1572
    return-void

    .line 1570
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1576
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1577
    new-instance v1, Landroid/transition/TransitionValues;

    invoke-direct {v1}, Landroid/transition/TransitionValues;-><init>()V

    .line 1578
    .local v1, "values":Landroid/transition/TransitionValues;
    iput-object p1, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1579
    if-eqz p2, :cond_5

    .line 1580
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_1

    .line 1582
    :cond_5
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 1584
    :goto_1
    iget-object v3, v1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1586
    if-eqz p2, :cond_6

    .line 1587
    iget-object v3, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_2

    .line 1589
    :cond_6
    iget-object v3, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1592
    .end local v1    # "values":Landroid/transition/TransitionValues;
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1594
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1595
    return-void

    .line 1597
    :cond_8
    iget-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1598
    return-void

    .line 1600
    :cond_9
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 1601
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1602
    .local v1, "numTypes":I
    move v3, v2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_b

    .line 1603
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1604
    return-void

    .line 1602
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1608
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1609
    .local v1, "parent":Landroid/view/ViewGroup;
    nop

    .local v2, "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1610
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1609
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1613
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1224
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 1225
    if-eqz p2, :cond_0

    .line 1226
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1228
    :cond_0
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1231
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getRunningAnimators()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 852
    sget-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 853
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 854
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 855
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 857
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .line 510
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldValues"    # Landroid/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1825
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1827
    const/4 v0, 0x0

    return v0

    .line 1829
    :cond_0
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1830
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1832
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1834
    const/4 v2, 0x0

    .local v2, "changed":Z
    :goto_0
    goto :goto_2

    .line 1835
    .end local v2    # "changed":Z
    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 1840
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1837
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1840
    .restart local v2    # "changed":Z
    :goto_2
    nop

    .line 1847
    return v2
.end method

.method private matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 577
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 578
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 579
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 580
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 582
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 584
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 585
    .local v5, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 586
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 530
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 531
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 533
    .local v2, "end":Landroid/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    .line 535
    .local v3, "start":Landroid/transition/TransitionValues;
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroid/transition/TransitionValues;
    .end local v3    # "start":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 540
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 550
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 551
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 552
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 553
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 555
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 557
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 558
    .local v5, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 559
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 605
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 606
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 607
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 609
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 611
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 612
    .local v5, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 613
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .locals 5
    .param p1, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/transition/TransitionValuesMaps;

    .line 650
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 652
    .local v0, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 655
    .local v1, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 656
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 669
    :pswitch_0
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/transition/Transition;->matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    goto :goto_1

    .line 665
    :pswitch_1
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/transition/Transition;->matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 667
    goto :goto_1

    .line 661
    :pswitch_2
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/transition/Transition;->matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 663
    goto :goto_1

    .line 658
    :pswitch_3
    invoke-direct {p0, v0, v1}, Landroid/transition/Transition;->matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 659
    nop

    .line 655
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/transition/Transition;->addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 675
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 8
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 293
    .local v1, "matches":[I
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .line 294
    .local v1, "index":I
    .local v3, "matches":[I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 295
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "token":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 297
    const/4 v5, 0x3

    aput v5, v3, v1

    goto :goto_1

    .line 298
    :cond_0
    const-string v5, "instance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    aput v6, v3, v1

    goto :goto_1

    .line 300
    :cond_1
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_2

    .line 301
    aput v7, v3, v1

    goto :goto_1

    .line 302
    :cond_2
    const-string/jumbo v5, "viewName"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    aput v7, v3, v1

    goto :goto_1

    .line 304
    :cond_3
    const-string v5, "itemId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    const/4 v5, 0x4

    aput v5, v3, v1

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    array-length v5, v3

    sub-int/2addr v5, v6

    new-array v5, v5, [I

    .line 308
    .local v5, "smallerMatches":[I
    invoke-static {v3, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    move-object v3, v5

    .line 310
    add-int/lit8 v1, v1, -0x1

    .line 311
    .end local v5    # "smallerMatches":[I
    nop

    .line 314
    :goto_1
    add-int/2addr v1, v6

    .line 315
    .end local v4    # "token":Ljava/lang/String;
    goto :goto_0

    .line 312
    .restart local v4    # "token":Ljava/lang/String;
    :cond_5
    new-instance v2, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v4    # "token":Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 888
    .local p2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 890
    new-instance v0, Landroid/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 901
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 903
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 1995
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1998
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    return-object p0
.end method

.method public addTarget(I)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 982
    if-lez p1, :cond_0

    .line 983
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1314
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetType"    # Ljava/lang/Class;

    .line 1038
    if-eqz p1, :cond_1

    .line 1039
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1042
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_1
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1006
    if-eqz p1, :cond_1

    .line 1007
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1010
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    :cond_1
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1862
    if-nez p1, :cond_0

    .line 1863
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    goto :goto_0

    .line 1865
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1866
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1868
    :cond_1
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1869
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1871
    :cond_2
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1872
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1874
    :cond_3
    new-instance v0, Landroid/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/transition/Transition$3;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1881
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1883
    :goto_0
    return-void
.end method

.method public canRemoveViews()Z
    .locals 1

    .line 2199
    iget-boolean v0, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    return v0
.end method

.method protected cancel()V
    .locals 5

    .line 1971
    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1972
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1973
    iget-object v2, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 1974
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1972
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1976
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1977
    iget-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1978
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1979
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1980
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1981
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    .line 1980
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1984
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 2171
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2172
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroid/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2174
    return-void

    .line 2176
    :cond_0
    const/4 v1, 0x1

    .line 2177
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2178
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2179
    const/4 v1, 0x0

    .line 2180
    goto :goto_1

    .line 2177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2183
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2184
    iget-object v2, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroid/transition/TransitionPropagation;->captureValues(Landroid/transition/TransitionValues;)V

    .line 2187
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1424
    invoke-virtual {p0, p2}, Landroid/transition/Transition;->clearValues(Z)V

    .line 1425
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1426
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1427
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1466
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    .line 1428
    :cond_3
    :goto_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1429
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1430
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1431
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_6

    .line 1432
    new-instance v4, Landroid/transition/TransitionValues;

    invoke-direct {v4}, Landroid/transition/TransitionValues;-><init>()V

    .line 1433
    .local v4, "values":Landroid/transition/TransitionValues;
    iput-object v3, v4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1434
    if-eqz p2, :cond_4

    .line 1435
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_2

    .line 1437
    :cond_4
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 1439
    :goto_2
    iget-object v5, v4, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1441
    if-eqz p2, :cond_5

    .line 1442
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v5, v3, v4}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_3

    .line 1444
    :cond_5
    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v5, v3, v4}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1428
    .end local v2    # "id":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1448
    .end local v0    # "i":I
    :cond_7
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1449
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1450
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/transition/TransitionValues;

    invoke-direct {v3}, Landroid/transition/TransitionValues;-><init>()V

    .line 1451
    .local v3, "values":Landroid/transition/TransitionValues;
    iput-object v2, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1452
    if-eqz p2, :cond_8

    .line 1453
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_5

    .line 1455
    :cond_8
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 1457
    :goto_5
    iget-object v4, v3, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1459
    if-eqz p2, :cond_9

    .line 1460
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_6

    .line 1462
    :cond_9
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1448
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroid/transition/TransitionValues;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1468
    .end local v0    # "i":I
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 1469
    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1470
    .local v0, "numOverrides":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1471
    .local v2, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v3, v1

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_b

    .line 1472
    iget-object v4, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1473
    .local v4, "fromName":Ljava/lang/String;
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    .end local v4    # "fromName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1475
    .end local v3    # "i":I
    :cond_b
    nop

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_d

    .line 1476
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1477
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 1478
    iget-object v4, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1479
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1483
    .end local v0    # "numOverrides":I
    .end local v1    # "i":I
    .end local v2    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 2
    .param p1, "start"    # Z

    .line 1532
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1533
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1534
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1535
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1536
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1537
    iput-object v0, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1539
    :cond_0
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1540
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1541
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1542
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1543
    iput-object v0, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1545
    :goto_0
    return-void
.end method

.method public clone()Landroid/transition/Transition;
    .locals 3

    .line 2223
    const/4 v0, 0x0

    move-object v1, v0

    .line 2225
    .local v1, "clone":Landroid/transition/Transition;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    move-object v1, v2

    .line 2226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2227
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 2228
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 2229
    iput-object v0, v1, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2230
    iput-object v0, v1, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    goto :goto_0

    :catch_0
    move-exception v0

    .line 2233
    :goto_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 694
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v8

    .line 695
    .local v8, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 696
    .local v0, "minStartDelay":J
    iget-object v2, v6, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 697
    .local v9, "minAnimator":I
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    move-object v10, v2

    .line 698
    .local v10, "startDelays":Landroid/util/SparseLongArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 699
    .local v11, "startValuesListCount":I
    move-wide v1, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v1, "minStartDelay":J
    :goto_0
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_12

    .line 700
    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 701
    .local v0, "start":Landroid/transition/TransitionValues;
    move-object/from16 v15, p5

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    .line 702
    .local v3, "end":Landroid/transition/TransitionValues;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 703
    const/4 v0, 0x0

    .line 705
    .end local v0    # "start":Landroid/transition/TransitionValues;
    .local v5, "start":Landroid/transition/TransitionValues;
    :cond_0
    move-object v5, v0

    if-eqz v3, :cond_1

    iget-object v0, v3, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    const/4 v3, 0x0

    .line 708
    .end local v3    # "end":Landroid/transition/TransitionValues;
    .local v4, "end":Landroid/transition/TransitionValues;
    :cond_1
    move-object v4, v3

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 709
    nop

    .line 699
    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v23, v13

    goto/16 :goto_b

    .line 712
    :cond_2
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v6, v5, v4}, Landroid/transition/Transition;->isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move/from16 v16, v0

    .line 713
    .local v16, "isChanged":Z
    if-eqz v16, :cond_10

    .line 732
    invoke-virtual {v6, v7, v5, v4}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 733
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_10

    .line 735
    const/4 v3, 0x0

    .line 736
    .local v3, "view":Landroid/view/View;
    const/16 v17, 0x0

    .line 737
    .local v17, "infoValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_d

    .line 738
    iget-object v3, v4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "properties":[Ljava/lang/String;
    if-eqz v3, :cond_c

    if-eqz v12, :cond_c

    move-object/from16 v19, v0

    array-length v0, v12

    .end local v0    # "animator":Landroid/animation/Animator;
    .local v19, "animator":Landroid/animation/Animator;
    if-lez v0, :cond_b

    .line 741
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 742
    .end local v17    # "infoValues":Landroid/transition/TransitionValues;
    .local v0, "infoValues":Landroid/transition/TransitionValues;
    iput-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 743
    move/from16 v20, v9

    move/from16 v21, v11

    move-object/from16 v9, p3

    iget-object v11, v9, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    .end local v9    # "minAnimator":I
    .end local v11    # "startValuesListCount":I
    .local v20, "minAnimator":I
    .local v21, "startValuesListCount":I
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/transition/TransitionValues;

    .line 744
    .local v11, "newValues":Landroid/transition/TransitionValues;
    if-eqz v11, :cond_5

    .line 745
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v22, v17

    .end local v17    # "j":I
    .local v22, "j":I
    array-length v9, v12

    move/from16 v14, v22

    if-ge v14, v9, :cond_5

    .line 746
    .end local v22    # "j":I
    .local v14, "j":I
    iget-object v9, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v15, v12, v14

    move/from16 v23, v13

    iget-object v13, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .end local v13    # "i":I
    .local v23, "i":I
    move-object/from16 v24, v11

    aget-object v11, v12, v14

    .line 747
    .end local v11    # "newValues":Landroid/transition/TransitionValues;
    .local v24, "newValues":Landroid/transition/TransitionValues;
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 746
    invoke-interface {v9, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "j":I
    .restart local v17    # "j":I
    move/from16 v13, v23

    move-object/from16 v11, v24

    move-object/from16 v9, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    goto :goto_3

    .line 750
    .end local v17    # "j":I
    .end local v23    # "i":I
    .end local v24    # "newValues":Landroid/transition/TransitionValues;
    .restart local v11    # "newValues":Landroid/transition/TransitionValues;
    .restart local v13    # "i":I
    :cond_5
    move-object/from16 v24, v11

    move/from16 v23, v13

    .end local v11    # "newValues":Landroid/transition/TransitionValues;
    .end local v13    # "i":I
    .restart local v23    # "i":I
    .restart local v24    # "newValues":Landroid/transition/TransitionValues;
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 751
    .local v9, "numExistingAnims":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v9, :cond_a

    .line 752
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/Animator;

    .line 753
    .local v13, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/transition/Transition$AnimationInfo;

    .line 754
    .local v14, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v15, v14, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    if-eqz v15, :cond_8

    iget-object v15, v14, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-ne v15, v3, :cond_8

    iget-object v15, v14, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    if-nez v15, :cond_7

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    goto :goto_5

    .line 757
    :cond_6
    move-object/from16 v25, v3

    goto :goto_6

    .line 755
    :cond_7
    :goto_5
    iget-object v15, v14, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 756
    move-object/from16 v25, v3

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    .local v25, "view":Landroid/view/View;
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 757
    :goto_6
    iget-object v3, v14, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    invoke-virtual {v3, v0}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 759
    const/4 v3, 0x0

    .line 760
    .end local v19    # "animator":Landroid/animation/Animator;
    .local v3, "animator":Landroid/animation/Animator;
    nop

    .line 765
    move-object/from16 v17, v0

    move-object v0, v3

    goto :goto_8

    .line 751
    .end local v13    # "anim":Landroid/animation/Animator;
    .end local v14    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v25    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    .restart local v19    # "animator":Landroid/animation/Animator;
    :cond_8
    move-object/from16 v25, v3

    .end local v3    # "view":Landroid/view/View;
    .restart local v25    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v25

    goto :goto_4

    .line 765
    .end local v9    # "numExistingAnims":I
    .end local v11    # "j":I
    .end local v12    # "properties":[Ljava/lang/String;
    .end local v24    # "newValues":Landroid/transition/TransitionValues;
    .end local v25    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v25, v3

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    .end local v3    # "view":Landroid/view/View;
    .restart local v25    # "view":Landroid/view/View;
    goto :goto_8

    .end local v0    # "infoValues":Landroid/transition/TransitionValues;
    .end local v20    # "minAnimator":I
    .end local v21    # "startValuesListCount":I
    .end local v23    # "i":I
    .end local v25    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v9, "minAnimator":I
    .local v11, "startValuesListCount":I
    .local v13, "i":I
    .local v17, "infoValues":Landroid/transition/TransitionValues;
    :cond_b
    move-object/from16 v25, v3

    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v23, v13

    .end local v3    # "view":Landroid/view/View;
    .end local v9    # "minAnimator":I
    .end local v11    # "startValuesListCount":I
    .end local v13    # "i":I
    .restart local v20    # "minAnimator":I
    .restart local v21    # "startValuesListCount":I
    .restart local v23    # "i":I
    .restart local v25    # "view":Landroid/view/View;
    goto :goto_7

    .end local v19    # "animator":Landroid/animation/Animator;
    .end local v20    # "minAnimator":I
    .end local v21    # "startValuesListCount":I
    .end local v23    # "i":I
    .end local v25    # "view":Landroid/view/View;
    .local v0, "animator":Landroid/animation/Animator;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v9    # "minAnimator":I
    .restart local v11    # "startValuesListCount":I
    .restart local v13    # "i":I
    :cond_c
    move-object/from16 v19, v0

    move-object/from16 v25, v3

    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v23, v13

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v3    # "view":Landroid/view/View;
    .end local v9    # "minAnimator":I
    .end local v11    # "startValuesListCount":I
    .end local v13    # "i":I
    .restart local v19    # "animator":Landroid/animation/Animator;
    .restart local v20    # "minAnimator":I
    .restart local v21    # "startValuesListCount":I
    .restart local v23    # "i":I
    .restart local v25    # "view":Landroid/view/View;
    :goto_7
    move-object/from16 v0, v19

    .line 768
    .end local v19    # "animator":Landroid/animation/Animator;
    .restart local v0    # "animator":Landroid/animation/Animator;
    :goto_8
    move-object v9, v0

    goto :goto_a

    .line 766
    .end local v20    # "minAnimator":I
    .end local v21    # "startValuesListCount":I
    .end local v23    # "i":I
    .end local v25    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v9    # "minAnimator":I
    .restart local v11    # "startValuesListCount":I
    .restart local v13    # "i":I
    :cond_d
    move-object/from16 v19, v0

    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v23, v13

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v9    # "minAnimator":I
    .end local v11    # "startValuesListCount":I
    .end local v13    # "i":I
    .restart local v19    # "animator":Landroid/animation/Animator;
    .restart local v20    # "minAnimator":I
    .restart local v21    # "startValuesListCount":I
    .restart local v23    # "i":I
    if-eqz v5, :cond_e

    iget-object v0, v5, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    .line 768
    .end local v3    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    :goto_9
    move-object/from16 v25, v0

    move-object/from16 v9, v19

    .end local v0    # "view":Landroid/view/View;
    .end local v19    # "animator":Landroid/animation/Animator;
    .local v9, "animator":Landroid/animation/Animator;
    .restart local v25    # "view":Landroid/view/View;
    :goto_a
    if-eqz v9, :cond_11

    .line 769
    iget-object v0, v6, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v0, :cond_f

    .line 770
    iget-object v0, v6, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    .line 771
    invoke-virtual {v0, v7, v6, v5, v4}, Landroid/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J

    move-result-wide v11

    .line 772
    .local v11, "delay":J
    iget-object v0, v6, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v10, v0, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 773
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 775
    .end local v1    # "minStartDelay":J
    .local v11, "minStartDelay":J
    :cond_f
    move-wide v11, v1

    new-instance v13, Landroid/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v14

    move-object v0, v13

    move-object/from16 v1, v25

    move-object v3, v6

    move-object v15, v4

    move-object v4, v14

    .end local v4    # "end":Landroid/transition/TransitionValues;
    .local v15, "end":Landroid/transition/TransitionValues;
    move-object v14, v5

    move-object/from16 v5, v17

    .end local v5    # "start":Landroid/transition/TransitionValues;
    .local v14, "start":Landroid/transition/TransitionValues;
    invoke-direct/range {v0 .. v5}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V

    .line 777
    .local v0, "info":Landroid/transition/Transition$AnimationInfo;
    invoke-virtual {v8, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v1, v6, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .end local v0    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v9    # "animator":Landroid/animation/Animator;
    .end local v14    # "start":Landroid/transition/TransitionValues;
    .end local v15    # "end":Landroid/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .end local v17    # "infoValues":Landroid/transition/TransitionValues;
    .end local v25    # "view":Landroid/view/View;
    move-wide v1, v11

    goto :goto_b

    .end local v20    # "minAnimator":I
    .end local v21    # "startValuesListCount":I
    .end local v23    # "i":I
    .restart local v1    # "minStartDelay":J
    .local v9, "minAnimator":I
    .local v11, "startValuesListCount":I
    .restart local v13    # "i":I
    :cond_10
    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v23, v13

    .end local v9    # "minAnimator":I
    .end local v11    # "startValuesListCount":I
    .end local v13    # "i":I
    .restart local v20    # "minAnimator":I
    .restart local v21    # "startValuesListCount":I
    .restart local v23    # "i":I
    :cond_11
    :goto_b
    add-int/lit8 v0, v23, 0x1

    .end local v23    # "i":I
    .local v0, "i":I
    move/from16 v9, v20

    move/from16 v11, v21

    goto/16 :goto_0

    .line 783
    .end local v0    # "i":I
    .end local v20    # "minAnimator":I
    .end local v21    # "startValuesListCount":I
    .restart local v9    # "minAnimator":I
    .restart local v11    # "startValuesListCount":I
    :cond_12
    move/from16 v20, v9

    move/from16 v21, v11

    .end local v9    # "minAnimator":I
    .end local v11    # "startValuesListCount":I
    .restart local v20    # "minAnimator":I
    .restart local v21    # "startValuesListCount":I
    invoke-virtual {v10}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 784
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_c
    move/from16 v0, v18

    .end local v18    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v10}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 785
    invoke-virtual {v10, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 786
    .local v3, "index":I
    iget-object v4, v6, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 787
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v10, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v11

    sub-long/2addr v11, v1

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 788
    .local v11, "delay":J
    invoke-virtual {v4, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 784
    .end local v3    # "index":I
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v11    # "delay":J
    add-int/lit8 v18, v0, 0x1

    .end local v0    # "i":I
    .restart local v18    # "i":I
    goto :goto_c

    .line 791
    .end local v18    # "i":I
    :cond_13
    return-void
.end method

.method protected end()V
    .locals 6

    .line 1919
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1920
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_5

    .line 1921
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1922
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1923
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1924
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1925
    .local v3, "numListeners":I
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1926
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 1925
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1929
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_0
    move v0, v2

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1930
    iget-object v3, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1931
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1932
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1929
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1935
    .end local v0    # "i":I
    :cond_2
    move v0, v2

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1936
    iget-object v3, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1937
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1938
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1935
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1941
    .end local v0    # "i":I
    :cond_4
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1943
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1161
    if-ltz p1, :cond_0

    .line 1162
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1164
    :cond_0
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1215
    iget-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1216
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1283
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1284
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1103
    if-ltz p1, :cond_0

    .line 1104
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1106
    :cond_0
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1189
    iget-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1190
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1256
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1257
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 1131
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1132
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1951
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1952
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1953
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_1

    .line 1954
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1955
    .local v2, "windowId":Landroid/view/WindowId;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1956
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    .line 1957
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v2, v5}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1958
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1959
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 1955
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1963
    .end local v2    # "windowId":Landroid/view/WindowId;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 343
    iget-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1

    .line 2055
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    .line 2056
    const/4 v0, 0x0

    return-object v0

    .line 2058
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroid/transition/Transition$EpicenterCallback;
    .locals 1

    .line 2044
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1641
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1644
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1645
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1646
    return-object v1

    .line 1648
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1649
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1650
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1651
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 1652
    .local v5, "values":Landroid/transition/TransitionValues;
    if-nez v5, :cond_3

    .line 1654
    return-object v1

    .line 1656
    :cond_3
    iget-object v6, v5, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_4

    .line 1657
    move v3, v4

    .line 1658
    goto :goto_2

    .line 1650
    .end local v5    # "values":Landroid/transition/TransitionValues;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1661
    .end local v4    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 1662
    .local v1, "values":Landroid/transition/TransitionValues;
    if-ltz v3, :cond_7

    .line 1663
    if-eqz p2, :cond_6

    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1664
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/transition/TransitionValues;

    .line 1666
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2249
    iget-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOverrides()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2213
    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPathMotion()Landroid/transition/PathMotion;
    .locals 1

    .line 2135
    iget-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/transition/TransitionPropagation;
    .locals 1

    .line 2163
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 370
    iget-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1413
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetViewNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1622
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1625
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 1626
    .local v0, "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :goto_0
    iget-object v1, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    return-object v1
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .line 1798
    const/4 v0, 0x0

    .line 1801
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1802
    invoke-virtual {p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1803
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1804
    array-length v2, v1

    .line 1805
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1806
    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1807
    const/4 v0, 0x1

    .line 1808
    goto :goto_1

    .line 1805
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1811
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    goto :goto_3

    .line 1812
    :cond_2
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1813
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1814
    const/4 v0, 0x1

    .line 1815
    goto :goto_3

    .line 1817
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 1820
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_4
    :goto_3
    return v0
.end method

.method public isValidTarget(Landroid/view/View;)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .line 806
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 807
    return v0

    .line 809
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 810
    .local v1, "targetId":I
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    return v0

    .line 813
    :cond_1
    iget-object v2, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 814
    return v0

    .line 816
    :cond_2
    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 817
    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 818
    .local v2, "numTypes":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 819
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 820
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 821
    return v0

    .line 818
    .end local v4    # "type":Ljava/lang/Class;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    .end local v2    # "numTypes":I
    .end local v3    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 826
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    return v0

    .line 830
    :cond_5
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 831
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 832
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 833
    :cond_7
    return v3

    .line 835
    :cond_8
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 838
    :cond_9
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 839
    return v3

    .line 841
    :cond_a
    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    .line 842
    move v2, v0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 843
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 844
    return v3

    .line 842
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 848
    .end local v2    # "i":I
    :cond_c
    return v0

    .line 836
    :cond_d
    :goto_2
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1677
    iget-boolean v0, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v0, :cond_3

    .line 1678
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1679
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1680
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_1

    .line 1681
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1682
    .local v2, "windowId":Landroid/view/WindowId;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1683
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    .line 1684
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v2, v5}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1685
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1686
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->pause()V

    .line 1682
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1690
    .end local v2    # "windowId":Landroid/view/WindowId;
    .end local v3    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1691
    iget-object v2, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1692
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1693
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1694
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 1695
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    .line 1694
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1698
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1700
    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1743
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroid/transition/Transition;->matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    .line 1745
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1746
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1747
    .local v1, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1748
    .local v2, "windowId":Landroid/view/WindowId;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 1749
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1750
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_5

    .line 1751
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$AnimationInfo;

    .line 1752
    .local v5, "oldInfo":Landroid/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    if-ne v6, v2, :cond_5

    .line 1753
    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 1754
    .local v6, "oldValues":Landroid/transition/TransitionValues;
    iget-object v7, v5, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1755
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v9

    .line 1756
    .local v9, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroid/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v10

    .line 1757
    .local v10, "endValues":Landroid/transition/TransitionValues;
    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 1758
    iget-object v11, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v11, v11, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroid/transition/TransitionValues;

    .line 1760
    :cond_0
    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    iget-object v11, v5, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    .line 1761
    invoke-virtual {v11, v6, v10}, Landroid/transition/Transition;->isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1762
    .local v8, "cancel":Z
    :goto_1
    if-eqz v8, :cond_5

    .line 1763
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 1772
    :cond_3
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/transition/TransitionValues;
    goto :goto_3

    .line 1767
    .restart local v4    # "anim":Landroid/animation/Animator;
    .restart local v5    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .restart local v6    # "oldValues":Landroid/transition/TransitionValues;
    .restart local v7    # "oldView":Landroid/view/View;
    .restart local v8    # "cancel":Z
    .restart local v9    # "startValues":Landroid/transition/TransitionValues;
    .restart local v10    # "endValues":Landroid/transition/TransitionValues;
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1748
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/transition/TransitionValues;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1779
    .end local v3    # "i":I
    :cond_6
    iget-object v6, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1780
    invoke-virtual {p0}, Landroid/transition/Transition;->runAnimators()V

    .line 1781
    return-void
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 2010
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2011
    return-object p0

    .line 2013
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2014
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2015
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2017
    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1058
    if-lez p1, :cond_0

    .line 1059
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1329
    if-eqz p1, :cond_0

    .line 1330
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1332
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1346
    if-eqz p1, :cond_0

    .line 1347
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1349
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1075
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1078
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1710
    iget-boolean v0, p0, Landroid/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_3

    .line 1711
    iget-boolean v0, p0, Landroid/transition/Transition;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1712
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1713
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1714
    .local v2, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    .line 1715
    .local v3, "windowId":Landroid/view/WindowId;
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1716
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$AnimationInfo;

    .line 1717
    .local v5, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v3, v6}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1718
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 1719
    .local v6, "anim":Landroid/animation/Animator;
    invoke-virtual {v6}, Landroid/animation/Animator;->resume()V

    .line 1715
    .end local v5    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1722
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1723
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1724
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1725
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1726
    .local v5, "numListeners":I
    move v6, v1

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 1727
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v7, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    .line 1726
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1731
    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v2    # "numOldAnims":I
    .end local v3    # "windowId":Landroid/view/WindowId;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v5    # "numListeners":I
    .end local v6    # "i":I
    :cond_2
    iput-boolean v1, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1733
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 870
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 871
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 873
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 877
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 879
    invoke-direct {p0, v2, v0}, Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    .line 881
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    goto :goto_0

    .line 882
    :cond_1
    iget-object v1, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 883
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    .line 884
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .line 2195
    iput-boolean p1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 2196
    return-void
.end method

.method public setDuration(J)Landroid/transition/Transition;
    .locals 0
    .param p1, "duration"    # J

    .line 330
    iput-wide p1, p0, Landroid/transition/Transition;->mDuration:J

    .line 331
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .line 2031
    iput-object p1, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    .line 2032
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 384
    iput-object p1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 385
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    .line 493
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 496
    :cond_0
    const/4 v0, 0x0

    .line 496
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 497
    aget v1, p1, v0

    .line 498
    .local v1, "match":I
    invoke-static {v1}, Landroid/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    invoke-static {p1, v0}, Landroid/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 496
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    .restart local v1    # "match":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/transition/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 494
    :cond_4
    :goto_1
    sget-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 507
    :goto_2
    return-void
.end method

.method public setNameOverrides(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2208
    .local p1, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    .line 2209
    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .line 2099
    if-nez p1, :cond_0

    .line 2100
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    goto :goto_0

    .line 2102
    :cond_0
    iput-object p1, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 2104
    :goto_0
    return-void
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .locals 0
    .param p1, "transitionPropagation"    # Landroid/transition/TransitionPropagation;

    .line 2149
    iput-object p1, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    .line 2150
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 2190
    iput-object p1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2191
    return-object p0
.end method

.method public setStartDelay(J)Landroid/transition/Transition;
    .locals 0
    .param p1, "startDelay"    # J

    .line 357
    iput-wide p1, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 358
    return-object p0
.end method

.method protected start()V
    .locals 5

    .line 1893
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_1

    .line 1894
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1895
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1896
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1897
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1898
    .local v2, "numListeners":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1899
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 1898
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1902
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1904
    :cond_1
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1905
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2218
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2255
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroid/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dur("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/transition/Transition;->mDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2258
    :cond_0
    iget-wide v1, p0, Landroid/transition/Transition;->mStartDelay:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 2259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dly("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2261
    :cond_1
    iget-object v1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_2

    .line 2262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "interp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2264
    :cond_2
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 2265
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2266
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_6

    .line 2267
    move-object v1, v0

    move v0, v2

    .line 2267
    .local v0, "i":I
    .local v1, "result":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2268
    if-lez v0, :cond_4

    .line 2269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2271
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2274
    .end local v0    # "i":I
    :cond_5
    move-object v0, v1

    .line 2274
    .end local v1    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2275
    nop

    .line 2275
    .local v2, "i":I
    :goto_1
    move v1, v2

    .line 2275
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2276
    if-lez v1, :cond_7

    .line 2277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2279
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    add-int/lit8 v2, v1, 0x1

    .line 2275
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 2282
    .end local v2    # "i":I
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2284
    :cond_9
    return-object v0
.end method
