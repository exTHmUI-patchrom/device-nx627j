.class public Landroid/graphics/RectF;
.super Ljava/lang/Object;
.source "RectF.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 556
    new-instance v0, Landroid/graphics/RectF$1;

    invoke-direct {v0}, Landroid/graphics/RectF$1;-><init>()V

    sput-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 55
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 56
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 57
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 82
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 83
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 84
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 85
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 87
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 72
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 73
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 74
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 76
    :goto_0
    return-void
.end method

.method public static intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0, "a"    # Landroid/graphics/RectF;
    .param p1, "b"    # Landroid/graphics/RectF;

    .line 434
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final centerX()F
    .locals 2

    .line 169
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .locals 2

    .line 177
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 286
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(FFFF)Z
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 304
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 320
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 92
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/RectF;

    .line 95
    .local v2, "r":Landroid/graphics/RectF;
    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 92
    .end local v2    # "r":Landroid/graphics/RectF;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 100
    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 101
    .local v0, "result":I
    :goto_0
    const/16 v3, 0x1f

    mul-int v4, v3, v0

    iget v5, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    .line 102
    .end local v0    # "result":I
    .local v4, "result":I
    mul-int v0, v3, v4

    iget v5, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    add-int/2addr v0, v5

    .line 103
    .end local v4    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v3, v0

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    :cond_3
    add-int/2addr v3, v2

    .line 104
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public final height()F
    .locals 2

    .line 161
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public inset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 268
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 269
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 270
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 271
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 272
    return-void
.end method

.method public intersect(FFFF)Z
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 345
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    .line 347
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 348
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 350
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 351
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 353
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-lez v0, :cond_2

    .line 354
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 356
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-lez v0, :cond_3

    .line 357
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 359
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 376
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    return v0
.end method

.method public intersects(FFFF)Z
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 419
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 145
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public offset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 238
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 239
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 240
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 241
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 242
    return-void
.end method

.method public offsetTo(FF)V
    .locals 2
    .param p1, "newLeft"    # F
    .param p2, "newTop"    # F

    .line 252
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 253
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 254
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 255
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 256
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 136
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 137
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 139
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 585
    return-void
.end method

.method public round(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "dst"    # Landroid/graphics/Rect;

    .line 443
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 444
    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v3

    .line 443
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    return-void
.end method

.method public roundOut(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "dst"    # Landroid/graphics/Rect;

    .line 452
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 453
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 452
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 592
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 593
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 594
    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 595
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 596
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 598
    :cond_0
    return-void
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 198
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 199
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 200
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 201
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 202
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Rect;

    .line 224
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 225
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 226
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 227
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 228
    return-void
.end method

.method public set(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/RectF;

    .line 211
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 212
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 213
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 214
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 215
    return-void
.end method

.method public setEmpty()V
    .locals 1

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 185
    return-void
.end method

.method public setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "a"    # Landroid/graphics/RectF;
    .param p2, "b"    # Landroid/graphics/RectF;

    .line 392
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 394
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 395
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 396
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 397
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 398
    const/4 v0, 0x1

    return v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sort()V
    .locals 2

    .line 525
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 526
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 527
    .local v0, "temp":F
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 528
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 530
    .end local v0    # "temp":F
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 531
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 532
    .restart local v0    # "temp":F
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 533
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 535
    .end local v0    # "temp":F
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 125
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 505
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 506
    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 507
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 508
    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 510
    :cond_1
    :goto_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 511
    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 512
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 513
    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    .line 515
    :cond_3
    :goto_1
    return-void
.end method

.method public union(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 467
    cmpg-float v0, p1, p3

    if-gez v0, :cond_4

    cmpg-float v0, p2, p4

    if-gez v0, :cond_4

    .line 468
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 469
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 470
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 471
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 472
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 473
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_2

    .line 474
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 475
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_4

    .line 476
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 478
    :cond_3
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 479
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 480
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 481
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 484
    :cond_4
    :goto_0
    return-void
.end method

.method public union(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 494
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->union(FFFF)V

    .line 495
    return-void
.end method

.method public final width()F
    .locals 2

    .line 153
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 550
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 551
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 552
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 553
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 554
    return-void
.end method
