.class public Lorg/codeaurora/ims/utils/QtiImsExtUtils;
.super Ljava/lang/Object;
.source "QtiImsExtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/utils/QtiImsExtUtils$VideoQualityFeatureValuesConstants;
    }
.end annotation


# static fields
.field public static final ACTION_VOPS_SSAC_STATUS:Ljava/lang/String; = "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

.field public static final CARRIER_ONE_DEFAULT_MCC_MNC:Ljava/lang/String; = "405854"

.field public static final EXTRA_SSAC:Ljava/lang/String; = "Ssac"

.field public static final EXTRA_VOPS:Ljava/lang/String; = "Vops"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final PROPERTY_RADIO_ATEL_CARRIER:Ljava/lang/String; = "persist.vendor.radio.atel.carrier"

.field public static final QTI_IMS_ASSURED_TRANSFER:I = 0x2

.field public static final QTI_IMS_BLIND_TRANSFER:I = 0x1

.field public static final QTI_IMS_CALL_DEFLECT_NUMBER:Ljava/lang/String; = "ims_call_deflect_number"

.field public static final QTI_IMS_CONSULTATIVE_TRANSFER:I = 0x4

.field public static final QTI_IMS_HO_DISABLE_ALL:I = 0x2

.field public static final QTI_IMS_HO_ENABLED_WLAN_TO_WWAN_ONLY:I = 0x3

.field public static final QTI_IMS_HO_ENABLED_WWAN_TO_WLAN_ONLY:I = 0x4

.field public static final QTI_IMS_HO_ENABLE_ALL:I = 0x1

.field public static final QTI_IMS_HO_INVALID:I = 0x0

.field public static final QTI_IMS_INCOMING_CONF_EXTRA_KEY:Ljava/lang/String; = "incomingConference"

.field public static final QTI_IMS_PHONE_ID_EXTRA_KEY:Ljava/lang/String; = "phoneId"

.field public static final QTI_IMS_REQUEST_ERROR:I = 0x1

.field public static final QTI_IMS_REQUEST_SUCCESS:I = 0x0

.field public static final QTI_IMS_SMS_APP_INVALID:I = -0x1

.field public static final QTI_IMS_SMS_APP_NOT_RCS:I = 0x2

.field public static final QTI_IMS_SMS_APP_RCS:I = 0x1

.field public static final QTI_IMS_SMS_APP_SELECTION_NOT_ALLOWED:I = 0x0

.field public static final QTI_IMS_STATIC_IMAGE_SETTING:Ljava/lang/String; = "ims_vt_call_static_image"

.field public static final QTI_IMS_TRANSFER_EXTRA_KEY:Ljava/lang/String; = "transferType"

.field public static final QTI_IMS_VOLTE_PREF_OFF:I = 0x0

.field public static final QTI_IMS_VOLTE_PREF_ON:I = 0x1

.field public static final QTI_IMS_VOLTE_PREF_UNKNOWN:I = 0x2

.field public static final QTI_IMS_VVM_APP_INVALID:I = -0x1

.field public static final QTI_IMS_VVM_APP_NOT_RCS:I = 0x0

