.class public Lcom/android/server/wifi/WifiShellCommand;
.super Landroid/os/ShellCommand;
.source "WifiShellCommand.java"


# instance fields
.field private final mPM:Landroid/content/pm/IPackageManager;

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wifi/WifiShellCommand;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 48
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    .line 49
    return-void
.end method

.method private checkRootPermission()V
    .locals 4

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 113
    .local v0, "uid":I
    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have access to wifi commands"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/android/server/wifi/WifiShellCommand;->checkRootPermission()V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6eee8858

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_4

    const v4, -0x4b91631a

    if-eq v3, v4, :cond_3

    const v4, -0x1c50aa6

    if-eq v3, v4, :cond_2

    const v4, 0x42ccb834

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "get-ipreach-disconnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_2

    :cond_2
    const-string v3, "set-poll-rssi-interval-msecs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const-string v3, "get-poll-rssi-interval-msecs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    const-string v3, "set-ipreach-disconnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_5

    .line 99
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiStateMachine.mPollRssiIntervalMsecs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiShellCommand;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 100
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getPollRssiIntervalMsecs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    return v6

    .line 81
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .local v2, "newPollIntervalMsecs":I
    nop

    .line 86
    nop

    .line 89
    if-ge v2, v5, :cond_6

    .line 90
    :try_start_2
    const-string v3, "Invalid argument to \'set-poll-rssi-interval-msecs\' - must be a positive integer"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    return v1

    .line 96
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiShellCommand;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->setPollRssiIntervalMsecs(I)V

    .line 97
    return v6

    .line 82
    .end local v2    # "newPollIntervalMsecs":I
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Invalid argument to \'set-poll-rssi-interval-msecs\' - must be a positive integer"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return v1

    .line 75
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPREACH_DISCONNECT state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiShellCommand;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 76
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getIpReachabilityDisconnectEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return v6

    .line 60
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "nextArg":Ljava/lang/String;
    const-string v3, "enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 62
    const/4 v3, 0x1

    .local v3, "enabled":Z
    :goto_3
    goto :goto_4

    .line 63
    .end local v3    # "enabled":Z
    :cond_7
    const-string v3, "disabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 64
    const/4 v3, 0x0

    goto :goto_3

    .line 69
    .restart local v3    # "enabled":Z
    :goto_4
    nop

    .line 71
    iget-object v4, p0, Lcom/android/server/wifi/WifiShellCommand;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->setIpReachabilityDisconnectEnabled(Z)V

    .line 72
    return v6

    .line 66
    .end local v3    # "enabled":Z
    :cond_8
    const-string v3, "Invalid argument to \'set-ipreach-disconnect\' - must be \'enabled\' or \'disabled\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    return v1

    .line 103
    .end local v2    # "nextArg":Ljava/lang/String;
    :goto_5
    return v2

    .line 105
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 124
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Wi-Fi (wifi) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v1, "  set-ipreach-disconnect enabled|disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v1, "    Sets whether CMD_IP_REACHABILITY_LOST events should trigger disconnects."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v1, "  get-ipreach-disconnect"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v1, "    Gets setting of CMD_IP_REACHABILITY_LOST events triggering disconnects."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v1, "  set-poll-rssi-interval-msecs <int>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v1, "    Sets the interval between RSSI polls to <int> milliseconds."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v1, "  get-poll-rssi-interval-msecs"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v1, "    Gets current interval between RSSI polls, in milliseconds."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 136
    return-void
.end method
