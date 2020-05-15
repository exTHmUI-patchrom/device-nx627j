.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1141
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 1146
    return-void
.end method

.method public exit()V
    .locals 3

    .line 1150
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    const-string v1, "Scan was interrupted"

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$3800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->cleanup()V

    .line 1155
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1159
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1161
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 1210
    return v2

    .line 1205
    :sswitch_0
    const-string v1, "WifiScanningService"

    const-string v2, "WifiScanner background scan gave CMD_SCAN_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    const/4 v2, -0x1

    const-string v4, "Background Scan failed"

    invoke-static {v1, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$3800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    .line 1208
    goto/16 :goto_0

    .line 1201
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/net/wifi/WifiScanner$ScanData;

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$4100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1202
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$4300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1203
    goto/16 :goto_0

    .line 1167
    :sswitch_2
    return v2

    .line 1163
    :sswitch_3
    const-string v1, "WifiScanningService"

    const-string v2, "wifi driver loaded received while already loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return v3

    .line 1198
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$4200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Landroid/net/wifi/ScanResult;I)V

    .line 1199
    goto/16 :goto_0

    .line 1195
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$4100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1196
    goto :goto_0

    .line 1191
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$4100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1192
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    .line 1193
    goto :goto_0

    .line 1188
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$4000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    .line 1189
    goto :goto_0

    .line 1169
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementBackgroundScanCount()V

    .line 1170
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1171
    .local v1, "scanParams":Landroid/os/Bundle;
    const/4 v2, -0x3

    if-nez v1, :cond_0

    .line 1172
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v5, "params null"

    invoke-virtual {v4, p1, v2, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 1173
    return v3

    .line 1175
    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1176
    const-string v4, "ScanSettings"

    .line 1177
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1178
    .local v4, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const-string v5, "WorkSource"

    .line 1179
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 1180
    .local v5, "workSource":Landroid/os/WorkSource;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v0, v7, v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->access$3900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1181
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_0

    .line 1183
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v7, "bad request"

    invoke-virtual {v6, p1, v2, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 1185
    nop

    .line 1213
    .end local v1    # "scanParams":Landroid/os/Bundle;
    .end local v4    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v5    # "workSource":Landroid/os/WorkSource;
    :goto_0
    return v3

    :sswitch_data_0
    .sparse-switch
        0x27002 -> :sswitch_8
        0x27003 -> :sswitch_7
        0x27004 -> :sswitch_6
        0x27100 -> :sswitch_5
        0x27101 -> :sswitch_4
        0x27106 -> :sswitch_3
        0x27107 -> :sswitch_2
        0x27108 -> :sswitch_1
        0x2710a -> :sswitch_0
    .end sparse-switch
.end method
