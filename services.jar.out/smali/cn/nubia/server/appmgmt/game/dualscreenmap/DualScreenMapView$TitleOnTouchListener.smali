.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;
.super Ljava/lang/Object;
.source "DualScreenMapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleOnTouchListener"
.end annotation


# instance fields
.field private mDownPointRawX:I

.field private mDownPointRawY:I

.field private mMovePointRawX:I

.field private mMovePointRawY:I

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 698
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenWidth:I

    .line 699
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenHeight:I

    .line 700
    return-void
.end method

.method private updatePosition(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 723
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p2

    .line 724
    .local v1, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, p3

    .line 725
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, p3

    .line 726
    .local v3, "bottom":I
    if-gez v0, :cond_0

    .line 727
    const/4 v0, 0x0

    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 730
    :cond_0
    if-gez v2, :cond_1

    .line 731
    const/4 v2, 0x0

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 734
    :cond_1
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenWidth:I

    if-le v1, v4, :cond_2

    .line 735
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenWidth:I

    .line 736
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 738
    :cond_2
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenHeight:I

    if-le v3, v4, :cond_3

    .line 739
    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenHeight:I

    .line 740
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mScreenHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 742
    :cond_3
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 743
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mMovePointRawX:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mDownPointRawX:I

    .line 744
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mMovePointRawY:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mDownPointRawY:I

    .line 745
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 704
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mMovePointRawX:I

    .line 711
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mMovePointRawY:I

    .line 712
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mMovePointRawX:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mDownPointRawX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mMovePointRawY:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mDownPointRawY:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->updatePosition(Landroid/view/View;II)V

    .line 714
    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mDownPointRawX:I

    .line 707
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;->mDownPointRawY:I

    .line 708
    nop

    .line 718
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
