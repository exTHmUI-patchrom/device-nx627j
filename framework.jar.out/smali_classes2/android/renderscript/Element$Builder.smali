.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 1314
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1315
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1316
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1317
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1318
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .locals 1
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;

    .line 1371
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .locals 7
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    .line 1328
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 1333
    iget v1, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1334
    const-string v1, "#padding_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1336
    return-object p0

    .line 1340
    :cond_0
    iget v1, p1, Landroid/renderscript/Element;->mVectorSize:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1341
    iput v0, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_0

    .line 1343
    :cond_1
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1346
    :goto_0
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v3, v3

    if-ne v1, v3, :cond_2

    .line 1347
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [Landroid/renderscript/Element;

    .line 1348
    .local v1, "e":[Landroid/renderscript/Element;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    .line 1349
    .local v3, "s":[Ljava/lang/String;
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v4, v4, 0x8

    new-array v4, v4, [I

    .line 1350
    .local v4, "as":[I
    iget-object v5, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v6, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v5, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1351
    iget-object v5, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v6, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v5, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    iget-object v5, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v6, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1353
    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1354
    iput-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1355
    iput-object v4, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1357
    .end local v1    # "e":[Landroid/renderscript/Element;
    .end local v3    # "s":[Ljava/lang/String;
    .end local v4    # "as":[I
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v1, v2

    .line 1358
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p2, v1, v2

    .line 1359
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput p3, v1, v2

    .line 1360
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1361
    return-object p0

    .line 1329
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array size cannot be less than 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create()Landroid/renderscript/Element;
    .locals 14

    .line 1381
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1382
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    .line 1383
    .local v0, "ein":[Landroid/renderscript/Element;
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v8, v1, [Ljava/lang/String;

    .line 1384
    .local v8, "sin":[Ljava/lang/String;
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v9, v1, [I

    .line 1385
    .local v9, "asin":[I
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1386
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v3, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v3, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1389
    array-length v1, v0

    new-array v10, v1, [J

    .line 1390
    .local v10, "ids":[J
    nop

    .local v3, "ct":I
    :goto_0
    move v1, v3

    .end local v3    # "ct":I
    .local v1, "ct":I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1391
    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v10, v1

    .line 1390
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ct":I
    .restart local v3    # "ct":I
    goto :goto_0

    .line 1393
    .end local v3    # "ct":I
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v10, v8, v9}, Landroid/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v11

    .line 1394
    .local v11, "id":J
    new-instance v13, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object v1, v13

    move-wide v2, v11

    move-object v5, v0

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v13
.end method
