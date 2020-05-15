.class public Landroid/graphics/ColorSpace$Connector;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Connector$Rgb;
    }
.end annotation


# instance fields
.field private final mDestination:Landroid/graphics/ColorSpace;

.field private final mIntent:Landroid/graphics/ColorSpace$RenderIntent;

.field private final mSource:Landroid/graphics/ColorSpace;

.field private final mTransform:[F

.field private final mTransformDestination:Landroid/graphics/ColorSpace;

.field private final mTransformSource:Landroid/graphics/ColorSpace;


# direct methods
.method constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V
    .locals 8
    .param p1, "source"    # Landroid/graphics/ColorSpace;
    .param p2, "destination"    # Landroid/graphics/ColorSpace;
    .param p3, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 3453
    nop

    .line 3454
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 3455
    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    .line 3456
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 3457
    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector;->computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v7

    .line 3453
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    .line 3458
    return-void
.end method

.method private constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V
    .locals 0
    .param p1, "source"    # Landroid/graphics/ColorSpace;
    .param p2, "destination"    # Landroid/graphics/ColorSpace;
    .param p3, "transformSource"    # Landroid/graphics/ColorSpace;
    .param p4, "transformDestination"    # Landroid/graphics/ColorSpace;
    .param p5, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;
    .param p6, "transform"    # [F

    .line 3469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3470
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    .line 3471
    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    .line 3472
    iput-object p3, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    .line 3473
    iput-object p4, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    .line 3474
    iput-object p5, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    .line 3475
    iput-object p6, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    .line 3476
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/ColorSpace;
    .param p2, "x1"    # Landroid/graphics/ColorSpace;
    .param p3, "x2"    # Landroid/graphics/ColorSpace;
    .param p4, "x3"    # Landroid/graphics/ColorSpace;
    .param p5, "x4"    # Landroid/graphics/ColorSpace$RenderIntent;
    .param p6, "x5"    # [F
    .param p7, "x6"    # Landroid/graphics/ColorSpace$1;

    .line 3436
    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void
.end method

.method private static computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .locals 10
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 3485
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return-object v1

    .line 3487
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v2, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3488
    .local v0, "srcRGB":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v2

    sget-object v5, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3490
    .local v2, "dstRGB":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    return-object v1

    .line 3492
    :cond_3
    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    .line 3503
    :cond_4
    return-object v1

    .line 3493
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    move-object v1, p0

    goto :goto_3

    :cond_6
    move-object v1, p1

    :goto_3
    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    .line 3494
    .local v1, "rgb":Landroid/graphics/ColorSpace$Rgb;
    if-eqz v0, :cond_7

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->access$2100([F)[F

    move-result-object v5

    goto :goto_4

    :cond_7
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v5

    .line 3495
    .local v5, "srcXYZ":[F
    :goto_4
    if-eqz v2, :cond_8

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/ColorSpace;->access$2100([F)[F

    move-result-object v6

    goto :goto_5

    :cond_8
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v6

    .line 3496
    .local v6, "dstXYZ":[F
    :goto_5
    const/4 v7, 0x3

    new-array v7, v7, [F

    aget v8, v5, v3

    aget v9, v6, v3

    div-float/2addr v8, v9

    aput v8, v7, v3

    aget v3, v5, v4

    aget v8, v6, v4

    div-float/2addr v3, v8

    aput v3, v7, v4

    const/4 v3, 0x2

    aget v4, v5, v3

    aget v8, v6, v3

    div-float/2addr v4, v8

    aput v4, v7, v3

    return-object v7
.end method

.method static identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 2
    .param p0, "source"    # Landroid/graphics/ColorSpace;

    .line 3685
    new-instance v0, Landroid/graphics/ColorSpace$Connector$1;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-direct {v0, p0, p0, v1}, Landroid/graphics/ColorSpace$Connector$1;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method


# virtual methods
.method public getDestination()Landroid/graphics/ColorSpace;
    .locals 1

    .line 3527
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getRenderIntent()Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1

    .line 3539
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public getSource()Landroid/graphics/ColorSpace;
    .locals 1

    .line 3515
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public transform(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 3561
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v0

    return-object v0
.end method

.method public transform([F)[F
    .locals 4
    .param p1, "v"    # [F

    .line 3578
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    .line 3579
    .local v0, "xyz":[F
    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    if-eqz v1, :cond_0

    .line 3580
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 3581
    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 3582
    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 3584
    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method
