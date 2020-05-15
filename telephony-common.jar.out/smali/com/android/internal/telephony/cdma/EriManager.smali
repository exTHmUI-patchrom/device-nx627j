.class public Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "EriManager"

.field private static final VDBG:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 105
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 107
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 8
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .line 315
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 317
    .local v0, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v0, :cond_0

    .line 319
    new-instance v1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v2, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 323
    .local v1, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    return-object v1

    .line 327
    .end local v0    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v1    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_0
    const v0, 0x104059c

    const v1, 0x104059b

    const v2, 0x10405a0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 424
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-nez v6, :cond_2

    .line 426
    const-string v6, "EriManager"

    const-string v7, "ERI File not loaded"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-le p2, v3, :cond_1

    .line 429
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 433
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .local v0, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_0
    goto/16 :goto_3

    .line 416
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104059f

    .line 419
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 420
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 409
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104059e

    .line 412
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 413
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 402
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104059d

    .line 405
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 406
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 395
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a7

    .line 398
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 399
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 388
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a6

    .line 391
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 392
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 381
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a5

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 385
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 374
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a4

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 378
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 367
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a3

    .line 370
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 371
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 360
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a2

    .line 363
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 364
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 353
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x10405a1

    .line 356
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 357
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 344
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 348
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 337
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    move-object v0, v1

    .line 341
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 330
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v5, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 334
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 436
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 462
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v1, "ERI text"

    const/4 v2, -0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :pswitch_d
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 457
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 458
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 459
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 446
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 449
    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 450
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    move-object v0, v1

    .line 451
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 438
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 442
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v5, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 443
    .restart local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 467
    .end local v0    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 468
    .local v0, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v2

    .line 469
    .local v2, "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v0, :cond_4

    .line 474
    if-nez v2, :cond_3

    .line 475
    const-string v3, "EriManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERI defRoamInd "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found in ERI file ...on"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 480
    invoke-virtual {v4, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 481
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v5, v5, v1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    move-object v1, v3

    .end local v2    # "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .local v0, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .restart local v1    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_1
    goto :goto_2

    .line 487
    .end local v1    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .local v0, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .restart local v2    # "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v3, v2, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v4, v2, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v5, v2, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_1

    .line 494
    :cond_4
    new-instance v1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .end local v2    # "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .local v0, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_2
    move-object v0, v1

    .line 503
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .param p1, "roamingIndicator"    # I

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/EriInfo;

    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    .line 150
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .line 140
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 18

    .line 157
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 158
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 159
    .local v3, "stream":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v4, v0

    .line 162
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v5, 0x0

    :try_start_0
    const-string v0, "EriManager"

    const-string v6, "loadEriFileFromXml: check for alternate file"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/io/FileInputStream;

    const v6, 0x104006d

    .line 164
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 165
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 166
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    const-string v0, "EriManager"

    const-string v6, "loadEriFileFromXml: opened alternate file"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "EriManager"

    const-string v7, "loadEriFileFromXml: no parser for alternate file"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x0

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "EriManager"

    const-string v7, "loadEriFileFromXml: no alternate file"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v2, 0x0

    .line 174
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 176
    :goto_1
    if-nez v2, :cond_2

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "eriFile":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const-string v7, "carrier_config"

    .line 180
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 181
    .local v6, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v6, :cond_0

    .line 182
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 183
    .local v7, "b":Landroid/os/PersistableBundle;
    if-eqz v7, :cond_0

    .line 184
    const-string v8, "carrier_eri_file_name_string"

    invoke-virtual {v7, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .end local v0    # "eriFile":Ljava/lang/String;
    .local v7, "eriFile":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    const-string v0, "EriManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eriFile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-nez v7, :cond_1

    .line 191
    const-string v0, "EriManager"

    const-string v5, "loadEriFileFromXml: Can\'t find ERI file to load"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 196
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 197
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    .line 201
    goto :goto_2

    .line 198
    :catch_2
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "EriManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadEriFileFromXml: no parser for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v7    # "eriFile":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    const-string v0, "EriFile"

    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 206
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v6, "VersionNumber"

    .line 207
    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 208
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v6, "NumberOfEriEntries"

    .line 209
    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 210
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v6, "EriFileType"

    .line 211
    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "parsedEriEntries":I
    :goto_3
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 216
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 218
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v5, v5, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v0, v5, :cond_3

    .line 219
    const-string v5, "EriManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error Parsing ERI file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v8, v8, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " defined, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " parsed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    const-string v5, "EriManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEriFileFromXml: eri parsing successful, file loaded. ver = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v7, v7, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", # of entries = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v7, v7, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .end local v0    # "parsedEriEntries":I
    instance-of v0, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_4

    .line 255
    move-object v0, v2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 258
    :cond_4
    if-eqz v3, :cond_a

    .line 259
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_6

    .line 222
    .restart local v0    # "parsedEriEntries":I
    .restart local v6    # "name":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v7, "CallPromptId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 223
    const-string v7, "Id"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 224
    .local v7, "id":I
    const-string v8, "CallPromptText"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "text":Ljava/lang/String;
    if-ltz v7, :cond_6

    const/4 v9, 0x2

    if-gt v7, v9, :cond_6

    .line 226
    iget-object v9, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v8, v9, v7

    goto :goto_4

    .line 228
    :cond_6
    const-string v9, "EriManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error Parsing ERI file: found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " CallPromptId"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v7    # "id":I
    .end local v8    # "text":Ljava/lang/String;
    :goto_4
    goto :goto_5

    :cond_7
    const-string v7, "EriInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 232
    const-string v7, "RoamingIndicator"

    .line 233
    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 234
    .local v7, "roamingIndicator":I
    const-string v8, "IconIndex"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 235
    .local v10, "iconIndex":I
    const-string v8, "IconMode"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 236
    .local v11, "iconMode":I
    const-string v8, "EriText"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "eriText":Ljava/lang/String;
    const-string v8, "CallPromptId"

    .line 238
    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 239
    .local v13, "callPromptId":I
    const-string v8, "AlertId"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 240
    .local v14, "alertId":I
    add-int/lit8 v0, v0, 0x1

    .line 241
    iget-object v8, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v15, v8, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v8, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object/from16 v16, v8

    move-object v5, v9

    move v9, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v8, v16

    invoke-virtual {v15, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "roamingIndicator":I
    .end local v10    # "iconIndex":I
    .end local v11    # "iconMode":I
    .end local v12    # "eriText":Ljava/lang/String;
    .end local v13    # "callPromptId":I
    .end local v14    # "alertId":I
    :cond_8
    :goto_5
    nop

    .line 213
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 254
    .end local v0    # "parsedEriEntries":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_8

    .line 251
    :catch_3
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "EriManager"

    const-string v6, "Got exception while loading ERI file."

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    instance-of v0, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_9

    .line 255
    move-object v0, v2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 258
    :cond_9
    if-eqz v3, :cond_a

    .line 259
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 261
    :catch_4
    move-exception v0

    .line 264
    goto :goto_7

    .line 263
    :cond_a
    :goto_6
    nop

    .line 265
    :goto_7
    return-void

    .line 254
    :goto_8
    instance-of v0, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_b

    .line 255
    move-object v0, v2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 258
    :cond_b
    if-eqz v3, :cond_c

    .line 259
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 261
    :catch_5
    move-exception v0

    nop

    .line 263
    :cond_c
    :goto_9
    throw v5
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    .line 112
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .line 511
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    .line 119
    goto :goto_0

    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    .line 123
    nop

    .line 130
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
