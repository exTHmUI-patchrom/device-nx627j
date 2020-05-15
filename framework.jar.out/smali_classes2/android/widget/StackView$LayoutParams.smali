.class Landroid/widget/StackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 1294
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1295
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1280
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1281
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1282
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1296
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1297
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1298
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1299
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1300
    return-void
.end method

.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "view"    # Landroid/view/View;

    .line 1285
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1286
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1280
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1281
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1282
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1283
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1287
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1288
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1289
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1290
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1291
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 1292
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    .line 1330
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1304
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1305
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v1}, Landroid/widget/StackView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v2}, Landroid/widget/StackView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1306
    move-object v0, p1

    .line 1307
    .local v0, "p":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1309
    :cond_0
    const/4 v1, 0x1

    .line 1310
    .local v1, "firstPass":Z
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1311
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1312
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1313
    if-nez v1, :cond_1

    .line 1314
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1315
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1314
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1317
    :cond_1
    const/4 v1, 0x0

    .line 1318
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 1319
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1320
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 1319
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1321
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 1327
    return-void

    .line 1307
    .end local v1    # "firstPass":Z
    :cond_3
    :goto_1
    return-void
.end method

.method resetInvalidateRect()V
    .locals 2

    .line 1334
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1335
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "newHorizontalOffset"    # I

    .line 1343
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1344
    return-void
.end method

.method public setOffsets(II)V
    .locals 17
    .param p1, "newHorizontalOffset"    # I
    .param p2, "newVerticalOffset"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1347
    move/from16 v2, p2

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    sub-int v3, v1, v3

    .line 1348
    .local v3, "horizontalOffsetDelta":I
    iput v1, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1349
    iget v4, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    sub-int v4, v2, v4

    .line 1350
    .local v4, "verticalOffsetDelta":I
    iput v2, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1352
    iget-object v5, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1353
    iget-object v5, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 1354
    iget-object v5, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1355
    .local v5, "left":I
    iget-object v6, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1356
    .local v6, "right":I
    iget-object v7, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1357
    .local v7, "top":I
    iget-object v8, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1359
    .local v8, "bottom":I
    iget-object v9, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v11, v7

    int-to-float v12, v6

    int-to-float v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1361
    iget-object v9, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    .line 1362
    .local v9, "xoffset":F
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    .line 1363
    .local v10, "yoffset":F
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v11, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1364
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1365
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    neg-float v12, v9

    neg-float v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 1367
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget-object v13, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    .line 1368
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget-object v14, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 1369
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget-object v15, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v15

    .line 1370
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1367
    invoke-virtual {v11, v12, v13, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1372
    iget-object v1, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    iget-object v2, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1374
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "bottom":I
    .end local v9    # "xoffset":F
    .end local v10    # "yoffset":F
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "newVerticalOffset"    # I

    .line 1339
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1340
    return-void
.end method
