.class public Landroid/view/ViewOverlay;
.super Ljava/lang/Object;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewOverlay$OverlayViewGroup;
    }
.end annotation


# instance fields
.field mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 51
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method public clear()V
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->clear()V

    .line 95
    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method
