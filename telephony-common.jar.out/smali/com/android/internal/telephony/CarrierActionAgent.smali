.class public Lcom/android/internal/telephony/CarrierActionAgent;
.super Landroid/os/Handler;
.source "CarrierActionAgent.java"


# static fields
.field public static final CARRIER_ACTION_REPORT_DEFAULT_NETWORK_STATUS:I = 0x3

.field public static final CARRIER_ACTION_RESET:I = 0x2

.field public static final CARRIER_ACTION_SET_METERED_APNS_ENABLED:I = 0x0

.field public static final CARRIER_ACTION_SET_RADIO_ENABLED:I = 0x1

.field private static final DBG:Z = true

.field public static final EVENT_APM_SETTINGS_CHANGED:I = 0x4

.field public static final EVENT_APN_SETTINGS_CHANGED:I = 0x8

.field public static final EVENT_DATA_ROAMING_OFF:I = 0x6

.field public static final EVENT_MOBILE_DATA_SETTINGS_CHANGED:I = 0x5

.field public static final EVENT_SIM_STATE_CHANGED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierActionAgent"

.field private static final VDBG:Z


# instance fields
.field private mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

.field private mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

.field private mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

.field private mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

.field private mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

.field private mMeteredApnEnabledLog:Landroid/util/LocalLog;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioEnableRegistrants:Landroid/os/RegistrantList;

.field private mRadioEnabledLog:Landroid/util/LocalLog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "CarrierActionAgent"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierActionAgent;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Landroid/util/LocalLog;

    .line 77
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Landroid/util/LocalLog;

    .line 78
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/CarrierActionAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierActionAgent$1;-><init>(Lcom/android/internal/telephony/CarrierActionAgent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 107
    const-string v0, "Creating CarrierActionAgent"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private getCarrierActionEnabled(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "action"    # I

    .line 249
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    return-object v0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRegistrantsFromAction(I)Landroid/os/RegistrantList;
    .locals 2
    .param p1, "action"    # I

    .line 235
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Landroid/os/RegistrantList;

    return-object v0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 300
    const-string v0, "CarrierActionAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 304
    const-string v0, "CarrierActionAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 308
    const-string v0, "CarrierActionAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method


# virtual methods
.method public carrierActionReportDefaultNetworkStatus(Z)V
    .locals 2
    .param p1, "report"    # Z

    .line 222
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    .line 223
    return-void
.end method

.method public carrierActionReset()V
    .locals 3

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReportDefaultNetworkStatus(Z)V

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetMeteredApnsEnabled(Z)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetRadioEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public carrierActionSetMeteredApnsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 215
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method public carrierActionSetRadioEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 313
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, " mCarrierActionOnMeteredApnsEnabled Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 318
    const-string v1, " mCarrierActionOnRadioEnabled Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 323
    const-string v1, " mCarrierActionReportDefaultNetworkStatus Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 327
    return-void
.end method

.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->getCarrierActionEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    .line 115
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown carrier action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :pswitch_0
    const-string v1, "EVENT_APN_SETTINGS_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 198
    goto/16 :goto_0

    .line 162
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 163
    return-void

    .line 166
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "iccState":Ljava/lang/String;
    const-string v4, "LOADED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIM_STATE_CHANGED status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 170
    const-string v4, "mobile_data"

    .line 171
    .local v4, "mobileData":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v6, "airplane_mode_on"

    .line 177
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x4

    .line 176
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 182
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, p0, v6, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 185
    .end local v4    # "mobileData":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SIM_STATE_CHANGED status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 189
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 156
    .end local v1    # "iccState":Ljava/lang/String;
    :pswitch_2
    const-string v1, "EVENT_DATA_ROAMING_OFF"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 159
    goto/16 :goto_0

    .line 152
    :pswitch_3
    const-string v1, "EVENT_MOBILE_DATA_SETTINGS_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_0

    .line 145
    :pswitch_4
    const-string v1, "EVENT_APM_SETTINGS_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_0

    .line 132
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CARRIER_ACTION_REPORT_AT_DEFAULT_NETWORK_STATUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REGISTER_DEFAULT_NETWORK_STATUS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 139
    goto/16 :goto_0

    .line 141
    :pswitch_6
    const-string v1, "CARRIER_ACTION_RESET"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 143
    goto/16 :goto_0

    .line 125
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_RADIO_ENABLED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET_RADIO_ENABLED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 130
    goto :goto_0

    .line 117
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_METERED_APNS_ENABLED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET_METERED_APNS_ENABLED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 123
    nop

    .line 202
    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "notifyNow"    # Z

    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->getCarrierActionEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 271
    .local v0, "carrierAction":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->getRegistrantsFromAction(I)Landroid/os/RegistrantList;

    move-result-object v1

    .line 275
    .local v1, "list":Landroid/os/RegistrantList;
    new-instance v2, Landroid/os/Registrant;

    invoke-direct {v2, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 276
    .local v2, "r":Landroid/os/Registrant;
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 277
    if-eqz p5, :cond_0

    .line 278
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 280
    :cond_0
    return-void

    .line 272
    .end local v1    # "list":Landroid/os/RegistrantList;
    .end local v2    # "r":Landroid/os/Registrant;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid carrier action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterForCarrierAction(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "action"    # I

    .line 287
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CarrierActionAgent;->getRegistrantsFromAction(I)Landroid/os/RegistrantList;

    move-result-object v0

    .line 288
    .local v0, "list":Landroid/os/RegistrantList;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 292
    return-void

    .line 289
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid carrier action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
