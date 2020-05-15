.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoController"

.field private static final VDBG:Z = false


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;

    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 51
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    .line 56
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "permissionResult":I
    if-nez v0, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    .line 351
    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    .line 362
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p1, "subId"    # I

    .line 331
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 332
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 513
    const-string v0, "PhoneSubInfoController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 517
    const-string v0, "PhoneSubInfoController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method


# virtual methods
.method public getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "keyType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 111
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getCarrierInfoForImsiEncryption"

    invoke-static {v2, p1, p3, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    return-object v1

    .line 117
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v1

    return-object v1

    .line 119
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierInfoForImsiEncryption phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 120
    return-object v1
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 298
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CALL_PRIVILEGED"

    const-string v3, "Requires CALL_PRIVILEGED"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "number":Ljava/lang/String;
    return-object v1

    .line 304
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompleteVoiceMailNumber phone is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 p1, 0x0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    .line 68
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    const-string v4, "getDeviceId"

    .line 69
    invoke-static {v2, v3, p2, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    return-object v1

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceIdForPhone phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 76
    return-object v1
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 162
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getDeviceSvn"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    return-object v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    :cond_1
    const-string v2, "getDeviceSvn phone is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 170
    return-object v1
.end method

.method public getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 500
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getGroupIdLevel1"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    return-object v1

    .line 505
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 507
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupIdLevel1 phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 508
    return-object v1
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 201
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getIccSerialNumber"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    return-object v1

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccSerialNumber phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 209
    return-object v1
.end method

.method public getIccSimChallengeResponse(IIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    const-string v0, "getIccSimChallengeResponse"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 473
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 474
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 475
    const-string v3, "getIccSimChallengeResponse() UiccCard is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 476
    return-object v2

    .line 479
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 480
    .local v3, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v3, :cond_1

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccSimChallengeResponse() no app with specified type -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 483
    return-object v2

    .line 485
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccSimChallengeResponse() found app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " specified type -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 489
    const/16 v4, 0x80

    if-eq p3, v4, :cond_2

    const/16 v4, 0x81

    if-eq p3, v4, :cond_2

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccSimChallengeResponse() unsupported authType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 492
    return-object v2

    .line 495
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 96
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getImei"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 104
    return-object v1
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 390
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 391
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 395
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_0

    .line 396
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 398
    :cond_0
    return-object v1

    .line 401
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimDomain phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 402
    return-object v1
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 371
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 375
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_0

    .line 376
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 378
    :cond_0
    return-object v1

    .line 381
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimImpi phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 382
    return-object v1
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 410
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 411
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 415
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_0

    .line 416
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 418
    :cond_0
    return-object v1

    .line 421
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimImpu phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 422
    return-object v1
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 431
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 435
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_0

    .line 436
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 438
    :cond_0
    return-object v1

    .line 441
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimIst phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 442
    return-object v1
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 451
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 455
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_0

    .line 456
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 458
    :cond_0
    return-object v1

    .line 461
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimPcscf phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 462
    return-object v1
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 241
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getLine1AlphaTag"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    return-object v1

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 248
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1AlphaTag phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 249
    return-object v1
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 219
    const-string v0, "CTA"

    const-string v1, "number@getLine1NumberForSubscriber@\u8bfb\u53d6\u7528\u6237\u672c\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 222
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getLine1Number"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    return-object v1

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1Number phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 231
    return-object v1
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 259
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getMsisdn"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    return-object v1

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 266
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMsisdn phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 267
    return-object v1
.end method

.method public getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 82
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getNai"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    return-object v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNai phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 90
    return-object v1
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 180
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getSubscriberId"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    return-object v1

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscriberId phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 188
    return-object v1
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 314
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 315
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getVoiceMailAlphaTag"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    return-object v1

    .line 320
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 322
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailAlphaTag phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 323
    return-object v1
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 277
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "getVoiceMailNumber"

    invoke-static {v2, p1, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    return-object v1

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "number":Ljava/lang/String;
    return-object v1

    .line 286
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 287
    return-object v1
.end method

.method public resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 145
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceModifyPermission()V

    .line 147
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->resetCarrierKeysForImsiEncryption()V

    .line 148
    return-void

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCarrierKeysForImsiEncryption phone is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 127
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceModifyPermission()V

    .line 129
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    .line 134
    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierInfoForImsiEncryption phone is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    .line 132
    return-void
.end method
