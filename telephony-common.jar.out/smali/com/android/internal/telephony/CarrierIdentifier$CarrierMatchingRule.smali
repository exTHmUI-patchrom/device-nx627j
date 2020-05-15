.class Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
.super Ljava/lang/Object;
.source "CarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierMatchingRule"
.end annotation


# static fields
.field private static final SCORE_APN:I = 0x1

.field private static final SCORE_GID1:I = 0x10

.field private static final SCORE_GID2:I = 0x8

.field private static final SCORE_ICCID_PREFIX:I = 0x20

.field private static final SCORE_IMSI_PREFIX:I = 0x40

.field private static final SCORE_INVALID:I = -0x1

.field private static final SCORE_MCCMNC:I = 0x80

.field private static final SCORE_PLMN:I = 0x4

.field private static final SCORE_SPN:I = 0x2


# instance fields
.field private mApn:Ljava/lang/String;

.field private mCid:I

.field private mGid1:Ljava/lang/String;

.field private mGid2:Ljava/lang/String;

.field private mIccidPrefix:Ljava/lang/String;

.field private mImsiPrefixPattern:Ljava/lang/String;

.field private mMccMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPlmn:Ljava/lang/String;

.field private mScore:I

.field private mSpn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsiPrefixPattern"    # Ljava/lang/String;
    .param p3, "iccidPrefix"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "plmn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;
    .param p8, "apn"    # Ljava/lang/String;
    .param p9, "cid"    # I
    .param p10, "name"    # Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 395
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    .line 397
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    .line 398
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    .line 399
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    .line 400
    iput-object p6, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    .line 401
    iput-object p7, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    .line 402
    iput-object p8, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mApn:Ljava/lang/String;

    .line 403
    iput p9, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mCid:I

    .line 404
    iput-object p10, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mName:Ljava/lang/String;

    .line 405
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 354
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 354
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mCid:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method private iccidPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 492
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 493
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private imsiPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "prefixXPattern"    # Ljava/lang/String;

    .line 477
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 478
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 479
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 480
    return v2

    .line 482
    :cond_2
    move v0, v2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 483
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x58

    if-eq v3, v4, :cond_3

    .line 484
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    .line 485
    return v2

    .line 482
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0    # "i":I
    :cond_4
    return v1
.end method


# virtual methods
.method public match(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)V
    .locals 4
    .param p1, "subscriptionRule"    # Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 414
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/android/internal/telephony/CarrierIdentifier;->access$400(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 417
    return-void

    .line 419
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->imsiPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 424
    return-void

    .line 426
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->iccidPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 430
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 431
    return-void

    .line 433
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 438
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->access$400(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 439
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 440
    return-void

    .line 442
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 444
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 447
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->access$400(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 448
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 449
    return-void

    .line 451
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 453
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 454
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->access$400(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 455
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 456
    return-void

    .line 458
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 460
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 461
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->access$400(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 462
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 463
    return-void

    .line 465
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 467
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 468
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mApn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mApn:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->access$400(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 469
    iput v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 470
    return-void

    .line 472
    :cond_e
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    .line 474
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CarrierMatchingRule] - mccmnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi_prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iccid_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " apn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
