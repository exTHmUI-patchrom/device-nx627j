.class public Landroid/view/SurfaceControl$Builder;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mFormat:I

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mOwnerUid:I

.field private mParent:Landroid/view/SurfaceControl;

.field private mSession:Landroid/view/SurfaceSession;

.field private mWidth:I

.field private mWindowType:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 1
    .param p1, "session"    # Landroid/view/SurfaceSession;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    .line 372
    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mWindowType:I

    .line 373
    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mOwnerUid:I

    .line 381
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mSession:Landroid/view/SurfaceSession;

    .line 382
    return-void
.end method


# virtual methods
.method public build()Landroid/view/SurfaceControl;
    .locals 12

    .line 388
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    if-lez v0, :cond_0

    .line 392
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControl$Builder;->mSession:Landroid/view/SurfaceSession;

    iget-object v3, p0, Landroid/view/SurfaceControl$Builder;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    iget v5, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    iget v6, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    iget v7, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    iget-object v8, p0, Landroid/view/SurfaceControl$Builder;->mParent:Landroid/view/SurfaceControl;

    iget v9, p0, Landroid/view/SurfaceControl$Builder;->mWindowType:I

    iget v10, p0, Landroid/view/SurfaceControl$Builder;->mOwnerUid:I

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;IILandroid/view/SurfaceControl$1;)V

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorLayer(Z)Landroid/view/SurfaceControl$Builder;
    .locals 2
    .param p1, "isColorLayer"    # Z

    .line 538
    if-eqz p1, :cond_0

    .line 539
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_0

    .line 541
    :cond_0
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 543
    :goto_0
    return-object p0
.end method

.method public setFlags(I)Landroid/view/SurfaceControl$Builder;
    .locals 0
    .param p1, "flags"    # I

    .line 553
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 554
    return-object p0
.end method

.method public setFormat(I)Landroid/view/SurfaceControl$Builder;
    .locals 0
    .param p1, "format"    # I

    .line 427
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    .line 428
    return-object p0
.end method

.method public setMetadata(II)Landroid/view/SurfaceControl$Builder;
    .locals 2
    .param p1, "windowType"    # I
    .param p2, "ownerUid"    # I

    .line 520
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 524
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mWindowType:I

    .line 525
    iput p2, p0, Landroid/view/SurfaceControl$Builder;->mOwnerUid:I

    .line 526
    return-object p0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "It only makes sense to set Surface metadata from the WindowManager"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 402
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mName:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public setOpaque(Z)Landroid/view/SurfaceControl$Builder;
    .locals 1
    .param p1, "opaque"    # Z

    .line 487
    if-eqz p1, :cond_0

    .line 488
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_0

    .line 490
    :cond_0
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 492
    :goto_0
    return-object p0
.end method

.method public setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;
    .locals 0
    .param p1, "parent"    # Landroid/view/SurfaceControl;

    .line 505
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mParent:Landroid/view/SurfaceControl;

    .line 506
    return-object p0
.end method

.method public setProtected(Z)Landroid/view/SurfaceControl$Builder;
    .locals 1
    .param p1, "protectedContent"    # Z

    .line 440
    if-eqz p1, :cond_0

    .line 441
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_0

    .line 443
    :cond_0
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 445
    :goto_0
    return-object p0
.end method

.method public setSecure(Z)Landroid/view/SurfaceControl$Builder;
    .locals 1
    .param p1, "secure"    # Z

    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_0

    .line 458
    :cond_0
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 460
    :goto_0
    return-object p0
.end method

.method public setSize(II)Landroid/view/SurfaceControl$Builder;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 413
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 417
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    .line 418
    iput p2, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    .line 419
    return-object p0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
