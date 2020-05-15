.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1364
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1219
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v0, p0

    .line 1269
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1219
    const/16 v1, 0x16

    new-array v2, v1, [I

    iput-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1258
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1271
    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1274
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1275
    .local v6, "targetSdkVersion":I
    const/16 v7, 0x11

    const/4 v8, 0x1

    if-lt v6, v7, :cond_1

    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    :goto_1
    iput-boolean v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1278
    iget-object v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1280
    .local v9, "rules":[I
    iget-object v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1282
    .local v10, "initialRules":[I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 1283
    .local v11, "N":I
    move v12, v2

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_b

    .line 1284
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v13

    .line 1285
    .local v13, "attr":I
    const/4 v14, -0x1

    packed-switch v13, :pswitch_data_0

    .end local v13    # "attr":I
    goto/16 :goto_c

    .line 1353
    .restart local v13    # "attr":I
    :pswitch_0
    const/16 v15, 0x15

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_3

    :cond_2
    move v14, v2

    :goto_3
    aput v14, v9, v15

    .end local v13    # "attr":I
    goto/16 :goto_c

    .line 1350
    .restart local v13    # "attr":I
    :pswitch_1
    const/16 v15, 0x14

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_4

    :cond_3
    move v14, v2

    :goto_4
    aput v14, v9, v15

    .line 1351
    goto/16 :goto_c

    .line 1347
    :pswitch_2
    const/16 v14, 0x13

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1348
    goto/16 :goto_c

    .line 1344
    :pswitch_3
    const/16 v14, 0x12

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1345
    goto/16 :goto_c

    .line 1341
    :pswitch_4
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v7

    .line 1342
    goto/16 :goto_c

    .line 1338
    :pswitch_5
    const/16 v14, 0x10

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1339
    goto/16 :goto_c

    .line 1287
    :pswitch_6
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1288
    goto/16 :goto_c

    .line 1335
    :pswitch_7
    const/16 v15, 0xf

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_5

    :cond_4
    move v14, v2

    :goto_5
    aput v14, v9, v15

    .line 1336
    goto/16 :goto_c

    .line 1332
    :pswitch_8
    const/16 v15, 0xe

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_6

    :cond_5
    move v14, v2

    :goto_6
    aput v14, v9, v15

    .line 1333
    goto/16 :goto_c

    .line 1329
    :pswitch_9
    const/16 v15, 0xd

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_7

    :cond_6
    move v14, v2

    :goto_7
    aput v14, v9, v15

    .line 1330
    goto/16 :goto_c

    .line 1326
    :pswitch_a
    const/16 v15, 0xc

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_8

    :cond_7
    move v14, v2

    :goto_8
    aput v14, v9, v15

    .line 1327
    goto/16 :goto_c

    .line 1323
    :pswitch_b
    const/16 v15, 0xb

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_8

    goto :goto_9

    :cond_8
    move v14, v2

    :goto_9
    aput v14, v9, v15

    .line 1324
    goto/16 :goto_c

    .line 1320
    :pswitch_c
    const/16 v15, 0xa

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_a

    :cond_9
    move v14, v2

    :goto_a
    aput v14, v9, v15

    .line 1321
    goto :goto_c

    .line 1317
    :pswitch_d
    const/16 v15, 0x9

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_b

    :cond_a
    move v14, v2

    :goto_b
    aput v14, v9, v15

    .line 1318
    goto :goto_c

    .line 1314
    :pswitch_e
    const/16 v14, 0x8

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1315
    goto :goto_c

    .line 1311
    :pswitch_f
    const/4 v14, 0x7

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1312
    goto :goto_c

    .line 1308
    :pswitch_10
    const/4 v14, 0x6

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1309
    goto :goto_c

    .line 1305
    :pswitch_11
    const/4 v14, 0x5

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1306
    goto :goto_c

    .line 1302
    :pswitch_12
    const/4 v14, 0x4

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1303
    goto :goto_c

    .line 1299
    :pswitch_13
    const/4 v14, 0x3

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1300
    goto :goto_c

    .line 1296
    :pswitch_14
    const/4 v14, 0x2

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1297
    goto :goto_c

    .line 1293
    :pswitch_15
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v8

    .line 1294
    goto :goto_c

    .line 1290
    :pswitch_16
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v2

    .line 1291
    nop

    .line 1283
    .end local v13    # "attr":I
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1357
    .end local v12    # "i":I
    :cond_b
    iput-boolean v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1358
    invoke-static {v9, v2, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1361
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1371
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1372
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1378
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1219
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1379
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1388
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1219
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1258
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1390
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1391
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1392
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1394
    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1395
    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1397
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1218
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .locals 2

    .line 1498
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_0

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

.method private isRelativeRule(I)Z
    .locals 1
    .param p1, "rule"    # I

    .line 1504
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

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

.method private resolveRules(I)V
    .locals 17
    .param p1, "layoutDirection"    # I

    move-object/from16 v0, p0

    .line 1523
    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1526
    .local v4, "isLayoutRtl":Z
    :goto_0
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x16

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1529
    iget-boolean v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/16 v10, 0x15

    const/16 v11, 0x14

    const/16 v12, 0x11

    const/16 v13, 0x10

    const/16 v14, 0x13

    const/16 v15, 0x12

    if-eqz v5, :cond_c

    .line 1530
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-eqz v5, :cond_2

    .line 1531
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    if-nez v5, :cond_1

    .line 1534
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v15

    aput v6, v5, v9

    .line 1536
    :cond_1
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v15

    .line 1539
    :cond_2
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    if-eqz v5, :cond_4

    .line 1540
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v8

    if-nez v5, :cond_3

    .line 1543
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v14

    aput v6, v5, v8

    .line 1545
    :cond_3
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v14

    .line 1548
    :cond_4
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    if-eqz v5, :cond_6

    .line 1549
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v2

    if-nez v5, :cond_5

    .line 1552
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v13

    aput v6, v5, v2

    .line 1554
    :cond_5
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v13

    .line 1557
    :cond_6
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    if-eqz v5, :cond_8

    .line 1558
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v1

    if-nez v5, :cond_7

    .line 1561
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v12

    aput v6, v5, v1

    .line 1563
    :cond_7
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v12

    .line 1566
    :cond_8
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-eqz v1, :cond_a

    .line 1567
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-nez v1, :cond_9

    .line 1570
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v11

    aput v5, v1, v7

    .line 1572
    :cond_9
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v11

    .line 1575
    :cond_a
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_22

    .line 1576
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0xb

    aget v1, v1, v5

    if-nez v1, :cond_b

    .line 1579
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v10

    aput v6, v1, v5

    .line 1581
    :cond_b
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v10

    goto/16 :goto_8

    .line 1585
    :cond_c
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-nez v5, :cond_d

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    if-eqz v5, :cond_f

    :cond_d
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    if-nez v5, :cond_e

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v8

    if-eqz v5, :cond_f

    .line 1588
    :cond_e
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v9

    .line 1589
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v8

    .line 1591
    :cond_f
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-eqz v5, :cond_11

    .line 1593
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_10

    move v6, v8

    goto :goto_1

    :cond_10
    move v6, v9

    :goto_1
    iget-object v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v8, v8, v15

    aput v8, v5, v6

    .line 1594
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v15

    .line 1596
    :cond_11
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    if-eqz v5, :cond_13

    .line 1598
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_12

    move/from16 v16, v9

    goto :goto_2

    :cond_12
    const/16 v16, 0x7

    :goto_2
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v14

    aput v6, v5, v16

    .line 1599
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v14

    .line 1602
    :cond_13
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    if-nez v5, :cond_14

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    if-eqz v5, :cond_16

    :cond_14
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v2

    if-nez v5, :cond_15

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v1

    if-eqz v5, :cond_16

    .line 1605
    :cond_15
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v2

    .line 1606
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v1

    .line 1608
    :cond_16
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    if-eqz v5, :cond_18

    .line 1610
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_17

    move v6, v1

    goto :goto_3

    :cond_17
    move v6, v2

    :goto_3
    iget-object v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v8, v8, v13

    aput v8, v5, v6

    .line 1611
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v13

    .line 1613
    :cond_18
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    if-eqz v5, :cond_1a

    .line 1615
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_19

    move v1, v2

    nop

    :cond_19
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v12

    aput v6, v5, v1

    .line 1616
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v12

    .line 1619
    :cond_1a
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_1b

    goto :goto_4

    .line 1625
    :cond_1b
    const/16 v5, 0xb

    goto :goto_6

    .line 1619
    :cond_1c
    :goto_4
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-nez v1, :cond_1d

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0xb

    aget v1, v1, v5

    if-eqz v1, :cond_1e

    goto :goto_5

    .line 1622
    :cond_1d
    const/16 v5, 0xb

    :goto_5
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v7

    .line 1623
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v5

    .line 1625
    :cond_1e
    :goto_6
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-eqz v1, :cond_20

    .line 1627
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_1f

    move v6, v5

    goto :goto_7

    :cond_1f
    move v6, v7

    :goto_7
    iget-object v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v8, v8, v11

    aput v8, v1, v6

    .line 1628
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v11

    .line 1630
    :cond_20
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_22

    .line 1632
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_21

    move v5, v7

    nop

    :cond_21
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v10

    aput v6, v1, v5

    .line 1633
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v10

    .line 1637
    :cond_22
    :goto_8
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1638
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1639
    return-void
.end method

.method private shouldResolveLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1692
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_2

    .line 1693
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1692
    :goto_1
    return v0
.end method


# virtual methods
.method public addRule(I)V
    .locals 1
    .param p1, "verb"    # I

    .line 1425
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1426
    return-void
.end method

.method public addRule(II)V
    .locals 2
    .param p1, "verb"    # I
    .param p2, "subject"    # I

    .line 1451
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1453
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1456
    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1457
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1458
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1459
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1402
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1699
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1700
    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1701
    return-void
.end method

.method public getRule(I)I
    .locals 1
    .param p1, "verb"    # I

    .line 1494
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .locals 1

    .line 1669
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1656
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1657
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .locals 1
    .param p1, "verb"    # I

    .line 1478
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1479
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1683
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1688
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1689
    return-void
.end method
