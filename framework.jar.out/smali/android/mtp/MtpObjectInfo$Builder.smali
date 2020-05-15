.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo$1;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 360
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 3
    .param p1, "objectInfo"    # Landroid/mtp/MtpObjectInfo;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo$1;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 371
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    .line 372
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$200(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$202(Landroid/mtp/MtpObjectInfo;I)I

    .line 373
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$300(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$302(Landroid/mtp/MtpObjectInfo;I)I

    .line 374
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$400(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$402(Landroid/mtp/MtpObjectInfo;I)I

    .line 375
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$500(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->access$502(Landroid/mtp/MtpObjectInfo;J)J

    .line 376
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$600(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->access$602(Landroid/mtp/MtpObjectInfo;J)J

    .line 377
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$700(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$702(Landroid/mtp/MtpObjectInfo;I)I

    .line 378
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$800(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$802(Landroid/mtp/MtpObjectInfo;I)I

    .line 379
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$900(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$902(Landroid/mtp/MtpObjectInfo;I)I

    .line 380
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1000(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1002(Landroid/mtp/MtpObjectInfo;I)I

    .line 381
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1100(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1200(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1300(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1302(Landroid/mtp/MtpObjectInfo;I)I

    .line 384
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1400(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1402(Landroid/mtp/MtpObjectInfo;I)I

    .line 385
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1500(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1502(Landroid/mtp/MtpObjectInfo;I)I

    .line 386
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1600(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1602(Landroid/mtp/MtpObjectInfo;I)I

    .line 387
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1700(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1702(Landroid/mtp/MtpObjectInfo;I)I

    .line 388
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1800(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1802(Landroid/mtp/MtpObjectInfo;I)I

    .line 389
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1900(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1902(Landroid/mtp/MtpObjectInfo;I)I

    .line 390
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$2000(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$2002(Landroid/mtp/MtpObjectInfo;I)I

    .line 391
    return-void
.end method


# virtual methods
.method public build()Landroid/mtp/MtpObjectInfo;
    .locals 2

    .line 509
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 510
    .local v0, "result":Landroid/mtp/MtpObjectInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 511
    return-object v0
.end method

.method public setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 399
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$202(Landroid/mtp/MtpObjectInfo;I)I

    .line 400
    return-object p0
.end method

.method public setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 404
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$302(Landroid/mtp/MtpObjectInfo;I)I

    .line 405
    return-object p0
.end method

.method public setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 409
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$402(Landroid/mtp/MtpObjectInfo;I)I

    .line 410
    return-object p0
.end method

.method public setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 414
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->access$502(Landroid/mtp/MtpObjectInfo;J)J

    .line 415
    return-object p0
.end method

.method public setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 419
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->access$602(Landroid/mtp/MtpObjectInfo;J)J

    .line 420
    return-object p0
.end method

.method public setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 424
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$702(Landroid/mtp/MtpObjectInfo;I)I

    .line 425
    return-object p0
.end method

.method public setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 429
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$802(Landroid/mtp/MtpObjectInfo;I)I

    .line 430
    return-object p0
.end method

.method public setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 434
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$902(Landroid/mtp/MtpObjectInfo;I)I

    .line 435
    return-object p0
.end method

.method public setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 439
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1002(Landroid/mtp/MtpObjectInfo;I)I

    .line 440
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 444
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 445
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 446
    :cond_0
    if-nez p1, :cond_1

    .line 449
    const-string p1, ""

    .line 451
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 456
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    return-object p0
.end method

.method public setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 394
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    .line 395
    return-object p0
.end method

.method public setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 462
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1302(Landroid/mtp/MtpObjectInfo;I)I

    .line 463
    return-object p0
.end method

.method public setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 467
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1402(Landroid/mtp/MtpObjectInfo;I)I

    .line 468
    return-object p0
.end method

.method public setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 472
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1502(Landroid/mtp/MtpObjectInfo;I)I

    .line 473
    return-object p0
.end method

.method public setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 477
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1602(Landroid/mtp/MtpObjectInfo;I)I

    .line 478
    return-object p0
.end method

.method public setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 482
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1702(Landroid/mtp/MtpObjectInfo;I)I

    .line 483
    return-object p0
.end method

.method public setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 487
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1802(Landroid/mtp/MtpObjectInfo;I)I

    .line 488
    return-object p0
.end method

.method public setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 492
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1902(Landroid/mtp/MtpObjectInfo;I)I

    .line 493
    return-object p0
.end method

.method public setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .line 497
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$2002(Landroid/mtp/MtpObjectInfo;I)I

    .line 498
    return-object p0
.end method
