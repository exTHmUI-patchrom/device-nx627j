.class public Lcom/android/internal/telephony/EcbmHandler;
.super Landroid/os/Handler;
.source "EcbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;,
        Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;
    }
.end annotation


# static fields
.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x1

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "EcbmHandler"

.field public static final RESTART_ECM_TIMER:I

.field private static mInstance:Lcom/android/internal/telephony/EcbmHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEcbmPhoneId:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mImsEcbmStateListener:[Lcom/android/ims/ImsEcbmStateListener;

.field private mIsEcbmOnIms:Z

.field protected mIsPhoneInEcmState:Z

.field private mNumPhones:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    .line 56
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mNumPhones:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsPhoneInEcmState:Z

    .line 70
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsEcbmOnIms:Z

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    .line 78
    new-instance v1, Lcom/android/internal/telephony/EcbmHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EcbmHandler$1;-><init>(Lcom/android/internal/telephony/EcbmHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 98
    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    .line 99
    nop

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    new-instance v2, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;-><init>(Lcom/android/internal/telephony/EcbmHandler;)V

    aput-object v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInEcmMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsPhoneInEcmState:Z

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/EcbmHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/EcbmHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EcbmHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/EcbmHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/EcbmHandler;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsEcbmOnIms:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/EcbmHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/EcbmHandler;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/EcbmHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/EcbmHandler;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EcbmHandler;->handleEnterEmergencyCallbackMode(I)V

    return-void
.end method

.method public static getInEcmMode()Z
    .locals 2

    .line 363
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/EcbmHandler;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/internal/telephony/EcbmHandler;->mInstance:Lcom/android/internal/telephony/EcbmHandler;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/internal/telephony/EcbmHandler;

    invoke-direct {v0}, Lcom/android/internal/telephony/EcbmHandler;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/EcbmHandler;->mInstance:Lcom/android/internal/telephony/EcbmHandler;

    .line 109
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/EcbmHandler;->mInstance:Lcom/android/internal/telephony/EcbmHandler;

    return-object v0
.end method

.method private handleEnterEmergencyCallbackMode(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 245
    const-string v0, "EcbmHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnterEmergencyCallbackMode, isInEcm()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/EcbmHandler;->setIsInEcm(Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/EcbmHandler;->sendEmergencyCallbackModeChange()V

    .line 257
    const-string v0, "ro.cdma.ecmexittimer"

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 259
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 263
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 367
    const-string v0, "EcbmHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    invoke-virtual {p0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 158
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 159
    const-string v1, "sendEmergencyCallbackModeChange"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/EcbmHandler;->logd(Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitEmergencyCallbackMode() mIsEcbmOnIms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsEcbmOnIms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mEcbmPhoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/EcbmHandler;->logd(Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsEcbmOnIms:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 226
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 227
    .local v0, "cT":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    if-eqz v0, :cond_1

    .line 230
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    .line 231
    .local v1, "ecbm":Lcom/android/ims/ImsEcbm;
    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "ecbm":Lcom/android/ims/ImsEcbm;
    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 234
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "exitEmergencyCallbackMode"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    .end local v0    # "cT":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/EcbmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 238
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 241
    :goto_1
    return-void
.end method

.method public getImsEcbmStateListener(I)Lcom/android/ims/ImsEcbmStateListener;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsEcbmStateHandler:Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;

    return-object v0
.end method

.method public handleExitEmergencyCallbackMode(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 267
    const-string v0, "EcbmHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExitEmergencyCallbackMode, isInEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/EcbmHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 276
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/EcbmHandler;->setIsInEcm(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/EcbmHandler;->sendEmergencyCallbackModeChange()V

    .line 286
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EcbmHandler;->setInternalDataEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 288
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    const-string v0, "EcbmHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unnown event received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 203
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    .local v1, "phoneId":I
    const-string v2, "EcbmHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ar.exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EcbmHandler;->handleExitEmergencyCallbackMode(I)V

    .line 208
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    .line 211
    .end local v1    # "phoneId":I
    :cond_0
    goto :goto_0

    .line 193
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 194
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    .line 195
    const-string v1, "EcbmHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " EVENT_EMERGENCY_CALLBACK_MODE_ENTER mEcbmPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcbmPhoneId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/EcbmHandler;->handleEnterEmergencyCallbackMode(I)V

    .line 199
    nop

    .line 215
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 4
    .param p1, "action"    # I

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 308
    const-string v0, "EcbmHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/EcbmHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 300
    goto :goto_0

    .line 302
    :pswitch_1
    const-string v0, "ro.cdma.ecmexittimer"

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 304
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    iget-object v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 306
    nop

    .line 310
    .end local v0    # "delayInMillis":J
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Landroid/content/Context;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/EcbmHandler;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "phoneId"    # I

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/EcbmHandler;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mContext:Landroid/content/Context;

    const-string v2, "power"

    .line 118
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 119
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "EcbmHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/EcbmHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 124
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    if-ltz p4, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mNumPhones:I

    if-ge p4, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p4

    iput p4, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->phoneId:I

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p4

    iput-object p3, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p4

    iput-object p2, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 128
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    const/4 v0, 0x2

    .line 130
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    invoke-interface {p3, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/EcbmHandler;->mInstance:Lcom/android/internal/telephony/EcbmHandler;

    return-object v0
.end method

.method public isInEcm()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    return-void
.end method

.method public setInternalDataEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/EcbmHandler;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setIsInEcm(Z)V
    .locals 2
    .param p1, "isInEcm"    # Z

    .line 357
    const-string v0, "ril.cdma.inecmmode"

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iput-boolean p1, p0, Lcom/android/internal/telephony/EcbmHandler;->mIsPhoneInEcmState:Z

    .line 360
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 313
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 314
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 345
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 318
    return-void
.end method

.method public updateImsPhone(Lcom/android/internal/telephony/Phone;I)V
    .locals 2
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "phoneId"    # I

    .line 137
    if-ltz p2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/EcbmHandler;->mNumPhones:I

    if-ge p2, v0, :cond_1

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p2

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v1, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p2

    new-instance v1, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;-><init>(Lcom/android/internal/telephony/EcbmHandler;I)V

    iput-object v1, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsEcbmStateHandler:Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler;->trackers:[Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;

    aget-object v0, v0, p2

    iput-object v1, v0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->mImsEcbmStateHandler:Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;

    .line 146
    :cond_1
    :goto_0
    return-void
.end method
