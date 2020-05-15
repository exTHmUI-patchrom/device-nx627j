.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$StartListeningArgs;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_RESET:I = 0x4

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private mCurrentCallback:Landroid/speech/RecognitionService$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 76
    new-instance v0, Landroid/speech/RecognitionService$1;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/speech/IRecognitionListener;
    .param p3, "x3"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/speech/IRecognitionListener;

    .line 39
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/speech/IRecognitionListener;

    .line 39
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$300(Landroid/speech/RecognitionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/RecognitionService;

    .line 39
    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    return-void
.end method

.method static synthetic access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/speech/RecognitionService;

    .line 39
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/speech/IRecognitionListener;

    .line 39
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z

    move-result v0

    return v0
.end method

.method private checkPermissions(Landroid/speech/IRecognitionListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 177
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    :try_start_0
    const-string v0, "RecognitionService"

    const-string v1, "call for recognition service without RECORD_AUDIO permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "sending ERROR_INSUFFICIENT_PERMISSIONS message failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 141
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->access$600(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 144
    const-string v0, "RecognitionService"

    const-string v1, "cancel called by client who did not call startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 150
    :goto_0
    return-void
.end method

.method private dispatchClearCallback()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 154
    return-void
.end method

.method private dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "callingUid"    # I

    .line 99
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v0, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/speech/RecognitionService$2;

    invoke-direct {v1, p0, p2}, Landroid/speech/RecognitionService$2;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    new-instance v0, Landroid/speech/RecognitionService$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;ILandroid/speech/RecognitionService$1;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 113
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, p1, v0}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RecognitionService"

    const-string v2, "dead listener on startListening"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 116
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, 0x8

    :try_start_1
    invoke-interface {p2, v0}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "onError call from startListening failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v0, "RecognitionService"

    const-string v1, "concurrent startListening received - ignoring this call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_1
    return-void
.end method

.method private dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 128
    const-string v0, "RecognitionService"

    const-string/jumbo v1, "stopListening called with no preceding startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->access$600(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 130
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 131
    const-string v0, "RecognitionService"

    const-string/jumbo v1, "stopListening called by other caller than startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "onError call from stopListening failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    return-object v0
.end method

.method protected abstract onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public onDestroy()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 222
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    .line 223
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 224
    return-void
.end method

.method protected abstract onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method
