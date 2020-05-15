.class final Landroid/app/AlarmManager$ListenerWrapper;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenerWrapper"
.end annotation


# instance fields
.field mCompletion:Landroid/app/IAlarmCompleteListener;

.field mHandler:Landroid/os/Handler;

.field final mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field final synthetic this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AlarmManager;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 204
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    .line 205
    iput-object p2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 206
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-static {v0}, Landroid/app/AlarmManager;->access$000(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 219
    const-class v0, Landroid/app/AlarmManager;

    monitor-enter v0

    .line 220
    :try_start_1
    invoke-static {}, Landroid/app/AlarmManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Landroid/app/AlarmManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 3
    .param p1, "alarmManager"    # Landroid/app/IAlarmCompleteListener;

    .line 228
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    .line 232
    const-class v0, Landroid/app/AlarmManager;

    monitor-enter v0

    .line 233
    :try_start_0
    invoke-static {}, Landroid/app/AlarmManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {}, Landroid/app/AlarmManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void

    .line 236
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {v0}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v0, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmManager"

    const-string v2, "Unable to report completion to Alarm Manager!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 256
    :goto_0
    return-void

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    :try_start_2
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    goto :goto_1

    .line 252
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AlarmManager"

    const-string v3, "Unable to report completion to Alarm Manager!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    throw v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 209
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 210
    return-void
.end method
