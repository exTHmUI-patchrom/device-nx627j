.class public Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;
.super Ljava/lang/Object;
.source "QtiEmergencyCallHelper.java"


# static fields
.field private static final ALLOW_ECALL_ENHANCEMENT_PROPERTY:Ljava/lang/String; = "persist.vendor.radio.enhance_ecall"

.field private static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiEmergencyCallHelper"

.field private static final PRIMARY_STACK_MODEMID:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall()I
    .locals 12

    .line 45
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 47
    .local v0, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 48
    .local v1, "voicePhoneId":I
    const/4 v2, -0x1

    .line 50
    .local v2, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 51
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 53
    .local v4, "phoneCount":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 56
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v5

    sget-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v5, v7, :cond_1

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 58
    .local v9, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_0

    .line 59
    const-string v5, "QtiEmergencyCallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call already active on phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    return v5

    .line 57
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 68
    :cond_1
    move v5, v2

    move v2, v6

    .local v2, "phId":I
    .local v5, "phoneId":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 69
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 70
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 71
    .local v8, "ss":I
    if-nez v8, :cond_2

    .line 72
    move v5, v2

    .line 73
    if-ne v5, v1, :cond_2

    .end local v2    # "phId":I
    goto :goto_2

    .line 68
    .end local v7    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v8    # "ss":I
    .restart local v2    # "phId":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v2    # "phId":I
    :cond_3
    :goto_2
    const-string v2, "QtiEmergencyCallHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Voice phoneId in service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, -0x1

    if-ne v5, v2, :cond_5

    .line 79
    move v7, v5

    move v5, v6

    .local v5, "phId":I
    .local v7, "phoneId":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 80
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 81
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .line 82
    .local v9, "ss":I
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 83
    move v7, v5

    .line 84
    if-ne v7, v1, :cond_4

    .end local v5    # "phId":I
    goto :goto_4

    .line 79
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "ss":I
    .restart local v5    # "phId":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 88
    .end local v7    # "phoneId":I
    .local v5, "phoneId":I
    :cond_5
    move v7, v5

    .end local v5    # "phoneId":I
    .restart local v7    # "phoneId":I
    :cond_6
    :goto_4
    const-string v5, "QtiEmergencyCallHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Voice phoneId in Limited service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-ne v7, v2, :cond_8

    .line 91
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v2

    .line 92
    .end local v7    # "phoneId":I
    .local v2, "phoneId":I
    move v7, v2

    .end local v2    # "phoneId":I
    .local v6, "phId":I
    .restart local v7    # "phoneId":I
    :goto_5
    move v2, v6

    .end local v6    # "phId":I
    .local v2, "phId":I
    if-ge v2, v4, :cond_8

    .line 95
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    .line 97
    .local v5, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_7

    .line 99
    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 101
    move v7, v2

    .line 102
    if-ne v7, v1, :cond_7

    .end local v2    # "phId":I
    goto :goto_6

    .line 92
    .end local v5    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .restart local v2    # "phId":I
    :cond_7
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "phId":I
    .restart local v6    # "phId":I
    goto :goto_5

    .line 106
    .end local v6    # "phId":I
    :cond_8
    :goto_6
    const-string v2, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice phoneId in service = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " preferred phoneId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v7
.end method

.method public static getPrimaryStackPhoneId()I
    .locals 7

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "modemUuId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, -0x1

    .line 117
    .local v2, "primayStackPhoneId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 119
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 120
    if-nez v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    const-string v4, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logical Modem id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    goto :goto_1

    .line 131
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 132
    move v2, v3

    .line 133
    const-string v4, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primay Stack phone id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " selected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    goto :goto_2

    .line 117
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "i":I
    :cond_3
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 140
    const-string v3, "QtiEmergencyCallHelper"

    const-string v4, "Returning default phone id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v2, 0x0

    .line 144
    :cond_4
    return v2
.end method

.method public static isDeviceInSingleStandby()Z
    .locals 8

    .line 148
    const-string v0, "persist.vendor.radio.enhance_ecall"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "QtiEmergencyCallHelper"

    const-string v1, "persist.vendor.radio.enhance_ecall not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v2

    .line 153
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 154
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 158
    .local v3, "phoneCnt":I
    if-ne v3, v1, :cond_1

    .line 159
    return v1

    .line 161
    :cond_1
    move v4, v2

    .local v4, "phoneId":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 163
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    .line 165
    .local v5, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 166
    invoke-virtual {v5, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v6

    if-eq v6, v1, :cond_2

    goto :goto_1

    .line 161
    .end local v5    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .restart local v5    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_3
    :goto_1
    const-string v2, "QtiEmergencyCallHelper"

    const-string v6, "modem is in single standby mode"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v1

    .line 173
    .end local v4    # "phoneId":I
    .end local v5    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_4
    const-string v1, "QtiEmergencyCallHelper"

    const-string v4, "modem is in dual standby mode"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v2
.end method

.method public static isEmergencyNumInternal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 257
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "isEmergencyNum":Z
    const/4 v1, -0x1

    .line 180
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 181
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 182
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 184
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 185
    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 183
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    :cond_0
    nop

    .line 189
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 188
    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 192
    :cond_1
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "isLocalEmergencyNum":Z
    const/4 v1, -0x1

    .line 198
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 199
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 201
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 203
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 204
    nop

    .line 205
    invoke-static {p0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 202
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :cond_0
    nop

    .line 209
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 208
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 212
    :cond_1
    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "isPotentialEmergencyNum":Z
    const/4 v1, -0x1

    .line 218
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 219
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 221
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 223
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 224
    nop

    .line 225
    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 222
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    :cond_0
    nop

    .line 229
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 228
    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 232
    :cond_1
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "isPotentialLocalEmergencyNum":Z
    const/4 v1, -0x1

    .line 238
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 239
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 241
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 243
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 244
    nop

    .line 245
    invoke-static {p0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 242
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 249
    :cond_0
    nop

    .line 250
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 249
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 253
    :cond_1
    return v0
.end method
