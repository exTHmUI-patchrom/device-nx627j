.class Lcom/qti/dpm/DpmService$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .line 435
    iput-object p1, p0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 437
    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 438
    const-string v2, "SERVICE"

    const-string v3, "received null intent"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void

    .line 442
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "action":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 444
    const-string v3, "SERVICE"

    const-string v4, "received null intent action"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void

    .line 447
    :cond_1
    const-string v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DPM received action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v5, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-boolean v5, v5, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    invoke-static {v3, v5}, Lcom/qti/dpm/DpmService;->access$500(Lcom/qti/dpm/DpmService;Z)V

    .line 451
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$602(Lcom/qti/dpm/DpmService;Z)Z

    goto/16 :goto_f

    .line 452
    :cond_2
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 453
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-boolean v4, v4, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$500(Lcom/qti/dpm/DpmService;Z)V

    .line 454
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3, v5}, Lcom/qti/dpm/DpmService;->access$602(Lcom/qti/dpm/DpmService;Z)Z

    goto/16 :goto_f

    .line 455
    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_e

    .line 466
    :cond_4
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 467
    const-string v3, "apnType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "apnType":Ljava/lang/String;
    const-string v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DPM received ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-nez v3, :cond_5

    .line 471
    const-string v4, "SERVICE"

    const-string v5, "DPM error getting apnType"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void

    .line 475
    :cond_5
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 477
    const-string v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "If apn type is default ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v4, v1}, Lcom/qti/dpm/DpmService;->access$1100(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 479
    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-virtual {v4}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v4

    .line 480
    .local v4, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v4, :cond_6

    .line 481
    iget-object v5, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v5, v4}, Lcom/qti/dpm/DpmService;->access$1200(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    .line 483
    .end local v4    # "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    :cond_6
    goto :goto_0

    .line 484
    :cond_7
    const-string v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DPM currently does not support this apnType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$1300(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v3    # "apnType":Ljava/lang/String;
    :goto_0
    goto/16 :goto_f

    :cond_8
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 487
    const-string v3, "availableArray"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 489
    .local v3, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "tetherArray"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 491
    .local v6, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "erroredArray"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 494
    .local v7, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "available = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " active = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " errored = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 494
    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v8, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    .line 498
    invoke-static {v8}, Lcom/qti/dpm/DpmService;->access$1400(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 499
    .local v8, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 500
    .local v9, "mWifiRegexs":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    .line 501
    .local v10, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 503
    .local v11, "mBluetoothRegexs":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 504
    .local v13, "o":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .line 505
    .local v14, "s":Ljava/lang/String;
    array-length v15, v9

    :goto_2
    if-ge v5, v15, :cond_a

    aget-object v4, v9, v5

    .line 506
    .local v4, "regex":Ljava/lang/String;
    invoke-virtual {v14, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 507
    move-object/from16 v17, v3

    const-string v3, "SERVICE"

    .end local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v4

    const-string v4, "wifi tethered"

    .end local v4    # "regex":Ljava/lang/String;
    .local v18, "regex":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1502(Lcom/qti/dpm/DpmService;Z)Z

    .end local v18    # "regex":Ljava/lang/String;
    goto :goto_3

    .line 505
    .end local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    const/4 v4, 0x1

    goto :goto_2

    .line 511
    .end local v13    # "o":Ljava/lang/Object;
    .end local v14    # "s":Ljava/lang/String;
    .end local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v17, v3

    .line 503
    .end local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_1

    .line 513
    .end local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v17, v3

    .end local v3    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 514
    .local v4, "ousb":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 515
    .local v5, "susb":Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_d

    aget-object v14, v10, v13

    .line 516
    .local v14, "regexusb":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 517
    const-string v15, "SERVICE"

    move-object/from16 v19, v3

    const-string v3, "usb tethered"

    invoke-static {v15, v3}, Lcom/qti/dpm/DpmService;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    const/4 v15, 0x1

    invoke-static {v3, v15}, Lcom/qti/dpm/DpmService;->access$1602(Lcom/qti/dpm/DpmService;Z)Z

    .end local v14    # "regexusb":Ljava/lang/String;
    goto :goto_6

    .line 515
    :cond_c
    move-object/from16 v19, v3

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    goto :goto_5

    .line 521
    .end local v4    # "ousb":Ljava/lang/Object;
    .end local v5    # "susb":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v3

    goto :goto_4

    .line 523
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 524
    .local v4, "obt":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 525
    .local v5, "sbt":Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_10

    aget-object v14, v11, v13

    .line 526
    .local v14, "regexbt":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 527
    const-string v15, "SERVICE"

    move-object/from16 v20, v3

    const-string v3, "bluetooth tethered"

    invoke-static {v15, v3}, Lcom/qti/dpm/DpmService;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    const/4 v15, 0x1

    invoke-static {v3, v15}, Lcom/qti/dpm/DpmService;->access$1702(Lcom/qti/dpm/DpmService;Z)Z

    .end local v14    # "regexbt":Ljava/lang/String;
    goto :goto_9

    .line 525
    :cond_f
    move-object/from16 v20, v3

    const/4 v15, 0x1

    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v20

    goto :goto_8

    .line 531
    .end local v4    # "obt":Ljava/lang/Object;
    .end local v5    # "sbt":Ljava/lang/String;
    :cond_10
    move-object/from16 v20, v3

    const/4 v15, 0x1

    goto :goto_7

    .line 533
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 534
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1502(Lcom/qti/dpm/DpmService;Z)Z

    .line 535
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1602(Lcom/qti/dpm/DpmService;Z)Z

    .line 536
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1702(Lcom/qti/dpm/DpmService;Z)Z

    .line 537
    const-string v3, "SERVICE"

    const-string v4, "Tethering disabled"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_12
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3}, Lcom/qti/dpm/DpmService;->access$1500(Lcom/qti/dpm/DpmService;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3}, Lcom/qti/dpm/DpmService;->access$1600(Lcom/qti/dpm/DpmService;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3}, Lcom/qti/dpm/DpmService;->access$1700(Lcom/qti/dpm/DpmService;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_a

    .line 543
    :cond_13
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-boolean v4, v4, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1800(Lcom/qti/dpm/DpmService;Z)V

    .end local v6    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "mCm":Landroid/net/ConnectivityManager;
    .end local v9    # "mWifiRegexs":[Ljava/lang/String;
    .end local v10    # "mUsbRegexs":[Ljava/lang/String;
    .end local v11    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_b

    .line 541
    .restart local v6    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "mCm":Landroid/net/ConnectivityManager;
    .restart local v9    # "mWifiRegexs":[Ljava/lang/String;
    .restart local v10    # "mUsbRegexs":[Ljava/lang/String;
    .restart local v11    # "mBluetoothRegexs":[Ljava/lang/String;
    .restart local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    :goto_a
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    iget-boolean v4, v4, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1800(Lcom/qti/dpm/DpmService;Z)V

    .line 545
    .end local v6    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "mCm":Landroid/net/ConnectivityManager;
    .end local v9    # "mWifiRegexs":[Ljava/lang/String;
    .end local v10    # "mUsbRegexs":[Ljava/lang/String;
    .end local v11    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v17    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    goto/16 :goto_f

    .line 546
    :cond_15
    move v15, v4

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 548
    const-string v3, "networkInfo"

    .line 549
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 550
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    .line 551
    invoke-static {v4}, Lcom/qti/dpm/DpmService;->access$1400(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 552
    .local v4, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 554
    const-string v5, "noConnectivity"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_17

    .line 555
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_c

    .line 561
    :cond_16
    goto :goto_d

    .line 557
    :cond_17
    :goto_c
    const/4 v5, 0x0

    .line 561
    .local v5, "networkState":Z
    move v15, v5

    .end local v5    # "networkState":Z
    .local v15, "networkState":Z
    :goto_d
    move v5, v15

    .line 563
    .end local v15    # "networkState":Z
    .restart local v5    # "networkState":Z
    iget-object v6, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v6, v5}, Lcom/qti/dpm/DpmService;->access$1900(Lcom/qti/dpm/DpmService;Z)V

    .line 565
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "connManager":Landroid/net/ConnectivityManager;
    .end local v5    # "networkState":Z
    goto :goto_f

    .line 567
    :cond_18
    const-string v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DPM received unexpected action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 457
    :cond_19
    :goto_e
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 458
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v3, v1}, Lcom/qti/dpm/DpmService;->access$800(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 459
    iget-object v3, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-virtual {v3}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v3

    .line 460
    .local v3, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v3, :cond_1a

    .line 461
    iget-object v4, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v4, v3}, Lcom/qti/dpm/DpmService;->access$900(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    .line 463
    .end local v3    # "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    :cond_1a
    goto :goto_f

    .line 464
    :cond_1b
    const-string v3, "SERVICE"

    const-string v4, "DPM received action Network State Changed, null WifiManager"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_f
    return-void
.end method
