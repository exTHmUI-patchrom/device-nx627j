.class public Landroid/graphics/drawable/shapes/ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "ArcShape.java"


# instance fields
.field private final mStartAngle:F

.field private final mSweepAngle:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 44
    iput p1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    .line 45
    iput p2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/ArcShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/ArcShape;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 71
    return-void
.end method

.method public final getStartAngle()F
    .locals 1

    .line 52
    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    return v0
.end method

.method public final getSweepAngle()F
    .locals 1

    .line 59
    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    return v0
.end method
