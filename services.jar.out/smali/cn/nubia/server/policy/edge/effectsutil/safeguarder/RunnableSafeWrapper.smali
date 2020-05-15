.class public Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;
.super Ljava/lang/Object;
.source "RunnableSafeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBase:Ljava/lang/Runnable;

.field private final mGuarder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Runnable;
    .param p2, "guarder"    # Landroid/os/Handler;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mBase:Ljava/lang/Runnable;

    .line 15
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mGuarder:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 21
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mBase:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
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

    .line 24
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mGuarder:Landroid/os/Handler;

    const v2, 0x50001

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 25
    .local v1, "messgae":Landroid/os/Message;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mGuarder:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "messgae":Landroid/os/Message;
    :goto_0
    return-void
.end method
