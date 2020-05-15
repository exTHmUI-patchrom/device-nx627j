.class public final Landroid/app/timezone/RulesManager;
.super Ljava/lang/Object;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesManager$CallbackWrapper;,
        Landroid/app/timezone/RulesManager$ResultCode;
    }
.end annotation


# static fields
.field public static final ACTION_RULES_UPDATE_OPERATION:Ljava/lang/String; = "com.android.intent.action.timezone.RULES_UPDATE_OPERATION"

.field private static final DEBUG:Z = false

.field public static final ERROR_OPERATION_IN_PROGRESS:I = 0x1

.field public static final ERROR_UNKNOWN_FAILURE:I = 0x2

.field public static final EXTRA_OPERATION_STAGED:Ljava/lang/String; = "staged"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIRulesManager:Landroid/app/timezone/IRulesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo v0, "timezone"

    .line 118
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/app/timezone/IRulesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 119
    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public getRulesState()Landroid/app/timezone/RulesState;
    .locals 3

    .line 132
    :try_start_0
    const-string/jumbo v0, "mIRulesManager.getRulesState()"

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v0}, Landroid/app/timezone/IRulesManager;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v0

    .line 134
    .local v0, "rulesState":Landroid/app/timezone/RulesState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIRulesManager.getRulesState() returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-object v0

    .line 136
    .end local v0    # "rulesState":Landroid/app/timezone/RulesState;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/Callback;)I
    .locals 3
    .param p1, "distroFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "checkToken"    # [B
    .param p3, "callback"    # Landroid/app/timezone/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    .line 158
    .local v0, "iCallback":Landroid/app/timezone/ICallback;
    :try_start_0
    const-string/jumbo v1, "mIRulesManager.requestInstall()"

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/timezone/IRulesManager;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestNothing([BZ)V
    .locals 2
    .param p1, "checkToken"    # [B
    .param p2, "succeeded"    # Z

    .line 223
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIRulesManager.requestNothing() with token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v0, p1, p2}, Landroid/app/timezone/IRulesManager;->requestNothing([BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 228
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestUninstall([BLandroid/app/timezone/Callback;)I
    .locals 3
    .param p1, "checkToken"    # [B
    .param p2, "callback"    # Landroid/app/timezone/Callback;

    .line 176
    new-instance v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    .line 178
    .local v0, "iCallback":Landroid/app/timezone/ICallback;
    :try_start_0
    const-string/jumbo v1, "mIRulesManager.requestUninstall()"

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v1, p1, v0}, Landroid/app/timezone/IRulesManager;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
