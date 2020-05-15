.class public Lcom/android/internal/telephony/TelephonyTester;
.super Ljava/lang/Object;
.source "TelephonyTester.java"


# static fields
.field private static final ACTION_RESET:Ljava/lang/String; = "reset"

.field private static final ACTION_TEST_CONFERENCE_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestConferenceEventPackage"

.field private static final ACTION_TEST_DIALOG_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestDialogEventPackage"

.field private static final ACTION_TEST_HANDOVER_FAIL:Ljava/lang/String; = "com.android.internal.telephony.TestHandoverFail"

.field private static final ACTION_TEST_SERVICE_STATE:Ljava/lang/String; = "com.android.internal.telephony.TestServiceState"

.field private static final ACTION_TEST_SUPP_SRVC_FAIL:Ljava/lang/String; = "com.android.internal.telephony.TestSuppSrvcFail"

.field private static final ACTION_TEST_SUPP_SRVC_NOTIFICATION:Ljava/lang/String; = "com.android.internal.telephony.TestSuppSrvcNotification"

.field private static final DBG:Z = true

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_CANPULL:Ljava/lang/String; = "canPull"

.field private static final EXTRA_CODE:Ljava/lang/String; = "code"

.field private static final EXTRA_DATA_RAT:Ljava/lang/String; = "data_rat"

.field private static final EXTRA_DATA_REG_STATE:Ljava/lang/String; = "data_reg_state"

.field private static final EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "data_roaming_type"

.field private static final EXTRA_DIALOGID:Ljava/lang/String; = "dialogId"

.field private static final EXTRA_FAILURE_CODE:Ljava/lang/String; = "failureCode"

.field private static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field private static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final EXTRA_SENDPACKAGE:Ljava/lang/String; = "sendPackage"

.field private static final EXTRA_STARTPACKAGE:Ljava/lang/String; = "startPackage"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_VOICE_RAT:Ljava/lang/String; = "voice_rat"

.field private static final EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voice_reg_state"

.field private static final EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voice_roaming_type"

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyTester"

.field private static mImsExternalCallStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceStateTestIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/internal/telephony/TelephonyTester$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 176
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 186
    const-string v1, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 187
    const-string v1, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "com.android.internal.telephony.TestDialogEventPackage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.android.internal.telephony.TestSuppSrvcFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "com.android.internal.telephony.TestHandoverFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "com.android.internal.telephony.TestSuppSrvcNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    goto :goto_0

    .line 194
    :cond_0
    const-string v1, "com.android.internal.telephony.TestServiceState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "register for intent action=com.android.internal.telephony.TestServiceState"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 198
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleTestDialogEventPackageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleSuppServiceFailedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->handleHandoverFailedIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->sendTestSuppServiceNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyTester;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private handleHandoverFailedIntent()V
    .locals 8

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 224
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    .line 229
    .local v1, "imsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-nez v1, :cond_1

    .line 230
    return-void

    .line 233
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 234
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v2, :cond_2

    .line 235
    return-void

    .line 238
    :cond_2
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/16 v5, 0xe

    const/16 v6, 0x12

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 241
    return-void
.end method

.method private handleSuppServiceFailedIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 214
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    const-string v1, "failureCode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 218
    .local v1, "code":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 219
    return-void
.end method

.method private handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 253
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_0

    .line 254
    return-void

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    .line 258
    .local v1, "imsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-nez v1, :cond_1

    .line 259
    return-void

    .line 262
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 263
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v2, :cond_2

    .line 264
    return-void

    .line 267
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .local v3, "packageFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .local v4, "is":Ljava/io/FileInputStream;
    nop

    .line 273
    nop

    .line 276
    new-instance v5, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    .line 277
    .local v5, "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    invoke-virtual {v5}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v6

    .line 278
    .local v6, "imsConferenceState":Landroid/telephony/ims/ImsConferenceState;
    if-nez v6, :cond_3

    .line 279
    return-void

    .line 282
    :cond_3
    invoke-virtual {v2, v6}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 283
    return-void

    .line 271
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    .end local v6    # "imsConferenceState":Landroid/telephony/ims/ImsConferenceState;
    :catch_0
    move-exception v4

    .line 272
    .local v4, "ex":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test conference event package file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private handleTestDialogEventPackageIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 292
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v1

    .line 296
    .local v1, "externalCallTracker":Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    if-nez v1, :cond_1

    .line 297
    return-void

    .line 300
    :cond_1
    const-string v2, "startPackage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    sget-object v2, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 302
    :cond_2
    const-string v2, "sendPackage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    sget-object v2, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    .line 304
    sget-object v2, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 305
    :cond_3
    const-string v2, "dialogId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    new-instance v2, Landroid/telephony/ims/ImsExternalCallState;

    const-string v3, "dialogId"

    const/4 v4, 0x0

    .line 307
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v3, "number"

    .line 308
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v3, "canPull"

    .line 309
    const/4 v6, 0x1

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v3, "state"

    .line 310
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, v2

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 315
    .local v2, "state":Landroid/telephony/ims/ImsExternalCallState;
    sget-object v3, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v2    # "state":Landroid/telephony/ims/ImsExternalCallState;
    :cond_4
    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 209
    const-string v0, "TelephonyTester"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private sendTestSuppServiceNotification(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 320
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, "code":I
    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 323
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 324
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v2, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test supp service notification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 328
    new-instance v3, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 329
    .local v3, "suppServiceNotification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput v0, v3, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 330
    iput v1, v3, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 331
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 333
    .end local v0    # "code":I
    .end local v1    # "type":I
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v3    # "suppServiceNotification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_1
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 203
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    :cond_0
    return-void
.end method

.method overrideServiceState(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reset"

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "action"

    .line 338
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "Service state override reset"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 340
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_reg_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "voice_reg_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override voice reg state with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_reg_state"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_reg_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override data reg state with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_rat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "voice_rat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override voice rat with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_rat"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_rat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override data rat with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_roaming_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "voice_roaming_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override voice roaming type with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_roaming_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_roaming_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override data roaming type with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 372
    :cond_7
    return-void

    .line 336
    :cond_8
    :goto_0
    return-void
.end method
