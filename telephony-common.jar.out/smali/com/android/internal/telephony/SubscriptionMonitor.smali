.class public Lcom/android/internal/telephony/SubscriptionMonitor;
.super Ljava/lang/Object;
.source "SubscriptionMonitor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionMonitor"

.field private static final MAX_LOGLINES:I = 0x64

.field private static final VDBG:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDataPhoneId:I

.field private final mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

.field private mDefaultDataSubId:I

.field private final mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private final mPhoneSubId:[I

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$1;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$2;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    .line 100
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    .line 101
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 102
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    .line 103
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 4
    .param p1, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p4, "numPhones"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$1;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$2;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    .line 75
    new-array v0, p4, [Landroid/os/RegistrantList;

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    .line 76
    new-array v0, p4, [Landroid/os/RegistrantList;

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    .line 77
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    .line 82
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    aput-object v2, v1, v0

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    aput-object v2, v1, v0

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v2

    aput v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "phoneId":I
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SubscriptionMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 50
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method private invalidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 224
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 229
    const-string v0, "SubscriptionMonitor"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 213
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 214
    return-void

    .line 209
    .end local v0    # "r":Landroid/os/Registrant;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 196
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 197
    return-void

    .line 192
    .end local v0    # "r":Landroid/os/Registrant;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForDefaultDataSubscriptionChanged(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 221
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForSubscriptionChanged(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 204
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
