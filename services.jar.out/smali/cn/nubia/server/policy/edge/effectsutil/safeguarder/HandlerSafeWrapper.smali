.class public Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;
.super Landroid/os/Handler;
.source "HandlerSafeWrapper.java"


# instance fields
.field private final mBase:Landroid/os/Handler;

.field private final mGuarder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "base"    # Landroid/os/Handler;
    .param p2, "guarder"    # Landroid/os/Handler;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 15
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;->mBase:Landroid/os/Handler;

    .line 17
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;->mGuarder:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 23
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;->mBase:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FitAnimCrash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catched exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;->mGuarder:Landroid/os/Handler;

    const v2, 0x50001

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 27
    .local v1, "messgae":Landroid/os/Message;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;->mGuarder:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "messgae":Landroid/os/Message;
    :goto_0
    return-void
.end method
