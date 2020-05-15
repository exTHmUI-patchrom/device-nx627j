.class Landroid/app/timezone/RulesManager$CallbackWrapper;
.super Landroid/app/timezone/ICallback$Stub;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/RulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mCallback:Landroid/app/timezone/Callback;

.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/app/timezone/RulesManager;


# direct methods
.method constructor <init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/app/timezone/Callback;

    .line 194
    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->this$0:Landroid/app/timezone/RulesManager;

    invoke-direct {p0}, Landroid/app/timezone/ICallback$Stub;-><init>()V

    .line 195
    iput-object p3, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    .line 196
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 197
    return-void
.end method

.method public static synthetic lambda$onFinished$0(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V
    .locals 1
    .param p1, "status"    # I

    .line 203
    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    invoke-virtual {v0, p1}, Landroid/app/timezone/Callback;->onFinished(I)V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2
    .param p1, "status"    # I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCallback.onFinished(status), status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;

    invoke-direct {v1, p0, p1}, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;-><init>(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method
