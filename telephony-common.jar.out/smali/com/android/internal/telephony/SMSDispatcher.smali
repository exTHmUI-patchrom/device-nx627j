.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_GET_IMS_SERVICE:I = 0x10

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final MAP_KEY_DATA:Ljava/lang/String; = "data"

.field protected static final MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field protected static final MAP_KEY_DEST_PORT:Ljava/lang/String; = "destPort"

.field protected static final MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field protected static final MAP_KEY_SC_ADDR:Ljava/lang/String; = "scAddr"

.field protected static final MAP_KEY_SMSC:Ljava/lang/String; = "smsc"

.field protected static final MAP_KEY_TEXT:Ljava/lang/String; = "text"

.field protected static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field protected static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

.field protected mSmsSendDisabled:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 192
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 193
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 195
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sms_short_code_rule"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 204
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 203
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 205
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSmsSendDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method static synthetic access$000(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/PendingIntent;

    .line 101
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSendSmsFlag(Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkCallerIsPhoneOrCarrierApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void
.end method

.method private checkCallerIsPhoneOrCarrierApp()V
    .locals 6

    .line 1986
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1987
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1988
    .local v1, "appId":I
    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1992
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1993
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1994
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1999
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2000
    return-void

    .line 1995
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not phone or carrier app!"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 1998
    .local v2, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller is not phone or carrier app!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1989
    .end local v2    # "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1302
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 1304
    const-string v0, "SMSDispatcher"

    const-string v4, "Denied because queue limit reached"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1306
    return v1

    .line 1308
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1309
    return v2
.end method

.method private getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1320
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1321
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1322
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1323
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager Name Not Found for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-object p1
.end method

.method private getCurrentPackageName()Ljava/lang/String;
    .locals 7

    .line 2046
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2047
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 2048
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v2, ""

    .line 2049
    .local v2, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2050
    return-object v2

    .line 2052
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2053
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2054
    nop

    .line 2055
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2056
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2057
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getPackageNameFormRunnInfo(Landroid/app/ActivityManager$RunningAppProcessInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2058
    return-object v2

    .line 2060
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 2062
    :cond_2
    return-object v2
.end method

.method private getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1955
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1956
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1957
    .local v2, "part":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1958
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    .end local v2    # "part":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1961
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "priority"    # I
    .param p14, "expectMore"    # Z
    .param p15, "validityPeriod"    # I

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_5

    .line 1063
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    move-object v8, v0

    .line 1064
    .local v8, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v12, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1065
    iput-object v11, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1066
    move/from16 v7, p5

    if-ne v7, v10, :cond_1

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isAscii7bitSupportedForLongMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    iput v0, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1069
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message encoding for proper 7 bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1071
    :cond_1
    const/4 v0, 0x4

    iput v0, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1073
    :goto_1
    iput-boolean v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1080
    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    .line 1081
    move v0, v10

    goto :goto_2

    .line 1080
    :cond_2
    nop

    .line 1081
    move v0, v9

    :goto_2
    move/from16 v6, p13

    invoke-static {v14, v8, v0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .line 1084
    .local v5, "submitPdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-virtual {v15, v14, v13, v12, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v16

    .line 1086
    .local v16, "map":Ljava/util/HashMap;
    nop

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    if-eqz p8, :cond_4

    if-eqz p14, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    move v9, v10

    :goto_4
    const/16 v17, 0x1

    const/16 v18, 0x1

    .line 1086
    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v19, v5

    move-object/from16 v5, p9

    .end local v5    # "submitPdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .local v19, "submitPdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v20, v8

    move-object v8, v11

    .end local v8    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .local v20, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v10, p12

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, p13

    move/from16 v14, p15

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 1092
    .end local v16    # "map":Ljava/util/HashMap;
    .end local v19    # "submitPdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .end local v20    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_5
    if-eqz p7, :cond_6

    .line 1095
    move v3, v10

    goto :goto_5

    .line 1092
    :cond_6
    nop

    .line 1095
    move v3, v9

    :goto_5
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    move-object/from16 v14, p4

    iget v6, v14, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, v14, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1093
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v5, p5

    move/from16 v8, p15

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 1097
    .local v13, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    if-eqz v13, :cond_9

    .line 1098
    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object/from16 v8, p3

    invoke-virtual {v15, v12, v11, v8, v13}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v16

    .line 1100
    .restart local v16    # "map":Ljava/util/HashMap;
    nop

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    if-eqz p8, :cond_8

    if-eqz p14, :cond_7

    goto :goto_6

    :cond_7
    goto :goto_7

    :cond_8
    :goto_6
    move v9, v10

    :goto_7
    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 1100
    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object v8, v14

    move-object/from16 v10, p12

    move/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v17, v13

    move/from16 v13, p13

    .end local v13    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .local v17, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    move/from16 v14, p15

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 1105
    .end local v16    # "map":Ljava/util/HashMap;
    .end local v17    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v13    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_9
    move-object/from16 v17, v13

    .end local v13    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v17    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v0, "SMSDispatcher"

    const-string v1, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .line 182
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 183
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static getNotInServiceError(I)I
    .locals 1
    .param p0, "ss"    # I

    .line 756
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 757
    const/4 v0, 0x2

    return v0

    .line 759
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .line 2026
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2027
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2029
    .local v2, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 2033
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 2036
    :cond_1
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 2038
    goto :goto_0

    .line 2037
    :catch_0
    move-exception v4

    .line 2039
    :goto_0
    return-object v2
.end method

.method private getPackageNameFormRunnInfo(Landroid/app/ActivityManager$RunningAppProcessInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2069
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2070
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":remote"

    .line 2071
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 2073
    iget-object v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2075
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":remote"

    .line 2076
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2077
    const-string v1, ":remote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2078
    .local v1, "position":I
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2080
    .end local v1    # "position":I
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getSendSmsFlag(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 3
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .line 738
    if-eqz p1, :cond_1

    .line 740
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 741
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    goto :goto_1

    .line 743
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    goto :goto_2

    .line 745
    :goto_1
    nop

    .line 746
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMSDispatcher"

    const-string v2, "Failed to send result"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_2
    return-void
.end method

.method private isAscii7bitSupportedForLongMessage()Z
    .locals 5

    .line 2007
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2009
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 2010
    .local v1, "pb":Landroid/os/PersistableBundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2012
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 2014
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2015
    nop

    .line 2016
    if-eqz v1, :cond_0

    .line 2017
    const-string v4, "ascii_7_bit_support_for_long_message"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 2019
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 2014
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    .line 500
    if-nez p1, :cond_0

    .line 501
    const-string v0, "SMSDispatcher"

    const-string v1, "processSendSmsResponse: null tracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 505
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 508
    .local v0, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    const/4 v1, 0x2

    packed-switch p2, :pswitch_data_0

    .line 527
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Retry on carrier network."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 517
    :pswitch_0
    const-string v2, "SMSDispatcher"

    const-string v3, "Sending SMS by IP failed."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v2, Landroid/os/AsyncResult;

    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v2, p1, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 521
    goto :goto_0

    .line 523
    :pswitch_1
    const-string v1, "SMSDispatcher"

    const-string v2, "Sending SMS by IP failed. Retry on carrier network."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 525
    goto :goto_0

    .line 510
    :pswitch_2
    const-string v3, "SMSDispatcher"

    const-string v4, "Sending SMS by IP succeeded."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, p1, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 515
    nop

    .line 530
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 22
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1448
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 1450
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "destination"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1451
    .local v2, "destinationAddress":Ljava/lang/String;
    const-string v3, "scaddress"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    .line 1453
    .local v15, "scAddress":Ljava/lang/String;
    const-string v3, "parts"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/util/ArrayList;

    .line 1454
    .local v14, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "sentIntents"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/ArrayList;

    .line 1455
    .local v13, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v3, "deliveryIntents"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/util/ArrayList;

    .line 1458
    .local v16, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v12, p0

    iget-object v3, v12, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1460
    .local v11, "ss":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v11, :cond_2

    .line 1461
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1462
    const/4 v5, 0x0

    .line 1463
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_0

    .line 1464
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/app/PendingIntent;

    .line 1466
    :cond_0
    invoke-static {v11, v5}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1461
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1468
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_1
    return-void

    .line 1471
    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1472
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$300(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v17

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    iget-boolean v7, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    .line 1471
    move-object v3, v12

    move-object v4, v2

    move-object v5, v15

    move/from16 v18, v6

    move-object v6, v14

    move/from16 v19, v7

    move-object v7, v13

    move/from16 v20, v8

    move-object/from16 v8, v16

    move/from16 v21, v11

    move/from16 v11, v17

    .end local v11    # "ss":I
    .local v21, "ss":I
    move/from16 v12, v20

    move-object/from16 v17, v13

    move/from16 v13, v19

    .end local v13    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local v17, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v19, v14

    move/from16 v14, v18

    .end local v14    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 1474
    return-void
.end method

.method private sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .param p1, "isDataSms"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "carrierPackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 888
    const-string v1, "SMSDispatcher"

    const-string v2, "Found carrier package."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-eqz p1, :cond_0

    .line 891
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v1, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
    goto :goto_0

    .line 893
    .end local v1    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 895
    .restart local v1    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 896
    const/4 v2, 0x1

    return v2

    .line 899
    .end local v1    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .line 876
    if-eqz p1, :cond_0

    .line 878
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMSDispatcher"

    const-string v2, "Intent has been canceled!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1221
    return v1

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1224
    .local v0, "rule":I
    const/4 v2, 0x0

    .line 1225
    .local v2, "smsCategory":I
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_4

    .line 1226
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 1227
    .local v5, "simCountryIso":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 1228
    :cond_2
    const-string v6, "SMSDispatcher"

    const-string v7, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 1232
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1235
    .end local v5    # "simCountryIso":Ljava/lang/String;
    :cond_4
    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_8

    .line 1236
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 1237
    .local v5, "networkCountryIso":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v4, :cond_7

    .line 1238
    :cond_6
    const-string v6, "SMSDispatcher"

    const-string v7, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 1242
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1243
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1242
    invoke-static {v2, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v2

    .line 1247
    .end local v5    # "networkCountryIso":Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_d

    if-eq v2, v1, :cond_d

    if-ne v2, v4, :cond_9

    goto :goto_1

    .line 1254
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "device_provisioned"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_a

    .line 1255
    const-string v1, "SMSDispatcher"

    const-string v3, "Can\'t send premium sms during Setup Wizard"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return v6

    .line 1260
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1261
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v4

    .line 1262
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1261
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v4

    .line 1263
    .local v4, "premiumSmsPermission":I
    if-nez v4, :cond_b

    .line 1265
    const/4 v4, 0x1

    .line 1268
    :cond_b
    packed-switch v4, :pswitch_data_0

    .line 1284
    if-ne v2, v3, :cond_c

    .line 1285
    const/16 v1, 0x8

    .local v1, "event":I
    goto :goto_0

    .line 1270
    .end local v1    # "event":I
    :pswitch_0
    const-string v3, "SMSDispatcher"

    const-string v5, "User approved this app to send to premium SMS"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return v1

    .line 1274
    :pswitch_1
    const-string v3, "SMSDispatcher"

    const-string v5, "User denied this app from sending to premium SMS"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v3, 0x7

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1276
    .local v3, "msg":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 1277
    iput v1, v3, Landroid/os/Message;->arg2:I

    .line 1278
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    return v6

    .line 1287
    .end local v3    # "msg":Landroid/os/Message;
    :cond_c
    const/16 v1, 0x9

    .line 1289
    .restart local v1    # "event":I
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1290
    return v6

    .line 1250
    .end local v1    # "event":I
    .end local v4    # "premiumSmsPermission":I
    :cond_d
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method protected getCarrierAppPackageName()Ljava/lang/String;
    .locals 6

    .line 1965
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 1966
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_0

    .line 1967
    const/4 v1, 0x0

    return-object v1

    .line 1970
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1971
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 1972
    .local v1, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1973
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1977
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/CarrierSmsUtils;->getCarrierImsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 15
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "expectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .line 1811
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 15
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "expectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "persistMessage"    # Z
    .param p10, "priority"    # I
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZII)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .line 1821
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 27
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p9, "expectMore"    # Z
    .param p10, "fullMessageText"    # Ljava/lang/String;
    .param p11, "isText"    # Z
    .param p12, "persistMessage"    # Z
    .param p13, "priority"    # I
    .param p14, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZII)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .line 1781
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1782
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1785
    .local v2, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    .line 1786
    .local v23, "userId":I
    const/4 v3, 0x0

    .line 1797
    .local v3, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v24

    .line 1801
    .end local v3    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v24, "appInfo":Landroid/content/pm/PackageInfo;
    const-string v3, "destAddr"

    move-object/from16 v15, p1

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1802
    .local v25, "destAddr":Ljava/lang/String;
    new-instance v26, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v16

    const/16 v22, 0x0

    move-object/from16 v3, v26

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, v23

    move/from16 v20, p13

    move/from16 v21, p14

    invoke-direct/range {v3 .. v22}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIILcom/android/internal/telephony/SMSDispatcher$1;)V

    .line 1802
    return-object v26
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1840
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    const-string v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    const-string v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1829
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    return-object v0
.end method

.method protected getSubId()I
    .locals 2

    .line 1982
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method protected abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 17
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    .line 1364
    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    return-void

    .line 1369
    :cond_0
    if-eqz p1, :cond_1

    .line 1370
    const v3, 0x1040603

    .local v3, "detailsId":I
    goto :goto_0

    .line 1372
    .end local v3    # "detailsId":I
    :cond_1
    const v3, 0x1040609

    .line 1375
    .restart local v3    # "detailsId":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1376
    .local v4, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 1377
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x1040607

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 1380
    .local v6, "messageText":Landroid/text/Spanned;
    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1382
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x10900fa

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1385
    .local v9, "layout":Landroid/view/View;
    new-instance v10, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v11, 0x102040e

    .line 1386
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-direct {v10, v0, v1, v11, v8}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    move-object v8, v10

    .line 1390
    .local v8, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v10, 0x1020409

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1391
    .local v10, "messageView":Landroid/widget/TextView;
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    const v11, 0x102040a

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1395
    .local v11, "detailsLayout":Landroid/view/ViewGroup;
    const v12, 0x102040b

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1397
    .local v12, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1399
    const v13, 0x102040c

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1401
    .local v13, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v13, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1403
    new-instance v14, Landroid/app/AlertDialog$Builder;

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1404
    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040604

    .line 1405
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040606

    .line 1406
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1407
    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1408
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 1410
    .local v14, "d":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v0, 0x7d3

    invoke-virtual {v15, v0}, Landroid/view/Window;->setType(I)V

    .line 1411
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 1413
    const/4 v0, -0x1

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1414
    const/4 v0, -0x2

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    .line 1415
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 350
    :pswitch_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 346
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    .line 347
    goto/16 :goto_3

    .line 299
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 300
    goto/16 :goto_3

    .line 295
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 296
    goto/16 :goto_3

    .line 321
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 322
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 323
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 326
    const-string v1, "SMSDispatcher"

    const-string v3, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NEVER_ALLOWED error code."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 331
    const-string v1, "SMSDispatcher"

    const-string v3, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NOT_ALLOWED error code."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2

    .line 335
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 336
    const-string v1, "SMSDispatcher"

    const-string v3, "SMSDispatcher: EVENT_STOP_SENDING - sending LIMIT_EXCEEDED error code."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_2
    const-string v1, "SMSDispatcher"

    const-string v3, "SMSDispatcher: EVENT_STOP_SENDING - unexpected cases."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 342
    goto :goto_3

    .line 304
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 305
    .restart local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 308
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-le v3, v2, :cond_4

    .line 309
    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    goto :goto_1

    .line 311
    :cond_4
    iput-boolean v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 313
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 315
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 316
    goto :goto_3

    .line 291
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 292
    goto :goto_3

    .line 286
    :pswitch_7
    const-string v0, "SMSDispatcher"

    const-string v1, "SMS retry.."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 288
    goto :goto_3

    .line 282
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    .line 283
    nop

    .line 352
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1333
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    return-void

    .line 1337
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1338
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1339
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x10405fe

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 1342
    .local v2, "messageText":Landroid/text/Spanned;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5, v3}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    move-object v3, v4

    .line 1345
    .local v3, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040600

    .line 1346
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x108008a

    .line 1347
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1348
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040601

    .line 1349
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10405ff

    .line 1350
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1351
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1352
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1354
    .local v4, "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1355
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1356
    return-void
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 660
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 661
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 663
    .local v1, "sentIntent":Landroid/app/PendingIntent;
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SmsResponse;

    iget v2, v2, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    goto :goto_0

    .line 666
    :cond_0
    const-string v2, "SMSDispatcher"

    const-string v3, "SmsResponse was null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 672
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 680
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 682
    .local v2, "ss":I
    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    const/4 v4, 0x3

    if-lez v3, :cond_3

    if-eqz v2, :cond_3

    .line 686
    iput v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 688
    const-string v3, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mRetryCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mImsRetry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mMessageRef="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " SS= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 693
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 688
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    .line 698
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_1

    .line 699
    :cond_4
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v5, :cond_5

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v3, v4, :cond_5

    .line 710
    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 711
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 712
    .local v3, "retryMsg":Landroid/os/Message;
    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 713
    .end local v3    # "retryMsg":Landroid/os/Message;
    goto :goto_1

    .line 714
    :cond_5
    const/4 v3, 0x0

    .line 715
    .local v3, "errorCode":I
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 716
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v3, v4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 718
    :cond_6
    const/4 v4, 0x1

    .line 719
    .local v4, "error":I
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_7

    .line 721
    const/4 v4, 0x6

    .line 723
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 726
    .end local v2    # "ss":I
    .end local v3    # "errorCode":I
    .end local v4    # "error":I
    :goto_1
    return-void
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 261
    const-string v0, "SMSDispatcher"

    const-string v1, "handleStatusReport() called with no subclass."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method protected isCdmaMo()Z
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    return v0
.end method

.method public isIms()Z
    .locals 2

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    return v0

    .line 1949
    :cond_0
    const-string v0, "SMSDispatcher"

    const-string v1, "mSmsDispatchersController  is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const/4 v0, 0x0

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    move-object v10, p0

    .line 790
    const/4 v11, 0x1

    if-eqz p6, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    move-object v0, v10

    move-object/from16 v1, p2

    move-object v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v12

    .line 792
    .local v12, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    if-eqz v12, :cond_2

    .line 793
    move-object v0, v10

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 794
    .local v13, "map":Ljava/util/HashMap;
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, v13

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 799
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {v10, v11, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 802
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v13    # "map":Ljava/util/HashMap;
    :cond_1
    nop

    .line 806
    move-object/from16 v0, p5

    goto :goto_1

    .line 803
    :cond_2
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 806
    :goto_1
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 30
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    .line 969
    invoke-direct {v15, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 970
    .local v16, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 971
    .local v11, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 972
    .local v8, "msgCount":I
    const/4 v0, 0x0

    .line 974
    .local v0, "encoding":I
    new-array v7, v8, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 975
    .local v7, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v6, 0x0

    move v5, v0

    move v0, v6

    .local v0, "i":I
    .local v5, "encoding":I
    :goto_0
    const/4 v4, 0x1

    if-ge v0, v8, :cond_2

    .line 976
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v15, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 977
    .local v1, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v2, :cond_1

    if-eqz v5, :cond_0

    if-ne v5, v4, :cond_1

    .line 980
    :cond_0
    iget v5, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 982
    :cond_1
    aput-object v1, v7, v0

    .line 975
    .end local v1    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    .end local v0    # "i":I
    :cond_2
    new-array v3, v8, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 988
    .local v3, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 989
    .local v9, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 991
    .local v10, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    move v0, v6

    .restart local v0    # "i":I
    :goto_1
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    if-ge v2, v8, :cond_7

    .line 992
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v1, v0

    .line 993
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v11, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 994
    add-int/lit8 v0, v2, 0x1

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 995
    iput v8, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1002
    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1003
    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1004
    .local v0, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1007
    if-ne v5, v4, :cond_3

    .line 1008
    aget-object v4, v7, v2

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1009
    aget-object v4, v7, v2

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1012
    :cond_3
    const/4 v4, 0x0

    .line 1013
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_4

    .line 1014
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/app/PendingIntent;

    .line 1017
    .end local v4    # "sentIntent":Landroid/app/PendingIntent;
    .local v19, "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v19, v4

    const/4 v4, 0x0

    .line 1018
    .local v4, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_5

    .line 1019
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/app/PendingIntent;

    .line 1022
    .end local v4    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v20, "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v20, v4

    .line 1023
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v6, v8, -0x1

    if-ne v2, v6, :cond_6

    const/16 v21, 0x1

    goto :goto_2

    :cond_6
    const/16 v21, 0x0

    :goto_2
    move-object/from16 v22, v0

    move-object v0, v15

    .end local v0    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .local v22, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v23, v1

    move-object/from16 v1, p1

    .end local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .local v23, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v24, v2

    move-object/from16 v2, p2

    .end local v2    # "i":I
    .local v24, "i":I
    move-object v6, v3

    move-object v3, v4

    .end local v3    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v6, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/16 v17, 0x1

    move-object/from16 v4, v22

    move/from16 v25, v5

    .end local v5    # "encoding":I
    .local v25, "encoding":I
    move-object/from16 v26, v6

    const/16 v18, 0x0

    move-object/from16 v6, v19

    .end local v6    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v26, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v27, v7

    move-object/from16 v7, v20

    .end local v7    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v27, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v28, v8

    move/from16 v8, v21

    .end local v8    # "msgCount":I
    .local v28, "msgCount":I
    move/from16 v21, v11

    move-object/from16 v11, p6

    .end local v11    # "refNumber":I
    .local v21, "refNumber":I
    move-object/from16 v12, v16

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v1, v26

    aput-object v0, v1, v24

    .line 1027
    .end local v26    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v1, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aget-object v0, v1, v24

    move/from16 v2, p8

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$302(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z

    .line 991
    .end local v19    # "sentIntent":Landroid/app/PendingIntent;
    .end local v20    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v22    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v23    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    add-int/lit8 v0, v24, 0x1

    .end local v24    # "i":I
    .local v0, "i":I
    move-object/from16 v15, p0

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object v3, v1

    move/from16 v4, v17

    move/from16 v6, v18

    move/from16 v11, v21

    move-object/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v14, p3

    goto/16 :goto_1

    .line 1030
    .end local v0    # "i":I
    .end local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v21    # "refNumber":I
    .end local v25    # "encoding":I
    .end local v27    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v28    # "msgCount":I
    .restart local v3    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v5    # "encoding":I
    .restart local v7    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v8    # "msgCount":I
    .restart local v11    # "refNumber":I
    :cond_7
    move/from16 v2, p8

    move-object v1, v3

    move/from16 v25, v5

    move/from16 v18, v6

    move-object/from16 v27, v7

    move/from16 v28, v8

    move/from16 v21, v11

    .end local v3    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v5    # "encoding":I
    .end local v7    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v8    # "msgCount":I
    .end local v11    # "refNumber":I
    .restart local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v21    # "refNumber":I
    .restart local v25    # "encoding":I
    .restart local v27    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v28    # "msgCount":I
    move-object/from16 v0, p3

    if-eqz v0, :cond_c

    array-length v3, v1

    if-eqz v3, :cond_c

    aget-object v3, v1, v18

    if-nez v3, :cond_8

    goto :goto_6

    .line 1036
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "carrierPackage":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 1038
    const-string v4, "SMSDispatcher"

    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1040
    .local v4, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    invoke-direct {v6, v5, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 1042
    .end local v4    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    goto :goto_5

    .line 1043
    :cond_9
    move-object/from16 v5, p0

    const-string v4, "SMSDispatcher"

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    array-length v4, v1

    move/from16 v6, v18

    :goto_3
    if-ge v6, v4, :cond_b

    aget-object v7, v1, v6

    .line 1045
    .local v7, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v7, :cond_a

    .line 1046
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_4

    .line 1048
    :cond_a
    const-string v8, "SMSDispatcher"

    const-string v11, "Null tracker."

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v7    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1052
    :cond_b
    :goto_5
    return-void

    .line 1032
    .end local v3    # "carrierPackage":Ljava/lang/String;
    :cond_c
    :goto_6
    move-object/from16 v5, p0

    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot send multipart text. parts="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " trackers="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void
.end method

.method public sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 9
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1135
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 1136
    .local v0, "map":Ljava/util/HashMap;
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1138
    .local v1, "pdu":[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1139
    const-string v2, "SMSDispatcher"

    const-string v4, "Device does not support sending sms."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {p1, v2, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1141
    return-void

    .line 1144
    :cond_0
    if-nez v1, :cond_1

    .line 1145
    const-string v2, "SMSDispatcher"

    const-string v4, "Empty PDU"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1147
    return-void

    .line 1151
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1152
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, "packageNames":[Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v4, :cond_4

    array-length v6, v4

    if-nez v6, :cond_2

    goto :goto_0

    .line 1165
    :cond_2
    :try_start_0
    aget-object v6, v4, v3

    const/16 v7, 0x40

    .line 1166
    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v8

    .line 1165
    invoke-virtual {v2, v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 1171
    .local v5, "appInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1170
    nop

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1206
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1207
    new-instance v6, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;-><init>(Landroid/content/Context;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1209
    :cond_3
    return-void

    .line 1167
    .end local v5    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 1168
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SMSDispatcher"

    const-string v8, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7, v5, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1170
    return-void

    .line 1156
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :goto_0
    const-string v6, "SMSDispatcher"

    const-string v7, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v5, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1158
    return-void
.end method

.method protected abstract sendRegisterData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZI)V
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1431
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1434
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is null. Retry failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :goto_0
    return-void
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->shouldBlockSmsForEcbm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "SMSDispatcher"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 643
    :goto_0
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 16
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I

    move-object/from16 v12, p0

    .line 857
    const-string v0, "SMSDispatcher"

    const-string v1, "sendText"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v13, 0x0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v6, p9

    move/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v14

    .line 860
    .local v14, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    if-eqz v14, :cond_2

    .line 861
    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    invoke-virtual {v12, v11, v10, v9, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v15

    .line 862
    .local v15, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object v0, v12

    move-object v1, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    move/from16 v6, p10

    move-object v7, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 866
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {v12, v13, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 869
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v15    # "map":Ljava/util/HashMap;
    :cond_1
    nop

    .line 873
    move-object/from16 v0, p4

    goto :goto_1

    .line 870
    :cond_2
    const-string v0, "SMSDispatcher"

    const-string v1, "SmsDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 873
    :goto_1
    return-void
.end method

.method protected abstract shouldBlockSmsForEcbm()Z
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active phone changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method
