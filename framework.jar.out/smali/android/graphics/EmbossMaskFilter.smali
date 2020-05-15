.class public Landroid/graphics/EmbossMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "EmbossMaskFilter.java"


# direct methods
.method public constructor <init>([FFFF)V
    .locals 2
    .param p1, "direction"    # [F
    .param p2, "ambient"    # F
    .param p3, "specular"    # F
    .param p4, "blurRadius"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 33
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 36
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/EmbossMaskFilter;->nativeConstructor([FFFF)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/EmbossMaskFilter;->native_instance:J

    .line 37
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native nativeConstructor([FFFF)J
.end method
