.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 71
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 77
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 92
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 97
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 103
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 123
    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 128
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 134
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 140
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 141
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 152
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 181
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 183
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 185
    .local v3, "resource":I
    if-lez v3, :cond_0

    .line 186
    invoke-virtual {p0, p1, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 191
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 192
    if-lez v3, :cond_1

    .line 193
    invoke-virtual {p0, p1, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 198
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 200
    .local v2, "flag":Z
    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 202
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 205
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 208
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterViewAnimator;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;

    .line 46
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method private addChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 578
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 583
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v0, v1, :cond_1

    .line 584
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 585
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 589
    .end local v0    # "measureSpec":I
    :cond_1
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 395
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 396
    .local v1, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 397
    return-object v1

    .line 399
    .end local v1    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_0
    goto :goto_0

    .line 400
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initViewAnimator()V
    .locals 1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 215
    return-void
.end method

.method private measureChildren()V
    .locals 7

    .line 681
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    .line 682
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 683
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 685
    .local v2, "childHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 686
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 687
    .local v4, "child":Landroid/view/View;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 688
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 687
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 685
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 3
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .line 300
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_5

    .line 301
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 302
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    .line 303
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_2

    .line 304
    :cond_1
    if-gez p1, :cond_3

    .line 305
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 308
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    move v0, v1

    .line 310
    .local v0, "hasFocus":Z
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 311
    if-eqz v0, :cond_5

    .line 313
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    .line 316
    .end local v0    # "hasFocus":Z
    :cond_5
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 0

    .line 1083
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1084
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .line 326
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    .line 600
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 604
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 605
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    .line 737
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 738
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_0

    .line 739
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 756
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 757
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    .line 245
    nop

    .line 248
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 249
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 250
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 252
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 255
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 405
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 406
    return-object v0

    .line 408
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1040
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    .line 1093
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1097
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 949
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 944
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 854
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 278
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 279
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 284
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 286
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    .line 332
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    .line 444
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 866
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    .line 374
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 377
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 890
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 1031
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 3
    .param p1, "relativeIndex"    # I

    .line 364
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 365
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 366
    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object v1

    .line 370
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowSize()I
    .locals 2

    .line 382
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 384
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    .line 385
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v1, v0

    return v1

    .line 387
    :cond_0
    return v0

    .line 390
    .end local v0    # "adapterCount":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 597
    return-void
.end method

.method modulo(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .line 350
    if-lez p2, :cond_0

    .line 351
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    return v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 761
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 763
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    .line 764
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 765
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, "child":Landroid/view/View;
    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 768
    .local v3, "childRight":I
    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 770
    .local v4, "childBottom":I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 764
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 694
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 695
    .local v0, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 696
    .local v1, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 697
    .local v2, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 699
    .local v3, "heightSpecMode":I
    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 704
    .local v4, "haveChildRefSize":Z
    :goto_0
    const/high16 v5, 0x1000000

    const/high16 v7, -0x80000000

    if-nez v3, :cond_2

    .line 705
    if-eqz v4, :cond_1

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v8, v9

    goto :goto_1

    .line 706
    :cond_1
    move v8, v6

    :goto_1
    move v1, v8

    goto :goto_2

    .line 707
    :cond_2
    if-ne v3, v7, :cond_4

    .line 708
    if-eqz v4, :cond_4

    .line 709
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v8, v9

    .line 710
    .local v8, "height":I
    if-le v8, v1, :cond_3

    .line 711
    or-int/2addr v1, v5

    goto :goto_2

    .line 713
    :cond_3
    move v1, v8

    .line 718
    .end local v8    # "height":I
    :cond_4
    :goto_2
    if-nez v2, :cond_6

    .line 719
    if-eqz v4, :cond_5

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr v6, v5

    nop

    .line 720
    :cond_5
    move v0, v6

    goto :goto_3

    .line 721
    :cond_6
    if-ne v3, v7, :cond_8

    .line 722
    if-eqz v4, :cond_8

    .line 723
    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr v6, v7

    .line 724
    .local v6, "width":I
    if-le v6, v0, :cond_7

    .line 725
    or-int/2addr v0, v5

    goto :goto_3

    .line 727
    :cond_7
    move v0, v6

    .line 732
    .end local v6    # "width":I
    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    .line 733
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 734
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .line 1046
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1047
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1049
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1051
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1055
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1056
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1057
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1059
    :cond_1
    return v2

    .line 1060
    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_3

    .line 1061
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1062
    const/4 v0, 0x1

    return v0

    .line 1064
    :cond_3
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .line 1076
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 827
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 828
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 833
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 839
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    .line 840
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    goto :goto_0

    .line 842
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 844
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 818
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 819
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 822
    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 619
    .local v0, "action":I
    const/4 v1, 0x0

    .line 620
    .local v1, "handled":Z
    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 670
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 671
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 674
    :cond_0
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .end local v2    # "v":Landroid/view/View;
    goto :goto_0

    .line 634
    :pswitch_1
    goto :goto_0

    .line 637
    :pswitch_2
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v3, :cond_2

    .line 638
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 639
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v5

    .line 640
    .local v5, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_2

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7, v3, v2}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 643
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 644
    iget-object v6, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 647
    new-instance v6, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v6, p0, v3, v5}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    .line 661
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    .line 647
    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    const/4 v1, 0x1

    .line 666
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "v":Landroid/view/View;
    .end local v5    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_2
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 667
    goto :goto_0

    .line 622
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 623
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v2}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 625
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v2, :cond_3

    .line 626
    new-instance v2, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v2, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 628
    :cond_3
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 629
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 635
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    nop

    .line 677
    :cond_5
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 6

    .line 412
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v0, v1, :cond_3

    .line 414
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v1

    .line 416
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    .line 418
    .local v2, "adapterCount":I
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 420
    .local v3, "updatedChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 421
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 424
    :cond_1
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v4, Landroid/widget/FrameLayout;

    .line 427
    .local v4, "fl":Landroid/widget/FrameLayout;
    if-eqz v3, :cond_2

    .line 429
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 430
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 413
    .end local v1    # "index":I
    .end local v2    # "adapterCount":I
    .end local v3    # "updatedChild":Landroid/view/View;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .line 954
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 958
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 959
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    .line 961
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 962
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 963
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 964
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    .line 966
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 968
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 969
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 939
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 940
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 297
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    .line 878
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 879
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 915
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 916
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    .line 902
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 903
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 928
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 929
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 981
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 993
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 994
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 995
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 996
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 997
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    return-void

    .line 1001
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1003
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1004
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1007
    :cond_1
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 985
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1019
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1026
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1027
    return-void
