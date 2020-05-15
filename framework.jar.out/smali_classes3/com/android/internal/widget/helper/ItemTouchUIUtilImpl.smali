.class Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findMaxElevation(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)F
    .locals 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "itemView"    # Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 50
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 51
    .local v1, "max":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 52
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 53
    .local v3, "child":Landroid/view/View;
    if-ne v3, p2, :cond_0

    .line 54
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v4

    .line 57
    .local v4, "elevation":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 58
    move v1, v4

    .line 51
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "elevation":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 66
    const v0, 0x10202cc

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 69
    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setElevation(F)V

    .line 71
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 33
    if-eqz p7, :cond_0

    .line 34
    const v0, 0x10202cc

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "originalElevation":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 37
    invoke-virtual {p3}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;->findMaxElevation(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    .line 39
    .local v2, "newElevation":F
    invoke-virtual {p3, v2}, Landroid/view/View;->setElevation(F)V

    .line 40
    invoke-virtual {p3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    .end local v1    # "originalElevation":Ljava/lang/Object;
    .end local v2    # "newElevation":F
    :cond_0
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 83
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 78
    return-void
.end method
