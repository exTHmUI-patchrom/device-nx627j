.class public Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;
.super Landroid/os/Handler;
.source "GuardHandler.java"


# instance fields
.field private mExceptionListener:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 13
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    return-void
.end method

.method private handleMessageInner(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50001

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->mExceptionListener:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;->onCaughtException()V

    .line 33
    nop

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In GuardHandler we got unhandled msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 23
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->handleMessageInner(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FitAnim"

    const-string v2, "We catched exception when reseting state machine.It won\'t work anymore."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setExceptionListner(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;)V
    .locals 0
    .param p1, "exceptionListener"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;

    .line 17
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->mExceptionListener:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;

    .line 18
    return-void
.end method
