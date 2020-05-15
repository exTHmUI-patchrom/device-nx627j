.class final Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
.super Ljava/lang/Object;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Splat"
.end annotation


# instance fields
.field final colorIndex:F

.field final radius:F

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "colorIndex"    # F

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    .line 223
    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    .line 224
    iput p3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    .line 225
    iput p4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->colorIndex:F

    .line 226
    return-void
.end method