.end method

.method public showNext()V
    .locals 1

    .line 339
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 340
    return-void
.end method

.method showOnly(IZ)V
    .locals 30
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    move-object/from16 v7, p0

    .line 458
    move/from16 v8, p2

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v9

    .line 460
    .local v9, "adapterCount":I
    if-nez v9, :cond_1

    return-void

    .line 462
    :cond_1
    const/4 v10, 0x0

    move v0, v10

    .local v0, "i":I
    :goto_0
    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, -0x1

    if-ge v0, v1, :cond_3

    .line 463
    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v2, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 464
    .local v1, "viewToRemove":Landroid/view/View;
    iget-object v2, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v3, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 466
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 467
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 468
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 472
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v7, v1, v11}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 474
    invoke-virtual {v7, v1}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 462
    .end local v1    # "viewToRemove":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "i":I
    :cond_3
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v13, p1, v0

    .line 478
    .local v13, "newWindowStartUnbounded":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/2addr v0, v13

    const/4 v14, 0x1

    add-int/lit8 v15, v0, -0x1

    .line 479
    .local v15, "newWindowEndUnbounded":I
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 480
    .local v0, "newWindowStart":I
    add-int/lit8 v1, v9, -0x1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 482
    .local v1, "newWindowEnd":I
    iget-boolean v2, v7, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_4

    .line 483
    move v0, v13

    .line 484
    move v1, v15

    .line 486
    .end local v0    # "newWindowStart":I
    .end local v1    # "newWindowEnd":I
    .local v5, "newWindowStart":I
    .local v6, "newWindowEnd":I
    :cond_4
    move v5, v0

    move v6, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v7, v5, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    .line 487
    .local v4, "rangeStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v7, v6, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 489
    .local v3, "rangeEnd":I
    const/4 v0, 0x0

    .line 490
    .local v0, "wrap":Z
    if-le v4, v3, :cond_5

    .line 491
    const/4 v0, 0x1

    .line 498
    .end local v0    # "wrap":Z
    .local v16, "wrap":Z
    :cond_5
    move/from16 v16, v0

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 499
    .local v1, "index":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 500
    .local v2, "remove":Z
    if-nez v16, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v3, :cond_7

    .line 501
    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    .line 502
    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v4, :cond_8

    .line 503
    const/4 v2, 0x1

    .line 506
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 507
    iget-object v10, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v10, v10, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 508
    .local v10, "previousView":Landroid/view/View;
    iget-object v14, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v14, v14, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 510
    .local v14, "oldRelativeIndex":I
    iget-object v11, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const/4 v11, -0x1

    invoke-virtual {v7, v14, v11, v10, v8}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 513
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "remove":Z
    .end local v10    # "previousView":Landroid/view/View;
    .end local v14    # "oldRelativeIndex":I
    :cond_9
    nop

    .line 498
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v14, 0x1

    goto :goto_1

    .line 516
    :cond_a
    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    if-ne v5, v0, :cond_c

    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-ne v6, v0, :cond_c

    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    if-eq v13, v0, :cond_b

    goto :goto_3

    .line 573
    :cond_b
    move/from16 v18, v3

    move/from16 v27, v4

    move v2, v9

    move v0, v13

    move/from16 v22, v15

    move v9, v5

    move v13, v6

    goto/16 :goto_8

    .line 519
    :cond_c
    :goto_3
    move v0, v5

    .local v0, "i":I
    :goto_4
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-gt v10, v6, :cond_11

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v11

    .line 523
    .local v11, "index":I
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 524
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .local v0, "oldRelativeIndex":I
    goto :goto_5

    .line 526
    .end local v0    # "oldRelativeIndex":I
    :cond_d
    const/4 v0, -0x1

    .restart local v0    # "oldRelativeIndex":I
    :goto_5
    move v14, v0

    .line 528
    .end local v0    # "oldRelativeIndex":I
    .restart local v14    # "oldRelativeIndex":I
    sub-int v2, v10, v13

    .line 533
    .local v2, "newRelativeIndex":I
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    move/from16 v17, v0

    .line 535
    .local v17, "inOldRange":Z
    if-eqz v17, :cond_f

    .line 536
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 537
    .local v0, "view":Landroid/view/View;
    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move/from16 v18, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v3    # "rangeEnd":I
    .local v18, "rangeEnd":I
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 538
    invoke-virtual {v7, v0, v2}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 539
    invoke-virtual {v7, v14, v2, v0, v8}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 542
    .end local v0    # "view":Landroid/view/View;
    nop

    .line 562
    move v1, v2

    move/from16 v27, v4

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v21, v14

    move/from16 v22, v15

    const/4 v2, -0x1

    move v9, v5

    move v13, v6

    goto :goto_7

    .line 544
    .end local v18    # "rangeEnd":I
    .restart local v3    # "rangeEnd":I
    :cond_f
    move/from16 v18, v3

    .end local v3    # "rangeEnd":I
    .restart local v18    # "rangeEnd":I
    invoke-virtual {v7, v10, v9}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 545
    .local v3, "adapterPosition":I
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1, v7}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, "newView":Landroid/view/View;
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v19

    .line 550
    .local v19, "itemId":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 553
    .local v0, "fl":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_10

    .line 554
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 556
    :cond_10
    iget-object v12, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move/from16 v21, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .end local v14    # "oldRelativeIndex":I
    .local v21, "oldRelativeIndex":I
    move/from16 v22, v15

    new-instance v15, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .end local v15    # "newWindowEndUnbounded":I
    .local v22, "newWindowEndUnbounded":I
    move-object/from16 v23, v0

    move-object v0, v15

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .local v23, "fl":Landroid/widget/FrameLayout;
    move-object/from16 v24, v1

    move-object v1, v7

    .end local v1    # "newView":Landroid/view/View;
    .local v24, "newView":Landroid/view/View;
    move/from16 v25, v2

    move-object/from16 v2, v23

    .end local v2    # "newRelativeIndex":I
    .local v25, "newRelativeIndex":I
    move/from16 v26, v3

    move/from16 v3, v25

    .end local v3    # "adapterPosition":I
    .local v26, "adapterPosition":I
    move/from16 v27, v4

    move/from16 v4, v26

    .end local v4    # "rangeStart":I
    .local v27, "rangeStart":I
    move/from16 v28, v9

    move/from16 v29, v13

    move v9, v5

    move v13, v6

    move-wide/from16 v5, v19

    .end local v5    # "newWindowStart":I
    .end local v6    # "newWindowEnd":I
    .local v9, "newWindowStart":I
    .local v13, "newWindowEnd":I
    .local v28, "adapterCount":I
    .local v29, "newWindowStartUnbounded":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 559
    .end local v23    # "fl":Landroid/widget/FrameLayout;
    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 560
    .end local v25    # "newRelativeIndex":I
    .local v1, "newRelativeIndex":I
    const/4 v2, -0x1

    invoke-virtual {v7, v2, v1, v0, v8}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 562
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v19    # "itemId":J
    .end local v24    # "newView":Landroid/view/View;
    .end local v26    # "adapterPosition":I
    :goto_7
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 519
    .end local v1    # "newRelativeIndex":I
    .end local v11    # "index":I
    .end local v17    # "inOldRange":Z
    .end local v21    # "oldRelativeIndex":I
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    move v5, v9

    move v6, v13

    move/from16 v3, v18

    move/from16 v15, v22

    move/from16 v4, v27

    move/from16 v9, v28

    move/from16 v13, v29

    goto/16 :goto_4

    .line 564
    .end local v0    # "i":I
    .end local v18    # "rangeEnd":I
    .end local v22    # "newWindowEndUnbounded":I
    .end local v27    # "rangeStart":I
    .end local v28    # "adapterCount":I
    .end local v29    # "newWindowStartUnbounded":I
    .local v3, "rangeEnd":I
    .restart local v4    # "rangeStart":I
    .restart local v5    # "newWindowStart":I
    .restart local v6    # "newWindowEnd":I
    .local v9, "adapterCount":I
    .local v13, "newWindowStartUnbounded":I
    .restart local v15    # "newWindowEndUnbounded":I
    :cond_11
    move/from16 v18, v3

    move/from16 v27, v4

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v22, v15

    move v9, v5

    move v13, v6

    .end local v3    # "rangeEnd":I
    .end local v4    # "rangeStart":I
    .end local v5    # "newWindowStart":I
    .end local v6    # "newWindowEnd":I
    .end local v15    # "newWindowEndUnbounded":I
    .local v9, "newWindowStart":I
    .local v13, "newWindowEnd":I
    .restart local v18    # "rangeEnd":I
    .restart local v22    # "newWindowEndUnbounded":I
    .restart local v27    # "rangeStart":I
    .restart local v28    # "adapterCount":I
    .restart local v29    # "newWindowStartUnbounded":I
    iput v9, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 565
    iput v13, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 566
    move/from16 v0, v29

    iput v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 567
    .end local v29    # "newWindowStartUnbounded":I
    .local v0, "newWindowStartUnbounded":I
    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_12

    .line 568
    iget v1, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v2, v28

    invoke-virtual {v7, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v1

    .line 569
    .end local v28    # "adapterCount":I
    .local v1, "adapterStart":I
    .local v2, "adapterCount":I
    iget v3, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v7, v3, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 570
    .local v3, "adapterEnd":I
    iget-object v4, v7, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4, v1, v3}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .end local v1    # "adapterStart":I
    .end local v3    # "adapterEnd":I
    goto :goto_8

    .line 573
    .end local v2    # "adapterCount":I
    .restart local v28    # "adapterCount":I
    :cond_12
    move/from16 v2, v28

    .end local v28    # "adapterCount":I
    .restart local v2    # "adapterCount":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    .line 575
    return-void
.end method

.method public showPrevious()V
    .locals 1

    .line 346
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 347
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 592
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 593
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .line 268
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 271
    :cond_0
    if-ne p2, v0, :cond_1

    .line 272
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 275
    :cond_1
    :goto_0
    return-void
.end method
