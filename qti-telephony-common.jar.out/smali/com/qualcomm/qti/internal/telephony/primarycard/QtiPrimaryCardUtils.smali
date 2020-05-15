.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
.super Ljava/lang/Object;
.source "QtiPrimaryCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
    }
.end annotation


# static fields
.field public static final COMPARE_CARDTYPE:I = 0x2

.field public static final COMPARE_IIN_CARDTYPE:I = 0x1

.field public static final COMPARE_MCCMNC:I = 0x3

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final CONFIG_DISABLE_DDS_PREFERENCE:Ljava/lang/String; = "config_disable_dds_preference"

.field private static final CONFIG_PRIMARY_SUB_IS_SETABLE:Ljava/lang/String; = "config_primary_sub_is_setable"

.field private static final CONFIG_SUB_SELECT_MODE_MANUAL:Ljava/lang/String; = "config_sub_select_mode_manual"

.field private static final DBG:Z = true

.field private static final DETECT_4G_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.vendor.radio.detect4gcard"

.field public static final DISABLE_USER_SELECTION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcUtils"

.field private static final NT_MODE_GSM_CDMA:I = 0x1a

.field public static final PHONE_COUNT:I

.field private static final PRIMARY_CARD_CDMA_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_cdma_mode"

.field private static final PRIMARY_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.vendor.radio.primarycard"

.field private static final PRIMCARYCARD_L_W_ENABLED:Z

.field private static final RAF_CDMA:I = 0x70

.field private static final RAF_EVDO:I = 0x3180

.field public static final SHOW_USER_SELECTION_FOR_EVERY_CHANGE:I = 0x3

.field public static final SHOW_USER_SELECTION_ON_PRIORITY_MATCH:I = 0x2

.field public static final SLOT_ID_0:I = 0x0

.field public static final SLOT_ID_1:I = 0x1

.field public static final SLOT_INVALID:I = -0x1

.field public static final SLOT_PRIORITY_MATCH:I = -0x2

.field private static final VDBG:Z = true

.field private static mConfigValue:I

.field private static mContext:Landroid/content/Context;