.field public static final QTI_IMS_VVM_APP_RCS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "QtiImsExtUtils"

    sput-object v0, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static allowVideoCallsInLowBattery(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 436
    const-string v0, "allow_video_call_in_low_battery"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 223
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 224
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 225
    .local v1, "width":I
    const/4 v2, 0x1

    .line 227
    .local v2, "inSampleSize":I
    sget-object v3, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateInSampleSize: reqWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reqHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " raw width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " raw height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-gt v0, p2, :cond_0

    if-le v1, p1, :cond_1

    .line 231
    :cond_0
    div-int/lit8 v3, v0, 0x2

    .line 232
    .local v3, "halfHeight":I
    div-int/lit8 v4, v1, 0x2

    .line 236
    .local v4, "halfWidth":I
    :goto_0
    div-int v5, v3, v2

    if-le v5, p2, :cond_1

    div-int v5, v4, v2

    if-le v5, p1, :cond_1

    .line 238
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 241
    .end local v3    # "halfHeight":I
    .end local v4    # "halfWidth":I
    :cond_1
    sget-object v3, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateInSampleSize: inSampleSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v2
.end method

.method public static canHoldVideoCall(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    const-string v0, "allow_holding_video_call"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 305
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 307
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 313
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 316
    invoke-static {v0, p2, p3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 319
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 320
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p2, p3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 250
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 262
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 265
    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 269
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 270
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 166
    const-string v0, "ims_call_deflect_number"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :cond_0
    return-object v0
.end method

.method private static getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 461
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 462
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getConfigForPhoneId context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-object v0

    .line 466
    :cond_0
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 468
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_1

    .line 469
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getConfigForPhoneId configManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-object v0

    .line 473
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 474
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getConfigForPhoneId phoneId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-object v0

    .line 478
    :cond_2
    invoke-static {p0, p1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v2

    .line 479
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 480
    sget-object v3, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getConfigForPhoneId subId is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-object v0

    .line 484
    :cond_3
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRttMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rtt_calling_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRttOperatingMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 550
    const-string v0, "persist.vendor.radio.rtt.operval"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 551
    .local v0, "mode":I
    return v0
.end method

.method public static getStaticImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getStaticImageUriStr(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "uriStr":Ljava/lang/String;
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticImage: uriStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reqWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reqHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isValidUriStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 343
    .local v1, "imageBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 346
    return-object v1

    .line 344
    :cond_0
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    const-string v3, "image decoding error"

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    .end local v1    # "imageBitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "invalid file path"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticImageUriStr(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 194
    const-string v0, "ims_vt_call_static_image"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 491
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 492
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 493
    return v1

    .line 496
    :cond_0
    nop

    .line 497
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 498
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_1

    .line 499
    return v1

    .line 501
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    return v1
.end method

.method public static isCallTransferEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 378
    const-string v0, "persist.vendor.radio.ims_call_transfer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCancelModifyCallSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 563
    const-string v0, "support_cancel_modify_call"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrierConfig"    # Ljava/lang/String;

    .line 431
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .line 422
    const-string v0, "405854"

    const-string v1, "persist.vendor.radio.atel.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCsRetryConfigEnabled(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 405
    const-string v0, "config_carrier_cs_retry_available"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttAutoUpgradeSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 530
    const-string v0, "carrier_rtt_auto_upgrade"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttDowngradeSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 557
    const-string v0, "carrier_rtt_downgrade_supported"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 506
    invoke-static {p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRttSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 524
    const-string v0, "carrier_rtt_supported"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttSupportedOnVtCalls(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 536
    const-string v0, "carrier_rtt_supported_on_vtcalls"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttUpgradeSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 543
    const-string v0, "carrier_rtt_upgrade_supported"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidUriStr(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .line 204
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 415
    const-string v0, "vowifi_call_quality"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 275
    if-nez p0, :cond_0

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 280
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 281
    .local v8, "h":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float v9, v1, v2

    .line 282
    .local v9, "scaleWidth":F
    int-to-float v1, p2

    int-to-float v2, v8

    div-float v10, v1, v2

    .line 283
    .local v10, "scaleHeight":F
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleImage bitmap w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bitmap h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v1

    .line 286
    .local v11, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v11, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 287
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v8

    move-object v6, v11

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 289
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .line 179
    move-object v0, p1

    .line 181
    .local v0, "deflectNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    const-string v0, ""

    .line 185
    :cond_1
    const-string v1, "ims_call_deflect_number"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    return-void
.end method

.method public static setRttMode(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "value"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 518
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rtt_calling_mode"

    .line 519
    nop

    .line 518
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    return-void
.end method

.method public static shallHidePreviewInVtConference(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 441
    const-string v0, "config_hide_preview_in_vt_confcall"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallRemoveModifyCallCapability(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 456
    const-string v0, "remove_modify_call_capability"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallRemoveModifyCallCapability(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 452
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shallShowStaticImageUi(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 362
    const-string v0, "show_static_image_ui"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallShowVideoQuality(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 370
    const-string v0, "show_video_quality_ui"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallTransmitStaticImage(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 354
    const-string v0, "transmit_static_image"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useCustomVideoUi(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    const-string v0, "use_custom_video_ui"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useExt(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 387
    const-string v0, "video_call_use_ext"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
