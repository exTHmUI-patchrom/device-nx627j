.class public Lcn/nubia/server/DualAODScreenStateHelper;
.super Ljava/lang/Object;
.source "DualAODScreenStateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualAODScreenStateHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 55
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    .line 29
    return-void
.end method

.method private checkAODStartNow(I)Z
    .locals 14
    .param p1, "device"    # I

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 107
    .local v1, "hour":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 108
    .local v2, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 109
    .local v3, "second":I
    mul-int/lit8 v4, v1, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 113
    .local v4, "currentSecond":I
    const v5, 0x52571a0

    const v6, 0x1808580

    const v7, 0xea60

    if-nez p1, :cond_0

    .line 114
    iget-object v8, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "aod_main_switch_off_start_time"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    div-int/2addr v6, v7

    .line 115
    .local v6, "aodTimerStart":I
    iget-object v8, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "aod_main_switch_off_stop_time"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    div-int/2addr v5, v7

    .local v5, "aodTimerEnd":I
    goto :goto_0

    .line 117
    .end local v5    # "aodTimerEnd":I
    .end local v6    # "aodTimerStart":I
    :cond_0
    iget-object v8, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "aod_switch_off_start_time"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    div-int/2addr v6, v7

    .line 118
    .restart local v6    # "aodTimerStart":I
    iget-object v8, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "aod_switch_off_stop_time"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    div-int/2addr v5, v7

    .line 120
    .restart local v5    # "aodTimerEnd":I
    :goto_0
    mul-int/lit8 v7, v6, 0x3c

    .line 121
    .local v7, "startSecond":I
    mul-int/lit8 v8, v5, 0x3c

    .line 124
    .local v8, "endSecond":I
    const/4 v9, 0x0

    if-gt v7, v8, :cond_3

    .line 125
    if-gt v4, v7, :cond_1

    .line 126
    sub-int v10, v7, v4

    .local v10, "delaySecond":I
    :goto_1
    goto :goto_2

    .line 127
    .end local v10    # "delaySecond":I
    :cond_1
    if-ge v8, v4, :cond_2

    .line 128
    const v10, 0x15180

    add-int/2addr v10, v7

    sub-int/2addr v10, v4

    goto :goto_1

    .line 130
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 133
    :cond_3
    if-ge v4, v7, :cond_4

    if-lt v4, v8, :cond_4

    .line 134
    sub-int v10, v7, v4

    goto :goto_1

    .line 136
    :cond_4
    move v10, v9

    .line 139
    .restart local v10    # "delaySecond":I
    :goto_2
    const-string v11, "DualAODScreenStateHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentSecond="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " startSecond="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " endMinute="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " delaySecond="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez v10, :cond_5

    .line 142
    const/4 v9, 0x1

    return v9

    .line 144
    :cond_5
    return v9
.end method

.method private checkAODSwitch(I)Z
    .locals 4
    .param p1, "device"    # I

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 98
    iget-object v2, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "aod_main_display_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 100
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "aod_display_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0
.end method

.method private checkCloseLowPower()Z
    .locals 5

    .line 149
    iget-object v0, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 150
    .local v0, "batteryManager":Landroid/os/BatteryManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 151
    .local v1, "batteryLevel":I
    iget-object v2, p0, Lcn/nubia/server/DualAODScreenStateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "aod_close_on_low_power"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, "lowPower":I
    if-ne v2, v4, :cond_0

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 153
    return v4

    .line 155
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private writeAodNode(ZLjava/lang/String;)V
    .locals 7
    .param p1, "isAod"    # Z
    .param p2, "filename"    # Ljava/lang/String;

    .line 45
    const-string v0, "DualAODScreenStateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeAodNode isAod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", filename : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/16 v0, 0x17

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, "aodMode":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .local v3, "br":Ljava/io/BufferedReader;
    nop

    .line 50
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 52
    if-eqz v4, :cond_0

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v5

    .line 55
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v1, v3}, Lcn/nubia/server/DualAODScreenStateHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    .end local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 55
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    move-object v5, v1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_0
    :try_start_4
    invoke-static {v5, v3}, Lcn/nubia/server/DualAODScreenStateHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 55
    .end local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DualAODScreenStateHelper"

    const-string v5, "Read aod node exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    if-ne v2, v0, :cond_1

    .line 61
    return-void

    .line 66
    .end local v2    # "aodMode":I
    :cond_1
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 65
    .local v2, "bw":Ljava/io/BufferedWriter;
    nop

    .line 67
    if-eqz p1, :cond_2

    const/16 v0, 0x18

    nop

    :cond_2
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 69
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 70
    :try_start_7
    invoke-static {v1, v2}, Lcn/nubia/server/DualAODScreenStateHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 73
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 70
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 65
    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 70
    :goto_2
    :try_start_9
    invoke-static {v1, v2}, Lcn/nubia/server/DualAODScreenStateHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 70
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualAODScreenStateHelper"

    const-string v2, "Write aod node exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public getPowerStateForAOD(II)I
    .locals 4
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 77
    const-string v0, "DualAODScreenStateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isLightEffectOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    if-ne v0, p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/DualAODScreenStateHelper;->checkAODSwitch(I)Z

    move-result v1

    .line 82
    .local v1, "isTurnOn":Z
    if-nez v1, :cond_2

    .line 83
    return v0

    .line 85
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/server/DualAODScreenStateHelper;->checkAODStartNow(I)Z

    move-result v2

    .line 86
    .local v2, "isStartNow":Z
    if-nez v2, :cond_3

    .line 87
    return v0

    .line 89
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/DualAODScreenStateHelper;->checkCloseLowPower()Z

    move-result v3

    .line 90
    .local v3, "isClose":Z
    if-eqz v3, :cond_4

    .line 91
    return v0

    .line 93
    :cond_4
    return p2
.end method

.method public writeScreenOffAodNode(I)V
    .locals 2
    .param p1, "device"    # I

    .line 32
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    const-string v1, "/sys/kernel/lcd_enhance/aod_mode"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/DualAODScreenStateHelper;->writeAodNode(ZLjava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 37
    const-string v1, "/sys/kernel/lcd_enhance/sec_aod_mode"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/DualAODScreenStateHelper;->writeAodNode(ZLjava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
