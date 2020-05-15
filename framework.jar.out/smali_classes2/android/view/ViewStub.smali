.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$ViewReplaceRunnable;,
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 107
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 112
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mID:I

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, v3}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewStub;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 264
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .local v0, "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 267
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 269
    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    :goto_0
    iget v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 271
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 272
    iget v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 274
    :cond_1
    return-object v1
.end method

.method private replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 278
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 279
    .local v0, "index":I
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 281
    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 282
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 287
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 222
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 218
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .line 132
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 4

    .line 297
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 299
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 300
    iget v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v1, :cond_1

    .line 301
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 302
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 305
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 306
    iget-object v3, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 310
    :cond_0
    return-object v2

    .line 312
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    .line 214
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setInflatedIdAsync"
    .end annotation

    .line 147
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 148
    return-void
.end method

.method public setInflatedIdAsync(I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "inflatedId"    # I

    .line 152
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 201
    iput-object p1, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutResourceAsync"
    .end annotation

    .line 187
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 188
    return-void
.end method

.method public setLayoutResourceAsync(I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "layoutResource"    # I

    .line 192
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Landroid/view/ViewStub$OnInflateListener;

    .line 328
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 329
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setVisibilityAsync"
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 239
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .end local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 242
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 250
    :cond_3
    :goto_0
    return-void
.end method

.method public setVisibilityAsync(I)Ljava/lang/Runnable;
    .locals 3
    .param p1, "visibility"    # I

    .line 254
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewStub$ViewReplaceRunnable;

    invoke-direct {p0, v0}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/view/ViewStub$ViewReplaceRunnable;-><init>(Landroid/view/ViewStub;Landroid/view/View;)V

    return-object v1
.end method
