.class public Lcom/android/internal/telephony/CarrierIdentifier;
.super Landroid/os/Handler;
.source "CarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;,
        Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final CARRIER_ID_DB_UPDATE_EVENT:I = 0x6

.field private static final CONTENT_URL_PREFER_APN:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final ICC_CHANGED_EVENT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field private static final PREFER_APN_UPDATE_EVENT:I = 0x5

.field private static final SIM_ABSENT_EVENT:I = 0x2

.field private static final SIM_LOAD_EVENT:I = 0x1

.field private static final SPN_OVERRIDE_EVENT:I = 0x3

.field private static final VDBG:Z


# instance fields
.field private mCarrierId:I

.field private final mCarrierIdLocalLog:Landroid/util/LocalLog;

.field private mCarrierMatchingRulesOnMccMnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierName:Ljava/lang/String;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferApn:Ljava/lang/String;

.field private mSpn:Ljava/lang/String;

.field private final mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-class v0, Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/CarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierIdentifier;->VDBG:Z

    .line 67
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "preferapn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierIdentifier;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/CarrierIdentifier;Lcom/android/internal/telephony/CarrierIdentifier$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/CarrierIdentifier$1;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CarrierIdentifier$1;-><init>(Lcom/android/internal/telephony/CarrierIdentifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContentObserver:Landroid/database/ContentObserver;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating CarrierIdentifier["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/CarrierIdentifier;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/internal/telephony/CarrierIdentifier;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierIdentifier;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier;

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierIdentifier;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 605
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 606
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 607
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 609
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getPreferApn()Ljava/lang/String;
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferapn/subId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 279
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "apn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 277
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 283
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/CarrierIdentifier;->VDBG:Z

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPreferApn]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 286
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    const-string v1, "apn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "apn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPreferApn]- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    nop

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_1
    return-object v1

    .line 296
    .end local v1    # "apn":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPreferApn]- exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierIdentifier;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    goto :goto_1

    :goto_0
    if-eqz v0, :cond_2

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 296
    :cond_3
    if-eqz v0, :cond_4

    .line 297
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadCarrierMatchingRulesOnMccMnc()V
    .locals 8

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "mccmnc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "mccmnc=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 256
    :try_start_1
    sget-boolean v2, Lcom/android/internal/telephony/CarrierIdentifier;->VDBG:Z

    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCarrierMatchingRules]- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Records(s) in DB mccmnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 261
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->matchCarrier()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 268
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 267
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 273
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->loge(Ljava/lang/String;)V

    .line 274
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 613
    sget-object v0, Lcom/android/internal/telephony/CarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 616
    sget-object v0, Lcom/android/internal/telephony/CarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 336
    new-instance v11, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    const-string v0, "mccmnc"

    .line 337
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "imsi_prefix_xpattern"

    .line 338
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "iccid_prefix"

    .line 340
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "gid1"

    .line 342
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "gid2"

    .line 343
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "plmn"

    .line 344
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "spn"

    .line 345
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "apn"

    .line 346
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "carrier_id"

    .line 347
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "carrier_name"

    .line 348
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    return-object v11
.end method