.field private static final sCmccIins:[I

.field private static final sCtIins:[I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 124
    const-string v1, "persist.vendor.radio.lw_enabled"

    .line 125
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sCtIins:[I

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sCmccIins:[I

    return-void

    :array_0
    .array-data 4
        0xdb62b
        0xdb62e
        0xdb633
        0x891ad6
        0xdb5cb
    .end array-data

    :array_1
    .array-data 4
        0xdb628
        0xdb62a
        0xdb62f
        0xdb651
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    .line 155
    return-void
.end method

.method public static disableDds()Z
    .locals 3

    .line 288
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 289
    .local v0, "disableDds":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 290
    return v0
.end method

.method public static getConfigXml()Ljava/lang/String;
    .locals 1

    .line 216
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "use priority_config_4.xml"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 218
    const-string v0, "priority_config_4"

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "subsidy_feature_config"

    return-object v0

    .line 221
    :cond_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "priority_config_3"

    return-object v0

    .line 223
    :cond_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "priority_config_2"

    return-object v0

    .line 225
    :cond_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    const-string v0, "priority_config_1"

    return-object v0

    .line 228
    :cond_4
    const-string v0, "priority_config_2"

    return-object v0
.end method

.method public static getCurrentPrimarySlotFromDB(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_current_primary_sub"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 315
    .local v0, "slotId":I
    return v0
.end method

.method public static getDefaultNwMode()I
    .locals 3

    .line 232
    const/4 v0, 0x1

    .line 233
    .local v0, "defNwMode":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const/16 v0, 0x16

    .line 240
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 241
    return v0
.end method

.method public static getDefaultNwModeForCdmaPrimary()I
    .locals 3

    .line 371
    const/16 v0, 0xa

    .line 372
    .local v0, "defNwModeForCdmaPrimary":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNwModeForCdmaPrimary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 373
    return v0
.end method

.method public static getDefaultNwModeForOtherPrimary()I
    .locals 3

    .line 377
    const/16 v0, 0x14

    .line 378
    .local v0, "defNwModeForOtherPrimary":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNwModeForOtherPrimary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 379
    return v0
.end method

.method public static getDefaultNwModeForSecondary()I
    .locals 3

    .line 389
    const/16 v0, 0x14

    .line 390
    .local v0, "defNwModeForSecondary":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNwModeForSecondary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 391
    return v0
.end method

.method public static getDefaultNwModeForTwoCdmaCardSecondary()I
    .locals 3

    .line 383
    const/16 v0, 0xa

    .line 384
    .local v0, "defNwModeForTwoCdmaCardSecondary":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defNwModeForTwoCdmaCardSecondary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 385
    return v0
.end method

.method public static getDefaultPriSlotConsiderPref()I
    .locals 3

    .line 266
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v0

    .line 267
    .local v0, "defPrimarySlot":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 268
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    move v0, v1

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NB getDefaultPrimarySlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 271
    return v0
.end method

.method public static getDefaultPrimarySlot()I
    .locals 3

    .line 259
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 260
    .local v0, "defPrimarySlot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPrimarySlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 261
    return v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .locals 3

    .line 143
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-exit v0

    return-object v1

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiPrimaryCardUtils was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getOtherSlot(I)I
    .locals 1
    .param p0, "slotId"    # I

    .line 427
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0
.end method

.method public static getPriorityConfigComparator()I
    .locals 3

    .line 245
    const/4 v0, 0x2

    .line 246
    .local v0, "comparator":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v0, 0x3

    goto :goto_0

    .line 248
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const/4 v0, 0x2

    goto :goto_0

    .line 250
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriorityConfigComparator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 255
    return v0
.end method

.method public static getUserSelectionMode()I
    .locals 3

    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, "userSelMode":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x3

    goto :goto_0

    .line 298
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const/4 v0, 0x2

    goto :goto_0

    .line 300
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    const/4 v0, 0x1

    .line 303
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSelectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 304
    return v0
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    .line 138
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    return-object v0

    .line 138
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static is3gpp2NwMode(I)Z
    .locals 4
    .param p0, "nwMode"    # I

    .line 360
    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-ne p0, v1, :cond_0

    return v0

    .line 362
    :cond_0
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 363
    .local v1, "raf":I
    and-int/lit8 v2, v1, 0x70

    const/16 v3, 0x70

    if-eq v2, v3, :cond_2

    and-int/lit16 v2, v1, 0x3180

    const/16 v3, 0x3180

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_2
    :goto_0
    return v0
.end method

.method public static isAllStackSupportCMode()Z
    .locals 6

    .line 412
    const/4 v0, 0x1

    .line 413
    .local v0, "support":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 414
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 415
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    .line 416
    .local v3, "RAF":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RAF["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 417
    and-int/lit16 v4, v3, 0x31f0

    if-nez v4, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 419
    goto :goto_1

    .line 413
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "RAF":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "i":I
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllStackSupportCMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 423
    return v0
.end method

.method private static isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z
    .locals 2
    .param p0, "config"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 308
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCDMACard(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 396
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 399
    :cond_0
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v1

    return v1
.end method

.method public static isCDMACard(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .line 403
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCmccPrimaryCardFeatureEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDetect4gCardEnabled()Z
    .locals 3

    .line 352
    const-string v0, "persist.vendor.radio.primarycard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "persist.vendor.radio.detect4gcard"

    .line 353
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v0, v2, :cond_0

    .line 352
    move v1, v2

    goto :goto_0

    .line 353
    :cond_0
    nop

    .line 352
    :goto_0
    return v1
.end method

.method public static isPrimaryCDMAEnabled()Z
    .locals 3

    .line 432
    const-string v0, "persist.vendor.radio.primarycard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "persist.radio.primary_cdma_mode"

    .line 433
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v0, v2, :cond_0

    .line 432
    move v1, v2

    goto :goto_0

    .line 433
    :cond_0
    nop

    .line 432
    :goto_0
    return v1
.end method

.method public static isPrimaryCardFeatureEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 341
    const-string v0, "persist.vendor.radio.primarycard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1120093

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v0, v2, :cond_1

    .line 341
    move v1, v2

    goto :goto_0

    .line 342
    :cond_1
    nop

    .line 341
    :goto_0
    return v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 439
    const-string v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 451
    const-string v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 447
    const-string v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 443
    const-string v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method public static read4gFlag()Z
    .locals 3

    .line 282
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 283
    .local v0, "read4g":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read4gFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 284
    return v0
.end method

.method public static saveDisableDdsPreferenceInDB(Z)V
    .locals 2
    .param p0, "disableDds"    # Z

    .line 330
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_disable_dds_preference"

    .line 331
    nop

    .line 330
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    return-void
.end method

.method public static saveEnableUserSelectioninDB(Z)V
    .locals 2
    .param p0, "enableUserSel"    # Z

    .line 325
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_sub_select_mode_manual"

    .line 326
    nop

    .line 325
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    return-void
.end method

.method public static savePrimarySetable(Z)V
    .locals 2
    .param p0, "isSetable"    # Z

    .line 336
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_primary_sub_is_setable"

    .line 337
    nop

    .line 336
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    return-void
.end method

.method public static savePrimarySlotToDB(I)V
    .locals 2
    .param p0, "primarySlot"    # I

    .line 320
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_current_primary_sub"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    return-void
.end method

.method protected static setConfigValue()V
    .locals 8

    .line 158
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    .line 159
    .local v0, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    const/4 v1, 0x0

    .line 160
    .local v1, "isLpluslSupport":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oemhook service status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v1

    .line 165
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v2

    .line 166
    .local v2, "isSubsidyLockFeatureEnabled":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLocked(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    .line 169
    .local v5, "isSubsidyLockedOrRestricted":Z
    :goto_0
    if-eqz v2, :cond_3

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 173
    .local v3, "isPermanentlyUnlocked":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 174
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 175
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 176
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 177
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 178
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sput v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_4

    .line 179
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isDetect4gCardEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v3, :cond_5

    goto :goto_2

    .line 188
    :cond_5
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCmccPrimaryCardFeatureEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 189
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 190
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 191
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 192
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 193
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sput v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto :goto_4

    .line 194
    :cond_6
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 202
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 203
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 204
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 205
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 206
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    or-int/2addr v4, v6

    sput v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto :goto_4

    .line 209
    :cond_7
    sput v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto :goto_4

    .line 180
    :cond_8
    :goto_2
    sget-boolean v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    goto :goto_3

    .line 181
    :cond_9
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    .line 182
    .local v4, "nwmodeConfig":I
    :goto_3
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 183
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    or-int/2addr v6, v7

    or-int/2addr v6, v4

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 185
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    or-int/2addr v6, v7

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 186
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    or-int/2addr v6, v7

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 187
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    or-int/2addr v6, v7

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 188
    .end local v4    # "nwmodeConfig":I
    nop

    .line 212
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConfigValue is:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", in Binary:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public static setPrimaryCardOnDeAct()Z
    .locals 3

    .line 276
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 277
    .local v0, "setPcOnDeact":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryCardOnDeAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 278
    return v0
.end method
