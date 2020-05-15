.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;
.super Ljava/lang/Object;
.source "QtiPrimaryCardPriorityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_NETWORK:I = -0x1

.field private static final INVALID_PRIORITY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcPriorityHandler"

.field private static final VDBG:Z = false

.field private static packageName:Ljava/lang/String;


# instance fields
.field private mAllPriorityConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

.field private mLoadingConfigCompleted:Z

.field private mLoadingCurrentConfigsDone:Z

.field private mPrefPrimarySlot:I

.field private mPriorityCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "com.qualcomm.qti.simsettings"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 50
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    .line 51
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 79
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    .line 81
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 83
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    .line 84
    return-void
.end method

.method private areConfigPrioritiesEqual()Z
    .locals 4

    .line 331
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_1
    :goto_1
    return v0

    .line 337
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private areConfigPrioritiesFull()Z
    .locals 3

    .line 305
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 307
    return v0

    .line 305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getMaxPrioritySlot()I
    .locals 4

    .line 315
    const/4 v0, -0x1

    .line 316
    .local v0, "slotId":I
    const/4 v1, -0x1

    .line 318
    .local v1, "tempMaxPriority":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-ge v1, v3, :cond_0

    .line 321
    move v0, v2

    .line 322
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v2

    iget v1, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxPrioritySlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 327
    return v0
.end method

