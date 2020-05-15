.class Landroid/graphics/ColorSpace$Renderer$Point;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field final mColor:I

.field final mColorSpace:Landroid/graphics/ColorSpace;

.field final mRgb:[F


# direct methods
.method constructor <init>(Landroid/graphics/ColorSpace;[FI)V
    .locals 0
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p2, "rgb"    # [F
    .param p3, "color"    # I

    .line 4453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4454
    iput-object p1, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 4455
    iput-object p2, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    .line 4456
    iput p3, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mColor:I

    .line 4457
    return-void
.end method
