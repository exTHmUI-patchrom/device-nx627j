.class Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 684
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .line 712
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 713
    .local v0, "elapsed":I
    iget v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 714
    .local v1, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 717
    .local v2, "frameTimes":[I
    move v3, v0

    .line 718
    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 719
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    aget v5, v2, v4

    if-lt v3, v5, :cond_0

    .line 720
    aget v5, v2, v4

    sub-int/2addr v3, v5

    .line 721
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 726
    :cond_0
    if-ge v4, v1, :cond_1

    .line 727
    int-to-float v5, v3

    iget v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .local v5, "frameElapsed":F
    goto :goto_1

    .line 729
    .end local v5    # "frameElapsed":F
    :cond_1
    const/4 v5, 0x0

    .line 732
    .restart local v5    # "frameElapsed":F
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    return v6
.end method

.method public getTotalDuration()I
    .locals 1

    .line 707
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method public updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .line 687
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 688
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 690
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 691
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 694
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 695
    .local v1, "frameTimes":[I
    const/4 v2, 0x0

    .line 696
    .local v2, "totalDuration":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 697
    if-eqz p2, :cond_2

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .line 698
    .local v4, "duration":I
    aput v4, v1, v3

    .line 699
    add-int/2addr v2, v4

    .line 696
    .end local v4    # "duration":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    .end local v3    # "i":I
    :cond_3
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    .line 703
    return v2
.end method
