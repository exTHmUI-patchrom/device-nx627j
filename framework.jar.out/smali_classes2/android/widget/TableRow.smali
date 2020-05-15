.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private mColumnWidths:[I

.field private mConstrainedColumnWidths:[I

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 61
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 73
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 74
    return-void
.end method

.method static synthetic access$302(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TableRow;
    .param p1, "x1"    # Landroid/util/SparseIntArray;

    .line 46
    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private initTableRow()V
    .locals 3

    .line 77
    iget-object v0, p0, Landroid/widget/TableRow;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 78
    .local v0, "oldListener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow$1;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 82
    :cond_0
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 83
    return-void
.end method

.method private mapIndexAndColumns()V
    .locals 9

    .line 154
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_3

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "virtualCount":I
    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v1

    .line 158
    .local v1, "count":I
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 159
    iget-object v2, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 161
    .local v2, "columnToChild":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "virtualCount":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/TableRow$LayoutParams;

    .line 165
    .local v6, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    iget v7, v6, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v7, v4, :cond_0

    .line 166
    iget v4, v6, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 169
    :cond_0
    move v7, v4

    move v4, v3

    .local v4, "j":I
    .local v7, "virtualCount":I
    :goto_1
    iget v8, v6, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v4, v8, :cond_1

    .line 170
    add-int/lit8 v8, v7, 0x1

    .local v8, "virtualCount":I
    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    .end local v7    # "virtualCount":I
    add-int/lit8 v4, v4, 0x1

    move v7, v8

    goto :goto_1

    .line 161
    .end local v4    # "j":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "layoutParams":Landroid/widget/TableRow$LayoutParams;
    .end local v8    # "virtualCount":I
    .restart local v7    # "virtualCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    .end local v7    # "virtualCount":I
    .local v4, "virtualCount":I
    :cond_2
    iput v4, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 176
    .end local v1    # "count":I
    .end local v2    # "columnToChild":Landroid/util/SparseIntArray;
    .end local v4    # "virtualCount":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 372
    instance-of v0, p1, Landroid/widget/TableRow$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 364
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 380
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 354
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 385
    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    .line 259
    .local v0, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    iget v1, v0, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method getColumnsWidths(II)[I
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 288
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v0

    .line 289
    .local v0, "numColumns":I
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 290
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 293
    :cond_1
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 295
    .local v1, "columnWidths":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 296
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 297
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 298
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 299
    .local v5, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 301
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    packed-switch v6, :pswitch_data_0

    .line 311
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    .line 306
    :pswitch_0
    nop

    .line 307
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 306
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 309
    .local v6, "spec":I
    goto :goto_1

    .line 303
    .end local v6    # "spec":I
    :pswitch_1
    const/4 v6, -0x2

    invoke-static {p1, v2, v6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v6

    .line 304
    .restart local v6    # "spec":I
    nop

    .line 311
    :goto_1
    nop

    .line 313
    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 315
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, v5, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 317
    .local v7, "width":I
    aput v7, v1, v3

    .line 318
    .end local v6    # "spec":I
    .end local v7    # "width":I
    goto :goto_2

    .line 319
    :cond_2
    aput v2, v1, v3

    .line 321
    .end local v5    # "layoutParams":Landroid/widget/TableRow$LayoutParams;
    :goto_2
    goto :goto_3

    .line 322
    :cond_3
    aput v2, v1, v3

    .line 295
    .end local v4    # "child":Landroid/view/View;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v3    # "i":I
    :cond_4
    return-object v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "i"    # I

    .line 130
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 135
    .local v0, "deflectedIndex":I
    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 139
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 150
    :cond_0
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 21
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    move-object/from16 v0, p0

    .line 193
    iget-object v1, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v1, :cond_6

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    .line 196
    .local v1, "lp":Landroid/widget/TableRow$LayoutParams;
    const/high16 v2, 0x40000000    # 2.0f

    .line 197
    .local v2, "measureMode":I
    const/4 v3, 0x0

    .line 199
    .local v3, "columnWidth":I
    iget v4, v1, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 200
    .local v4, "span":I
    iget-object v5, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 201
    .local v5, "constrainedColumnWidths":[I
    const/4 v6, 0x0

    move v7, v3

    move v3, v6

    .local v3, "i":I
    .local v7, "columnWidth":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 202
    add-int v8, p2, v3

    aget v8, v5, v8

    add-int/2addr v7, v8

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v3    # "i":I
    :cond_0
    iget v3, v1, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 206
    .local v3, "gravity":I
    invoke-static {v3}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v8

    .line 208
    .local v8, "isHorizontalGravity":Z
    if-eqz v8, :cond_1

    .line 209
    const/high16 v2, -0x80000000

    .line 215
    :cond_1
    iget v9, v1, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    sub-int v9, v7, v9

    iget v10, v1, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    .line 216
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 215
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 218
    .local v9, "childWidthMeasureSpec":I
    iget v10, v0, Landroid/widget/TableRow;->mPaddingTop:I

    iget v11, v0, Landroid/widget/TableRow;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    add-int v10, v10, p6

    iget v12, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    move/from16 v13, p5

    invoke-static {v13, v10, v12}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v10

    .line 222
    .local v10, "childHeightMeasureSpec":I
    move-object/from16 v12, p1

    invoke-virtual {v12, v9, v10}, Landroid/view/View;->measure(II)V

    .line 224
    const/4 v14, 0x1

    if-eqz v8, :cond_5

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 226
    .local v15, "childWidth":I
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v16

    sub-int v17, v7, v15

    aput v17, v16, v14

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableRow;->getLayoutDirection()I

    move-result v6

    .line 229
    .local v6, "layoutDirection":I
    invoke-static {v3, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v16

    .line 230
    .local v16, "absoluteGravity":I
    move/from16 v19, v2

    and-int/lit8 v2, v16, 0x7

    .end local v2    # "measureMode":I
    .local v19, "measureMode":I
    if-eq v2, v14, :cond_4

    const/4 v14, 0x3

    if-eq v2, v14, :cond_3

    const/4 v14, 0x5

    if-eq v2, v14, :cond_2

    .end local v6    # "layoutDirection":I
    .end local v15    # "childWidth":I
    .end local v16    # "absoluteGravity":I
    goto :goto_1

    .line 235
    .restart local v6    # "layoutDirection":I
    .restart local v15    # "childWidth":I
    .restart local v16    # "absoluteGravity":I
    :cond_2
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v2

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    const/16 v17, 0x1

    aget v14, v14, v17

    const/16 v18, 0x0

    aput v14, v2, v18

    .line 236
    goto :goto_1

    .line 233
    :cond_3
    goto :goto_1

    .line 238
    :cond_4
    move/from16 v17, v14

    const/16 v18, 0x0

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v2

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    aget v14, v14, v17

    div-int/lit8 v14, v14, 0x2

    aput v14, v2, v18

    .line 241
    .end local v6    # "layoutDirection":I
    .end local v15    # "childWidth":I
    .end local v16    # "absoluteGravity":I
    :goto_1
    goto :goto_2

    .line 242
    .end local v19    # "measureMode":I
    .restart local v2    # "measureMode":I
    :cond_5
    move/from16 v19, v2

    move/from16 v18, v6

    move/from16 v17, v14

    .end local v2    # "measureMode":I
    .restart local v19    # "measureMode":I
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v2

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v6

    aput v18, v6, v17

    aput v18, v2, v18

    .line 244
    .end local v1    # "lp":Landroid/widget/TableRow$LayoutParams;
    .end local v3    # "gravity":I
    .end local v4    # "span":I
    .end local v5    # "constrainedColumnWidths":[I
    .end local v7    # "columnWidth":I
    .end local v8    # "isHorizontalGravity":Z
    .end local v9    # "childWidthMeasureSpec":I
    .end local v10    # "childHeightMeasureSpec":I
    .end local v19    # "measureMode":I
    :goto_2
    goto :goto_3

    .line 246
    :cond_6
    move-object/from16 v12, p1

    move/from16 v13, p5

    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 249
    :goto_3
    return-void
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 183
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget v0, v0, p1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 122
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableRow;->layoutHorizontal(IIII)V

    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    .line 114
    return-void
.end method

.method setColumnCollapsed(IZ)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "collapsed"    # Z

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 103
    if-eqz p2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_1
    return-void
.end method

.method setColumnsWidthConstraints([I)V
    .locals 2
    .param p1, "columnWidths"    # [I

    .line 341
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 346
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 347
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 90
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 91
    return-void
.end method
