.class public abstract Landroid/telecom/CallScreeningService;
.super Landroid/app/Service;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$CallResponse;,
        Landroid/telecom/CallScreeningService$CallScreeningBinder;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_CALL:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallScreeningService"


# instance fields
.field private mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 194
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/telecom/CallScreeningService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$1;-><init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method static synthetic access$002(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)Lcom/android/internal/telecom/ICallScreeningAdapter;
    .locals 0
    .param p0, "x0"    # Landroid/telecom/CallScreeningService;
    .param p1, "x1"    # Lcom/android/internal/telecom/ICallScreeningAdapter;

    .line 49
    iput-object p1, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-object p1
.end method

.method static synthetic access$100(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/CallScreeningService;

    .line 49
    iget-object v0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 199
    const-string/jumbo v0, "onBind"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Landroid/telecom/CallScreeningService$CallScreeningBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService$1;)V

    return-object v0
.end method

.method public abstract onScreenCall(Landroid/telecom/Call$Details;)V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 205
    const-string/jumbo v0, "onUnbind"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return v1
.end method

.method public final respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V
    .locals 5
    .param p1, "callDetails"    # Landroid/telecom/Call$Details;
    .param p2, "response"    # Landroid/telecom/CallScreeningService$CallResponse;

    .line 227
    :try_start_0
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getDisallowCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    .line 229
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getRejectCall()Z

    move-result v2

    .line 231
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getSkipCallLog()Z

    move-result v3

    .line 232
    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getSkipNotification()Z

    move-result v4

    .line 228
    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/ICallScreeningAdapter;->disallowCall(Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ICallScreeningAdapter;->allowCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 238
    :goto_1
    return-void
.end method
