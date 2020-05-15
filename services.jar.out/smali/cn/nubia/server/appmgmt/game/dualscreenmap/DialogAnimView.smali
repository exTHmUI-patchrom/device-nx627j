.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DialogAnimView;
.super Landroid/widget/VideoView;
.source "DialogAnimView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    .line 28
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DialogAnimView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DialogAnimView;->getDefaultSize(II)I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DialogAnimView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DialogAnimView;->getDefaultSize(II)I

    move-result v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DialogAnimView;->setMeasuredDimension(II)V

    .line 35
    return-void
.end method
