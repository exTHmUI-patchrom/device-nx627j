.class Landroid/view/ViewDebug$2;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewMeasure(Landroid/view/View;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 565
    iput-object p1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private forceLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 573
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 574
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 575
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 576
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 577
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public pre()V
    .locals 1

    .line 568
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    .line 569
    return-void
.end method

.method public run()V
    .locals 3

    .line 584
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    iget-object v2, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mOldHeightMeasureSpec:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 585
    return-void
.end method
