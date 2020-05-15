.class final Lcom/android/server/am/ActivityManagerService$DumpStackHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DumpStackHandler"
.end annotation


# static fields
.field static final APP_MEMORY_INFO_MSG:I = 0x138a

.field static final APP_NOT_RESPONDING_MSG:I = 0x1388

.field static final DUMPSYS_INFO_MSG:I = 0x1389

.field static final DUMP_BINDER_DEBUG_INFO:I = 0x138b


# instance fields
.field mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2195
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2196
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2194
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackHandler;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 2197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2227
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2222
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)V

    .line 2223
    goto :goto_0

    .line 2217
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    .line 2218
    goto :goto_0

    .line 2210
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2211
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 2213
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_0

    .line 2203
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;

    .line 2204
    .local v0, "parm":Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->parent:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->aboveSystem:Z

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->annotation:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->nubiaAppNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 2206
    .end local v0    # "parm":Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;
    nop

    .line 2229
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
