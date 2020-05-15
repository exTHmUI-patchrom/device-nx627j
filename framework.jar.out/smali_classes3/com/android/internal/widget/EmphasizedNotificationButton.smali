.class public Lcom/android/internal/widget/EmphasizedNotificationButton;
.super Landroid/widget/Button;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mStrokeColor:I

.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    .line 57
    .local v0, "background":Landroid/graphics/drawable/DrawableWrapper;
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mStrokeWidth:I

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10600e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mStrokeColor:I

    .line 61
    iget-object v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method


# virtual methods
.method public setButtonBackground(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 73
    .local v0, "inner":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 75
    return-void
.end method

.method public setHasStroke(Z)V
    .locals 3
    .param p1, "hasStroke"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 80
    .local v0, "inner":Landroid/graphics/drawable/GradientDrawable;
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mStrokeWidth:I

    nop

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 82
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 68
    return-void
.end method
