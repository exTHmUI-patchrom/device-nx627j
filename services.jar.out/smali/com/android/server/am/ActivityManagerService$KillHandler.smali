.class final Lcom/android/server/am/ActivityManagerService$KillHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0

.field static final NOTIFY_TRIM_MEMORY_MSG:I = 0x1388


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2263
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$KillHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2264
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2265
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2269
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_0

    .line 2294
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2285
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IApplicationThread;

    .line 2286
    .local v0, "thread":Landroid/app/IApplicationThread;
    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2289
    .end local v0    # "thread":Landroid/app/IApplicationThread;
    goto :goto_0

    .line 2287
    :catch_0
    move-exception v0

    .line 2288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2291
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2272
    :cond_1
    const-string/jumbo v0, "killProcessGroup"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2274
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->unfreezeWhenKill(I)V

    .line 2276
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2279
    nop

    .line 2296
    :goto_0
    return-void
.end method
