.class public Lcom/android/internal/telephony/SimActivationTracker;
.super Ljava/lang/Object;
.source "SimActivationTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SAT"

.field private static final VDBG:Z


# instance fields
.field private mDataActivationState:I

.field private final mDataActivationStateLog:Landroid/util/LocalLog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVoiceActivationState:I

.field private final mVoiceActivationStateLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "SAT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SimActivationTracker;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Landroid/util/LocalLog;

    .line 69
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Landroid/util/LocalLog;

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    .line 75
    iput v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    .line 77
    new-instance v0, Lcom/android/internal/telephony/SimActivationTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SimActivationTracker$1;-><init>(Lcom/android/internal/telephony/SimActivationTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/SimActivationTracker;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SimActivationTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static isValidActivationState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 126
    packed-switch p0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 132
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 156
    const-string v0, "SAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 160
    const-string v0, "SAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 151
    const-string v0, "invalid"

    return-object v0

    .line 149
    :pswitch_0
    const-string v0, "restricted"

    return-object v0

    .line 147
    :pswitch_1
    const-string v0, "deactivated"

    return-object v0

    .line 145
    :pswitch_2
    const-string v0, "activated"

    return-object v0

    .line 143
    :pswitch_3
    const-string v0, "activating"

    return-object v0

    .line 141
    :pswitch_4
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 165
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, " mVoiceActivationState Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 170
    const-string v1, " mDataActivationState Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 174
    return-void
.end method

.method public getDataActivationState()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    return v0
.end method

.method public getVoiceActivationState()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    return v0
.end method

.method public setDataActivationState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 108
    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->isValidActivationState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataActivationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    .line 112
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Landroid/util/LocalLog;

    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyDataActivationStateChanged(I)V

    .line 115
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid data activation state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVoiceActivationState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 98
    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->isValidActivationState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceActivationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    .line 102
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Landroid/util/LocalLog;

    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyVoiceActivationStateChanged(I)V

    .line 105
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid voice activation state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
