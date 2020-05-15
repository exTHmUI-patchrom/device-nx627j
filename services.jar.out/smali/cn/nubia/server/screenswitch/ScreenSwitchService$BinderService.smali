.class final Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;
.super Lnubia/os/screenswitch/IScreenSwitchManager$Stub;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field private mScreenOnRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;-><init>()V

    .line 1113
    new-instance p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;

    invoke-direct {p1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$3;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;)V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->mScreenOnRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$1;

    .line 963
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    return-void
.end method

.method private updateHorizontalDetectorState(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1098
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/DaemonDetector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1101
    :cond_0
    if-nez p1, :cond_1

    .line 1102
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->mScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1103
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$2;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->mScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1111
    :goto_0
    return-void

    .line 1099
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ScreenSwitchService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1180
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    const-string v2, "debug"

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$602(Z)Z

    .line 1181
    if-eqz p3, :cond_2

    array-length v2, p3

    if-le v2, v1, :cond_2

    const-string/jumbo v2, "sensor"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    nop

    .line 1182
    .local v0, "debugSensor":Z
    :cond_2
    sput-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    .line 1183
    sput-boolean v0, Lcn/nubia/server/screenswitch/HorizontalDetector;->DEBUG:Z

    .line 1184
    sput-boolean v0, Lcn/nubia/server/screenswitch/DaemonDetector;->DEBUG:Z

    .line 1185
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/io/PrintWriter;)V

    .line 1186
    return-void
.end method

.method public getCurrentDisplayId()I
    .locals 1

    .line 1004
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    return v0
.end method

.method public noteScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1088
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteScreenState state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    if-nez p1, :cond_1

    .line 1090
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 1091
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postCloseDoubleFPAnim()V

    .line 1092
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3702(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1094
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->updateHorizontalDetectorState(I)V

    .line 1095
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1082
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteScreenStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7802(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1084
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7900(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)V

    .line 1085
    return-void
.end method

.method public notifyHeadsUpShowing(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 1175
    return-void
.end method

.method public registerStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    .locals 7
    .param p1, "listener"    # Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 1014
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1018
    :try_start_0
    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1019
    .local v1, "b":Landroid/os/IBinder;
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1020
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1021
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;

    .line 1022
    .local v5, "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    iget-object v6, v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v6, :cond_0

    .line 1023
    goto :goto_2

    .line 1020
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1026
    .end local v4    # "i":I
    .end local v5    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :cond_1
    new-instance v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    move-object v5, v4

    .line 1027
    .restart local v5    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    iput-object v1, v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->binder:Landroid/os/IBinder;

    .line 1028
    new-instance v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {v4, v6, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/IBinder;)V

    iput-object v4, v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    if-eqz v1, :cond_2

    .line 1031
    :try_start_1
    iget-object v4, v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    goto :goto_1

    .line 1032
    :catch_0
    move-exception v3

    .line 1033
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/IBinder;)V

    .line 1034
    monitor-exit v0

    return-void

    .line 1037
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "N":I
    :goto_2
    iput-object p1, v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 1040
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iput v1, v5, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callerUserId:I

    .line 1042
    .end local v5    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/screenswitch/IScreenSwitchCallback;
    .param p2, "mode"    # I

    .line 1124
    if-nez p2, :cond_0

    .line 1125
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1126
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1129
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1131
    :cond_2
    :goto_0
    return-void
.end method

.method public reportCallBackComplete(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    .locals 3
    .param p1, "callback"    # Lnubia/os/screenswitch/IScreenSwitchCallback;
    .param p2, "mode"    # I

    .line 1146
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportCallBackComplete id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenSwitchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 1148
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->updateResult(Landroid/os/IInterface;Z)V

    goto :goto_1

    .line 1149
    :cond_2
    if-ne p2, v0, :cond_3

    .line 1150
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->updateResult(Landroid/os/IInterface;Z)V

    goto :goto_1

    .line 1151
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 1152
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->updateResult(Landroid/os/IInterface;Z)V

    .line 1153
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1154
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1156
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1159
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1160
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1161
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1162
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1164
    :cond_5
    :goto_2
    return-void
.end method

.method public requestSwitchScreen(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 990
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 991
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 992
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchInterface;->getDisplayId()I

    move-result v0

    .line 993
    .local v0, "id":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 994
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1900(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    .line 996
    .end local v0    # "id":I
    :cond_0
    goto :goto_0

    .line 997
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postDisplayDialog(I)V

    .line 999
    :goto_0
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSwitchScreen eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void
.end method

.method public resetSkipSwitchTask()V
    .locals 2

    .line 1168
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1169
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 1170
    return-void
.end method

.method public setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V
    .locals 3
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1046
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->isSameBinder(Lnubia/os/screenswitch/IScreenDialogController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postDismissDialog(I)V

    .line 1050
    if-eqz p1, :cond_1

    .line 1053
    :try_start_0
    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenDialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;Lnubia/os/screenswitch/IScreenDialogController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1067
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->setController(Lnubia/os/screenswitch/IScreenDialogController;)V

    .line 1069
    return-void
.end method

.method public setDialogVisibilityChanged(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "visibility"    # I

    .line 1072
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4902(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1073
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v3

    invoke-static {v0, v3, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7700(Lcn/nubia/server/screenswitch/ScreenSwitchService;ZI)V

    .line 1074
    if-le p1, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1076
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Landroid/view/IApplicationToken;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 1078
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 1079
    :cond_2
    return-void
.end method

.method public switchScreen(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 968
    .local v0, "uid":I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 969
    .local v1, "aod":Z
    :goto_0
    and-int/lit8 v2, p1, -0x11

    and-int/lit8 v2, v2, -0x41

    .line 971
    .local v2, "target":I
    const-string v3, "ScreenSwitchService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchScreen displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 973
    const-string v3, "ScreenSwitchService"

    const-string v4, "disable switchScreen for aod when power on"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void

    .line 976
    :cond_1
    const/16 v3, 0x41

    if-ne p1, v3, :cond_2

    .line 977
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 979
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/screenswitch/SwitchInterface;->createRealTarget(I)I

    move-result v2

    .line 980
    new-instance v3, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const-string v5, "binder"

    invoke-direct {v3, v4, v2, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILjava/lang/String;)V

    .line 981
    .local v3, "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;
    invoke-static {v3, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->access$7002(Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;Z)Z

    .line 982
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 983
    const/16 v4, 0x3e8

    if-ne v4, v0, :cond_3

    .line 984
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 986
    :cond_3
    return-void
.end method

.method public unRegisterStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 1009
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/IBinder;)V

    .line 1010
    return-void
.end method

.method public unregisterSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/screenswitch/IScreenSwitchCallback;
    .param p2, "mode"    # I

    .line 1135
    if-nez p2, :cond_0

    .line 1136
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1137
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1139
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1140
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1142
    :cond_2
    :goto_0
    return-void
.end method
