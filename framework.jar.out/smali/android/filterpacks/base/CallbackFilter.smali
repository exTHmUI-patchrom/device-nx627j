.class public Landroid/filterpacks/base/CallbackFilter;
.super Landroid/filterfw/core/Filter;
.source "CallbackFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    }
.end annotation


# instance fields
.field private mCallbacksOnUiThread:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "callUiThread"
    .end annotation
.end field

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "listener"
    .end annotation
.end field

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUserData:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "userData"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 67
    return-void
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 75
    iget-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    .line 78
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 82
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 83
    .local v0, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    if-eqz v1, :cond_2

    .line 84
    iget-boolean v1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 86
    new-instance v7, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;

    iget-object v3, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v6, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;-><init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 87
    .local v1, "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    .end local v1    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    goto :goto_0

    .line 88
    .restart local v1    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to send callback to UI thread!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v1    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    :cond_1
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    invoke-interface {v1, p0, v0, v2}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CallbackFilter received frame, but no listener set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setupPorts()V
    .locals 1

    .line 71
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->addInputPort(Ljava/lang/String;)V

    .line 72
    return-void
.end method
