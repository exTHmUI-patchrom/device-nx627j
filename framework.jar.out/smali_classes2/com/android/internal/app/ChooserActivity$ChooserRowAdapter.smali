.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1204
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1201
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    .line 1202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 1205
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1206
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1208
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1221
    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 1198
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method private setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V
    .locals 3
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1380
    iget-object v0, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 1381
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 1380
    invoke-virtual {v0, v1, p2, v2, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1382
    return-void
.end method


# virtual methods
.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 9
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v0

    .line 1323
    .local v0, "start":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    .line 1325
    .local v1, "startType":I
    add-int/lit8 v2, v0, 0x4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1326
    .local v2, "end":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v4

    if-eq v4, v1, :cond_0

    if-lt v2, v0, :cond_0

    .line 1327
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1330
    :cond_0
    const v4, 0x105003b

    const/4 v5, 0x0

    if-ne v1, v3, :cond_4

    .line 1331
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v8, 0x1060061

    .line 1332
    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v7

    .line 1331
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1333
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    add-int/lit8 v7, p1, 0x1

    .line 1334
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v7

    .line 1333
    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    .line 1335
    .local v6, "nextStartType":I
    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1336
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1337
    .local v4, "serviceSpacing":I
    if-nez p1, :cond_1

    if-eq v6, v3, :cond_1

    .line 1339
    invoke-direct {p0, p2, v5, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto :goto_2

    .line 1341
    :cond_1
    if-nez p1, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v5

    .line 1342
    .local v7, "top":I
    :goto_1
    if-eq v6, v3, :cond_3

    .line 1343
    invoke-direct {p0, p2, v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto :goto_2

    .line 1345
    :cond_3
    invoke-direct {p0, p2, v7, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 1348
    .end local v4    # "serviceSpacing":I
    .end local v6    # "nextStartType":I
    .end local v7    # "top":I
    :goto_2
    goto :goto_4

    .line 1349
    :cond_4
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1350
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    add-int/lit8 v7, p1, -0x1

    .line 1351
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v7

    .line 1350
    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    .line 1352
    .local v6, "lastStartType":I
    if-eq v6, v3, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    .line 1357
    :cond_5
    invoke-direct {p0, p2, v5, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .end local v6    # "lastStartType":I
    goto :goto_4

    .line 1353
    .restart local v6    # "lastStartType":I
    :cond_6
    :goto_3
    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1354
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1355
    .restart local v4    # "serviceSpacing":I
    invoke-direct {p0, p2, v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 1356
    .end local v4    # "serviceSpacing":I
    nop

    .line 1361
    .end local v6    # "lastStartType":I
    :goto_4
    iget-object v4, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1362
    .local v4, "oldHeight":I
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1363
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v4, :cond_7

    .line 1364
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1367
    :cond_7
    move v3, v5

    .local v3, "i":I
    :goto_5
    const/4 v6, 0x4

    if-ge v3, v6, :cond_9

    .line 1368
    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aget-object v7, v7, v3

    .line 1369
    .local v7, "v":Landroid/view/View;
    add-int v8, v0, v3

    if-gt v8, v2, :cond_8

    .line 1370
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    add-int v8, v0, v3

    aput v8, v6, v3

    .line 1372
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    aget v8, v8, v3

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_6

    .line 1374
    :cond_8
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    .end local v7    # "v":Landroid/view/View;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1377
    .end local v3    # "i":I
    :cond_9
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1267
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x109004c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1269
    .local v0, "row":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 1270
    .local v2, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1272
    .local v4, "spec":I
    move v5, v1

    .local v5, "i":I
    :goto_0
    const/4 v6, -0x1

    if-ge v5, v3, :cond_2

    .line 1273
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1274
    .local v7, "v":Landroid/view/View;
    move v8, v5

    .line 1275
    .local v8, "column":I
    new-instance v9, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v9, p0, v2, v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    new-instance v9, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v9, p0, v2, v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1290
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1291
    iget-object v9, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aput-object v7, v9, v5

    .line 1294
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1295
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v4, v4}, Landroid/view/View;->measure(II)V

    .line 1296
    if-nez v9, :cond_0

    .line 1297
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-direct {v10, v6, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v9, v10

    .line 1298
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1300
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1302
    :goto_1
    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 1303
    new-instance v6, Landroid/widget/Space;

    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v6, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "column":I
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1309
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    .line 1310
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1311
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_3

    .line 1312
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-direct {v3, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v3

    .line 1313
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1315
    :cond_3
    iget v3, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1317
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1318
    return-object v2
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1234
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1233
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getCount()I
    .locals 4

    .line 1225
    nop

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v0

    .line 1227
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1228
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1225
    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 6
    .param p1, "row"    # I

    .line 1385
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1386
    .local v0, "callerCount":I
    int-to-float v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 1388
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    .line 1389
    mul-int/lit8 v2, p1, 0x4

    return v2

    .line 1392
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    .line 1393
    .local v3, "serviceCount":I
    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1395
    .local v2, "serviceRows":I
    add-int v4, v1, v2

    if-ge p1, v4, :cond_1

    .line 1396
    sub-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    return v4

    .line 1399
    :cond_1
    add-int v4, v0, v3

    sub-int v5, p1, v1

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 1245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1250
    int-to-long v0, p1

    return-wide v0
.end method

.method public getServiceTargetRowCount()I
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1256
    if-nez p2, :cond_0

    .line 1257
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v0

    .local v0, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    goto :goto_0

    .line 1259
    .end local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 1261
    .restart local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    .line 1263
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    return-object v1
.end method
