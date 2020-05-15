.class public Lcom/android/internal/telephony/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
    }
.end annotation


# static fields
.field protected static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x65

.field private static final EVENT_EMERGENCY_TOGGLE:I = 0x69

.field protected static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x6d

.field private static final EVENT_RELEASE_NETWORK:I = 0x68

.field private static final EVENT_REQUEST_NETWORK:I = 0x67

.field private static final EVENT_RESEND_DATA_ALLOWED:I = 0x6a

.field protected static final EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field protected static final EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED:I = 0x6c

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x6b

.field protected static final LOG_TAG:Ljava/lang/String; = "PhoneSwitcher"

.field private static final MAX_LOCAL_LOG_LINES:I = 0x1e

.field private static final REQUESTS_CHANGED:Z = true

.field protected static final REQUESTS_UNCHANGED:Z = false

.field protected static final VDBG:Z = true


# instance fields
.field protected final mActivePhoneRegistrants:[Landroid/os/RegistrantList;

.field protected final mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field protected mDefaultDataSubscription:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field protected mMaxActivePhones:I

.field protected final mNumPhones:I

.field protected final mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

.field protected final mPhoneSubscriptions:[I

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field protected final mPrioritizedDcRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/DcRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 112
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    .line 170
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 113
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 114
    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    .line 115
    iput-object p8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 116
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    .line 118
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    .line 120
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 122
    new-array v0, p2, [Landroid/os/RegistrantList;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    .line 123
    new-array v0, p2, [Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    .line 124
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    new-instance v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    invoke-direct {v3}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v3, v2, v1

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_1
    iput-object p7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 135
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 140
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 146
    .local v2, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 147
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 149
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 150
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 151
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 152
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 153
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 154
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 155
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 156
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 157
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 158
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 159
    new-instance v0, Landroid/net/MatchAllNetworkSpecifier;

    invoke-direct {v0}, Landroid/net/MatchAllNetworkSpecifier;-><init>()V

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;

    invoke-direct {v0, p5, p3, v2, p0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V

    .line 164
    .local v0, "networkFactory":Landroid/net/NetworkFactory;
    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 165
    invoke-virtual {v0}, Landroid/net/NetworkFactory;->register()V

    .line 167
    const-string v3, "PhoneSwitcher started"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    .line 170
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 100
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 101
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    .line 103
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 104
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    .line 106
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    .line 107
    return-void
.end method

.method private onReleaseNetwork(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 260
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    .line 262
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    const-string v2, "netReleased"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method private onRequestNetwork(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 251
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    .line 252
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 255
    const/4 v1, 0x1

    const-string v2, "netRequest"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method private validatePhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 435
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge p1, v0, :cond_0

    .line 438
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected activate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 359
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 360
    :cond_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 364
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-le v1, v2, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 368
    return-void
.end method

.method protected deactivate(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 346
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_0

    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 351
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 352
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 355
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 447
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "PhoneSwitcher:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 449
    .local v1, "c":Ljava/util/Calendar;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v3, v4, :cond_1

    .line 450
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v4, v4, v3

    .line 451
    .local v4, "ps":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-wide v5, v4, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", lastRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-wide v6, v4, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-string v6, "never"

    goto :goto_1

    .line 454
    :cond_0
    const-string v6, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    const/4 v8, 0x5

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 452
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 449
    .end local v4    # "ps":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 459
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onResendDataAllowed(Landroid/os/Message;)V

    goto :goto_0

    .line 207
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "emergencyToggle"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 208
    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onReleaseNetwork(Landroid/net/NetworkRequest;)V

    .line 204
    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onRequestNetwork(Landroid/net/NetworkRequest;)V

    .line 200
    goto :goto_0

    .line 191
    :pswitch_4
    const-string v0, "subChanged"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 192
    goto :goto_0

    .line 195
    :pswitch_5
    const-string v0, "defaultChanged"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 196
    nop

    .line 215
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isEmergency()Z
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 219
    .local v4, "p":Lcom/android/internal/telephony/Phone;
    if-nez v4, :cond_0

    .end local v4    # "p":Lcom/android/internal/telephony/Phone;
    goto :goto_1

    .line 220
    .restart local v4    # "p":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 218
    .end local v4    # "p":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .restart local v4    # "p":Lcom/android/internal/telephony/Phone;
    :cond_2
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 222
    .end local v4    # "p":Lcom/android/internal/telephony/Phone;
    :cond_3
    return v2
.end method

.method public isPhoneActive(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    .line 441
    const-string v0, "PhoneSwitcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)V
    .locals 10
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "onEvalute aborted due to Emergency"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 282
    return-void

    .line 285
    :cond_0
    move v1, p1

    .line 286
    .local v1, "diffDetected":Z
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 287
    .local v2, "dataSub":I
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    if-eq v2, v3, :cond_1

    .line 288
    const-string v3, " default "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    .line 290
    const/4 v1, 0x1

    .line 294
    :cond_1
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "diffDetected":Z
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v5, :cond_3

    .line 295
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 296
    .local v5, "sub":I
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v1

    if-eq v5, v6, :cond_2

    .line 297
    const-string v6, " phone["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    const-string v6, "->"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aput v5, v6, v1

    .line 300
    const/4 v4, 0x1

    .line 294
    .end local v5    # "sub":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_3
    if-eqz v4, :cond_c

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evaluating due to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v1, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 310
    .local v6, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v7

    .line 311
    .local v7, "phoneIdForRequest":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .end local v6    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v7    # "phoneIdForRequest":I
    goto :goto_1

    .line 312
    .restart local v6    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .restart local v7    # "phoneIdForRequest":I
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .end local v6    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v7    # "phoneIdForRequest":I
    goto :goto_1

    .line 313
    .restart local v6    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .restart local v7    # "phoneIdForRequest":I
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-lt v8, v9, :cond_6

    goto :goto_2

    .line 315
    .end local v6    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v7    # "phoneIdForRequest":I
    :cond_6
    goto :goto_1

    .line 318
    :cond_7
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 319
    move v5, v3

    .local v5, "i":I
    :goto_3
    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v5, v6, :cond_8

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " phone["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] using sub["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 322
    .end local v5    # "i":I
    :cond_8
    const-string v5, " newActivePhones:"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 323
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "i":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .end local v6    # "i":Ljava/lang/Integer;
    goto :goto_4

    .line 326
    :cond_9
    nop

    .local v3, "phoneId":I
    :goto_5
    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v3, v5, :cond_b

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 328
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->deactivate(I)V

    .line 326
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 333
    .end local v3    # "phoneId":I
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 334
    .local v5, "phoneId":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->activate(I)V

    .line 335
    .end local v5    # "phoneId":I
    goto :goto_6

    .line 337
    .end local v1    # "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    return-void
.end method

.method protected onResendDataAllowed(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 380
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 382
    .local v0, "phoneId":I
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 385
    :cond_0
    return-void
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .locals 6
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;

    .line 388
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 391
    .local v0, "specifier":Landroid/net/NetworkSpecifier;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 392
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    .local v2, "subId":I
    goto :goto_1

    .line 393
    .end local v2    # "subId":I
    :cond_0
    instance-of v2, v0, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_1

    .line 395
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v2, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "subId":I
    goto :goto_0

    .line 396
    .end local v2    # "subId":I
    :catch_0
    move-exception v2

    .line 397
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "PhoneSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v0

    check-cast v5, Landroid/net/StringNetworkSpecifier;

    iget-object v5, v5, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v2, -0x1

    .line 400
    .local v2, "subId":I
    :goto_0
    goto :goto_1

    .line 402
    .end local v2    # "subId":I
    :cond_1
    move v2, v1

    .line 405
    .restart local v2    # "subId":I
    :goto_1
    const/4 v3, -0x1

    .line 406
    .local v3, "phoneId":I
    if-ne v2, v1, :cond_2

    return v3

    .line 408
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v4, :cond_4

    .line 409
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v4, v4, v1

    if-ne v4, v2, :cond_3

    .line 410
    move v3, v1

    .line 411
    goto :goto_3

    .line 408
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 414
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return v3
.end method

.method public registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 424
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 426
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 427
    return-void
.end method

.method public resendDataAllowed(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 373
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 374
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 376
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    return-void
.end method

.method public unregisterForActivePhoneSwitch(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .line 430
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 432
    return-void
.end method
