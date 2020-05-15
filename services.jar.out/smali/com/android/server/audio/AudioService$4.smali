.class Lcom/android/server/audio/AudioService$4;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 4023
    iput-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 17
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 4025
    move-object/from16 v3, p2

    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onServiceConnected(), profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    const/16 v0, 0xb

    const/4 v4, 0x0

    if-eq v2, v0, :cond_d

    const/16 v0, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v0, :cond_a

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 4031
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    .line 4032
    :try_start_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4033
    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$3902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 4034
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 4035
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 4036
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 4037
    .local v9, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    .line 4038
    .local v15, "state":I
    if-ne v15, v5, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    move v5, v6

    .line 4039
    .local v5, "intState":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v10, 0x80

    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    .line 4042
    .local v16, "delay":I
    if-nez v9, :cond_1

    const-string/jumbo v4, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 4043
    .local v4, "addr":Ljava/lang/String;
    :goto_1
    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v6

    new-instance v10, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "A2DP service connected: device addr="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 4046
    iget-object v10, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x66

    const/4 v14, -0x1

    move v13, v15

    move v6, v15

    move-object v15, v9

    .line 4046
    .end local v15    # "state":I
    .local v6, "state":I
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4053
    .end local v4    # "addr":Ljava/lang/String;
    .end local v5    # "intState":I
    .end local v6    # "state":I
    .end local v9    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "delay":I
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4054
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4055
    goto/16 :goto_4

    .line 4053
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4054
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 4074
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 4076
    :try_start_5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 4077
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    move-object v8, v3

    check-cast v8, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$3302(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 4078
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 4080
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)V

    .line 4081
    const-string v0, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In HEADSET profile, mScoAudioState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mScoAudioMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 4082
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4081
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v8, 0x4

    if-eq v0, v6, :cond_3

    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 4085
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 4086
    :cond_3
    const/4 v0, 0x0

    .line 4087
    .local v0, "status":Z
    iget-object v9, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 4089
    iget-object v9, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v10, Ljava/lang/Integer;

    iget-object v11, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 4090
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bluetooth_sco_channel_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 4092
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4089
    invoke-static {v11, v12, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 4094
    iget-object v9, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v9

    if-gt v9, v5, :cond_4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-gez v5, :cond_5

    .line 4095
    :cond_4
    const-string v5, "AudioService"

    const-string v9, "Resetting the mScoAudioMode to SCO_MODE_VIRTUAL_CALL"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 4099
    :cond_5
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_7

    if-eq v5, v8, :cond_6

    goto :goto_2

    .line 4109
    :cond_6
    const-string v5, "AudioService"

    const-string v6, "In HEADSET profile, calling disconnectBluetoothScoAudioHelper()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 4111
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v8

    .line 4110
    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3600(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    .line 4112
    if-eqz v0, :cond_8

    .line 4113
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2

    .line 4101
    :cond_7
    const-string v5, "AudioService"

    const-string v6, "In HEADSET profile, calling connectBluetoothScoAudioHelper()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 4103
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v8

    .line 4102
    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3500(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    .line 4104
    if-eqz v0, :cond_8

    .line 4105
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 4118
    :cond_8
    :goto_2
    if-nez v0, :cond_9

    .line 4119
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 4120
    iget-object v5, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 4123
    .end local v0    # "status":Z
    :cond_9
    monitor-exit v7

    .line 4124
    goto/16 :goto_4

    .line 4123
    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 4127
    :cond_a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    .line 4128
    :try_start_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 4129
    :try_start_7
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4402(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 4130
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 4131
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    .line 4132
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 4133
    .restart local v9    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    .line 4134
    .restart local v15    # "state":I
    if-ne v15, v5, :cond_b

    goto :goto_3

    :cond_b
    move v6, v4

    :goto_3
    move v5, v6

    .line 4135
    .restart local v5    # "intState":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v10, 0x8000000

    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    .line 4138
    .restart local v16    # "delay":I
    iget-object v10, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x69

    const/4 v14, 0x0

    move v13, v15

    move v4, v15

    move-object v15, v9

    .line 4138
    .end local v15    # "state":I
    .local v4, "state":I
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4145
    .end local v4    # "state":I
    .end local v5    # "intState":I
    .end local v9    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "delay":I
    :cond_c
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4146
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 4148
    goto :goto_4

    .line 4145
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    .line 4146
    :catchall_4
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 4058
    :cond_d
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    .line 4059
    .local v5, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 4060
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 4061
    .local v4, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v13

    monitor-enter v13

    .line 4062
    :try_start_b
    invoke-interface {v3, v4}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 4063
    .local v9, "state":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0x65

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v11, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4069
    .end local v9    # "state":I
    monitor-exit v13

    goto :goto_4

    :catchall_5
    move-exception v0

    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    .line 4153
    .end local v4    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 4156
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4158
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    .line 4159
    goto :goto_0

    .line 4166
    :pswitch_1
    const-string v0, "AudioService"

    const-string v1, "In onServiceDisconnected(), calling disconnectHeadset()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    .line 4168
    goto :goto_0

    .line 4171
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    .line 4172
    goto :goto_0

    .line 4162
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    .line 4163
    nop

    .line 4177
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