.method private matchCarrier()V
    .locals 28

    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    const-string v1, "[matchCarrier]skip before sim records loaded"

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 521
    return-void

    .line 523
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "mccmnc":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "iccid":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v14

    .line 526
    .local v14, "gid1":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v15

    .line 527
    .local v15, "gid2":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 528
    .local v13, "imsi":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v12

    .line 529
    .local v12, "plmn":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 530
    .local v11, "spn":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    .line 532
    .local v10, "apn":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/CarrierIdentifier;->VDBG:Z

    if-eqz v3, :cond_1

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[matchCarrier] mnnmnc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " gid1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " gid2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/telephony/CarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    .line 537
    invoke-static {v4, v13}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/telephony/CarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    .line 538
    invoke-static {v4, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " plmn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " spn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " apn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 544
    :cond_1
    new-instance v16, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v3, v16

    move-object v4, v1

    move-object v5, v13

    move-object v6, v2

    move-object v7, v14

    move-object v8, v15

    move-object v9, v12

    move-object/from16 v19, v10

    move-object v10, v11

    .end local v10    # "apn":Ljava/lang/String;
    .local v19, "apn":Ljava/lang/String;
    move-object/from16 v20, v11

    move-object/from16 v11, v19

    .end local v11    # "spn":Ljava/lang/String;
    .local v20, "spn":Ljava/lang/String;
    move-object/from16 v21, v12

    move/from16 v12, v17

    .end local v12    # "plmn":Ljava/lang/String;
    .local v21, "plmn":Ljava/lang/String;
    move-object/from16 v17, v13

    move-object/from16 v13, v18

    .end local v13    # "imsi":Ljava/lang/String;
    .local v17, "imsi":Ljava/lang/String;
    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    .local v3, "subscriptionRule":Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    const/4 v4, -0x1

    .line 549
    .local v4, "maxScore":I
    const/4 v5, 0x0

    .line 551
    .local v5, "maxRule":Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    iget-object v6, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 552
    .local v7, "rule":Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)V

    .line 553
    invoke-static {v7}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$500(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)I

    move-result v8

    if-le v8, v4, :cond_2

    .line 554
    invoke-static {v7}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$500(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)I

    move-result v4

    .line 555
    move-object v5, v7

    .line 557
    .end local v7    # "rule":Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    :cond_2
    goto :goto_0

    .line 559
    :cond_3
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_4

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[matchCarrier - no match] cid: -1 name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 562
    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/CarrierIdentifier;->updateCarrierIdAndName(ILjava/lang/String;)V

    goto :goto_1

    .line 564
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[matchCarrier] cid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$700(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 565
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)I

    move-result v8

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$700(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/internal/telephony/CarrierIdentifier;->updateCarrierIdAndName(ILjava/lang/String;)V

    .line 578
    :goto_1
    and-int/lit8 v8, v4, 0x10

    if-nez v8, :cond_5

    .line 579
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$800(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$800(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v27, v8

    goto :goto_2

    :cond_5
    move-object/from16 v27, v7

    .line 580
    .local v27, "unknownGid1ToLog":Ljava/lang/String;
    :goto_2
    if-eq v4, v6, :cond_6

    and-int/lit8 v6, v4, 0x10

    if-nez v6, :cond_7

    .line 582
    :cond_6
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$900(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->access$900(Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v7

    nop

    :cond_7
    move-object/from16 v26, v7

    .line 583
    .local v26, "unknownMccmncToLog":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v22

    iget-object v6, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 584
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CarrierIdentifier;->getCarrierListVersion()I

    move-result v24

    iget v6, v0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    .line 583
    move/from16 v25, v6

    invoke-virtual/range {v22 .. v27}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private updateCarrierIdAndName(ILjava/lang/String;)V
    .locals 6
    .param p1, "cid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "update":Z
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/android/internal/telephony/CarrierIdentifier;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCarrierName] from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 307
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    .line 310
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    if-eq p1, v1, :cond_1

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCarrierId] from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 312
    iput p1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    .line 313
    const/4 v0, 0x1

    .line 315
    :cond_1
    if-eqz v0, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCarrierIdAndName] cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.telephony.extra.CARRIER_ID"

    iget v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v2, "android.telephony.extra.CARRIER_NAME"

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v2, "android.telephony.extra.SUBSCRIPTION_ID"

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "carrier_id"

    iget v4, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v3, "carrier_name"

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$CarrierId;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 331
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 329
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 619
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 620
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "mCarrierIdLocalLogs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 622
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCarrierId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCarrierName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->getCarrierListVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCarrierMatchingRules on mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 630
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 632
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;

    .line 633
    .local v2, "rule":Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 634
    .end local v2    # "rule":Lcom/android/internal/telephony/CarrierIdentifier$CarrierMatchingRule;
    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreferApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 640
    return-void
.end method

.method public getCarrierId()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierId:I

    return v0
.end method

.method public getCarrierListVersion()I
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_version"

    .line 590
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 589
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 592
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 593
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 176
    sget-boolean v0, Lcom/android/internal/telephony/CarrierIdentifier;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->getPreferApn()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "preferApn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreferApn] from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 194
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->matchCarrier()V

    goto/16 :goto_0

    .line 208
    .end local v0    # "preferApn":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 208
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 210
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v3, v0, :cond_2

    .line 211
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_1

    .line 212
    const-string v3, "Removing stale icc objects."

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsOverride(Landroid/os/Handler;)V

    .line 215
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 217
    :cond_1
    if-eqz v0, :cond_2

    .line 218
    const-string v3, "new Icc object"

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 225
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 226
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 227
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eq v3, v1, :cond_4

    .line 228
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v3, :cond_3

    .line 229
    const-string v3, "unregister operatorBrandOverride"

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterForOperatorBrandOverride(Landroid/os/Handler;)V

    .line 231
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 233
    :cond_3
    if-eqz v1, :cond_4

    .line 234
    const-string v3, "register operatorBrandOverride"

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 235
    const/4 v3, 0x3

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerForOpertorBrandOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    goto :goto_0

    .line 199
    .end local v0    # "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v1    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "spn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSpn] from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->logd(Ljava/lang/String;)V

    .line 202
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->matchCarrier()V

    goto :goto_0

    .line 185
    .end local v0    # "spn":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    .line 188
    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/CarrierIdentifier;->updateCarrierIdAndName(ILjava/lang/String;)V

    .line 189
    goto :goto_0

    .line 180
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->getPreferApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier;->mPreferApn:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierIdentifier;->loadCarrierMatchingRulesOnMccMnc()V

    .line 183
    nop

    .line 244
    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