.method private getNumSlotsWithCdma([I)I
    .locals 3
    .param p1, "prefNwModes"    # [I

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "numSlotsWithCdma":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 208
    aget v2, p1, v1

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->is3gpp2NwMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 442
    const-string v0, "iin_pattern"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "regEx":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 444
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1

    .line 446
    :cond_0
    return-object v1
.end method

.method private getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    .locals 7
    .param p1, "slotId"    # I

    .line 341
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getPriorityConfigComparator()I

    move-result v0

    .line 342
    .local v0, "priorityConfigComparator":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v1

    .line 343
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v1

    .line 345
    .local v1, "cardInfo":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPriorityConfig: for slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": iccid is null, EXIT!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 348
    return-object v3

    .line 351
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPriorityConfig: for slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mcc-mnc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Start!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 355
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    if-ge v2, v4, :cond_2

    .line 356
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 357
    .local v4, "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    packed-switch v0, :pswitch_data_0

    .end local v4    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    goto/16 :goto_1

    .line 374
    .restart local v4    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    :pswitch_0
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    .line 375
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 376
    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V

    .line 378
    return-object v4

    .line 367
    :pswitch_1
    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 369
    return-object v4

    .line 359
    :pswitch_2
    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 360
    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-object v4

    .line 355
    .end local v4    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 387
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "QtiPcPriorityHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig:Exception:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserNetworkMode(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, "userNetwork":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 90
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserNetworkMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 98
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 450
    const-string v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 458
    const-string v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 454
    const-string v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method private readPriorityConfigFromXml()V
    .locals 6

    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 400
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    const-string v3, "res is null"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V

    .line 401
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getConfigXml()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 402
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v0, v4

    .line 404
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 405
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 407
    const-string v4, "priority_config"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 409
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 410
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 411
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->savePriorityConfig(Landroid/content/res/XmlResourceParser;)V

    .line 412
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 414
    :cond_1
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllPriorityConfigs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 420
    if-eqz v0, :cond_2

    .line 421
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 419
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "QtiPcPriorityHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while reading priority configs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    .end local v2    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllPriorityConfigs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 420
    if-eqz v0, :cond_2

    goto :goto_1

    .line 424
    :cond_2
    :goto_2
    return-void

    .line 419
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllPriorityConfigs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 420
    if-eqz v0, :cond_3

    .line 421
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v1
.end method

.method private savePriorityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;-><init>()V

    .line 430
    .local v0, "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 431
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    .line 432
    const-string v1, "card_type"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 433
    const-string v1, "mccmnc"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->mccmnc:Ljava/lang/String;

    .line 434
    const-string v1, "network1"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    .line 435
    const-string v1, "network2"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    .line 436
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added to mAllPriorityConfigs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 438
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 439
    return-void
.end method


# virtual methods
.method public getNwModeConsiderUserP(ILjava/lang/String;)[I
    .locals 11
    .param p1, "primarySlotId"    # I
    .param p2, "primaryIccId"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v0

    .line 103
    .local v0, "defaultNwMode":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwModeForCdmaPrimary()I

    move-result v1

    .line 104
    .local v1, "defaultNwModeForCdmaPrimary":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwModeForOtherPrimary()I

    move-result v2

    .line 105
    .local v2, "defaultNwModeForOtherPrimary":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwModeForSecondary()I

    move-result v3

    .line 106
    .local v3, "defaultNwModeForSecondary":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwModeForTwoCdmaCardSecondary()I

    move-result v4

    .line 107
    .local v4, "defaultNwModeForTwoCdmaCardSecondary":I
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v5, v5, [I

    .line 109
    .local v5, "prefNwModes":[I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    sget v8, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v7, v8, :cond_b

    .line 110
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v8, v8, v7

    const/4 v9, -0x1

    if-eqz v8, :cond_5

    .line 111
    if-ne v7, p1, :cond_2

    .line 112
    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getUserNetworkMode(I)I

    move-result v8

    .line 113
    .local v8, "userNetwork":I
    if-eq v9, v8, :cond_1

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 114
    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->is3gpp2NwMode(I)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    aput v8, v5, v7

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrPriorityConfigs["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] !=null, i=primarySlotId, prefNwModes["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", primarySlotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .end local v8    # "userNetwork":I
    goto :goto_2

    .line 115
    .restart local v8    # "userNetwork":I
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    aput v9, v5, v7

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrPriorityConfigs["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].network1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 121
    .end local v8    # "userNetwork":I
    :goto_2
    goto/16 :goto_6

    .line 122
    :cond_2
    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getUserNetworkMode(I)I

    move-result v8

    .line 123
    .restart local v8    # "userNetwork":I
    if-eq v9, v8, :cond_4

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->is3gpp2NwMode(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isAllStackSupportCMode()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    .line 127
    :cond_3
    aput v8, v5, v7

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrPriorityConfigs["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] !=null, i!=primarySlotId, prefNwModes["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", primarySlotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .end local v8    # "userNetwork":I
    goto :goto_4

    .line 124
    .restart local v8    # "userNetwork":I
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    aput v9, v5, v7

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrPriorityConfigs["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].network2:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 130
    .end local v8    # "userNetwork":I
    :goto_4
    goto/16 :goto_6

    .line 132
    :cond_5
    if-ne v7, p1, :cond_8

    .line 133
    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getUserNetworkMode(I)I

    move-result v8

    .line 134
    .restart local v8    # "userNetwork":I
    if-ne v9, v8, :cond_7

    .line 135
    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 136
    aput v1, v5, v7

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "defaultNwModeForCdmaPrimary:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", primarySlotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 139
    :cond_6
    aput v2, v5, v7

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "defaultNwModeForOtherPrimary:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", primarySlotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 143
    :cond_7
    aput v8, v5, v7

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prefNwModes["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", primarySlotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 146
    .end local v8    # "userNetwork":I
    :goto_5
    goto :goto_6

    .line 147
    :cond_8
    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getUserNetworkMode(I)I

    move-result v8

    .line 148
    .restart local v8    # "userNetwork":I
    if-ne v9, v8, :cond_a

    .line 149
    aput v3, v5, v7

    .line 150
    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isAllStackSupportCMode()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 151
    aput v4, v5, v7

    .line 153
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i != primarySlotId, prefNwModes["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 155
    :cond_a
    aput v8, v5, v7

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i != primarySlotId, prefNwModes["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", userNetwork:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 109
    .end local v8    # "userNetwork":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 163
    .end local v7    # "i":I
    :cond_b
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNumSlotsWithCdma([I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_d

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isAllStackSupportCMode()Z

    move-result v7

    if-nez v7, :cond_d

    .line 165
    const-string v7, "getNwModesFromConfig: More than one slot has CDMA nwMode set non-primary card nwModes to default nwMode"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 167
    nop

    .local v6, "i":I
    :goto_7
    sget v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v6, v7, :cond_d

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNwModesFromConfig: nwMode from config on slot ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 170
    if-eq v6, p1, :cond_c

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v7

    aput v7, v5, v6

    .line 167
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 174
    .end local v6    # "i":I
    :cond_d
    return-object v5
.end method

.method public getNwModesFromConfig(I)[I
    .locals 5
    .param p1, "primarySlotId"    # I

    .line 179
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v0

    .line 180
    .local v0, "defaultNwMode":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v1, v1, [I

    .line 182
    .local v1, "prefNwModes":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v3, v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    .line 184
    if-ne v3, p1, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    goto :goto_1

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    :goto_1
    aput v4, v1, v3

    goto :goto_2

    .line 187
    :cond_1
    aput v0, v1, v3

    .line 182
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNumSlotsWithCdma([I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 193
    const-string v3, "getNwModesFromConfig: More than one slot has CDMA nwMode set non-primary card nwModes to default nwMode"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 195
    nop

    .local v2, "i":I
    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v3, :cond_4

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNwModesFromConfig: nwMode from config on slot ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 198
    if-eq v2, p1, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v3

    aput v3, v1, v2

    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public getPrefPrimarySlot()I
    .locals 2

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 235
    const-string v0, "getPrefPrimarySlot:  Start!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 237
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v0, :cond_0

    .line 238
    const-string v0, "getPrefPrimarySlot: Current Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->areConfigPrioritiesEqual()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, -0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getMaxPrioritySlot()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 248
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrefPrimarySlot: return mPrefPrimarySlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0
.end method

.method public getPrefPrimarySlotConsiderCDMA()I
    .locals 7

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 257
    const-string v1, "getPrefPrimarySlot:  Start!!!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 259
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v1, :cond_0

    .line 260
    const-string v0, "getPrefPrimarySlot: Current Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v1

    .line 265
    .local v1, "mPrefPrimarySlotFromDB":I
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 266
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_1

    .line 267
    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 268
    :cond_1
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getOtherSlot(I)I

    move-result v2

    .line 269
    .local v2, "otherSlot":I
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    .line 276
    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v4

    .line 277
    .local v4, "currentPrivisionStatus0":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    .line 278
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v5

    .line 279
    .local v5, "currentPrivisionStatus1":I
    if-ne v5, v6, :cond_2

    if-eq v4, v6, :cond_2

    .line 281
    iput v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    goto :goto_0

    .line 282
    :cond_2
    if-ne v4, v6, :cond_3

    if-ne v5, v6, :cond_3

    if-eq v1, v0, :cond_3

    .line 285
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    goto :goto_0

    .line 287
    :cond_3
    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 289
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "two cdma card inserted , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is selected!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 291
    .end local v4    # "currentPrivisionStatus0":I
    .end local v5    # "currentPrivisionStatus1":I
    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "only one cdma card inserted , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is selected!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is selected!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 299
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefPrimarySlot: return mPrefPrimarySlot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0
.end method

.method public isConfigLoadDone()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    return v0
.end method

.method public loadCurrentPriorityConfigs(Z)V
    .locals 3
    .param p1, "override"    # Z

    .line 218
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    if-nez v0, :cond_0

    .line 219
    const-string v0, "getPrefPrimarySlot: All Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 220
    return-void

    .line 223
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v0, :cond_3

    .line 225
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    move-result-object v2

    aput-object v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    .line 230
    :cond_3
    return-void
.end method

.method public reloadPriorityConfig()V
    .locals 0

    .line 392
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    .line 393
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    .line 394
    return-void
.end method
