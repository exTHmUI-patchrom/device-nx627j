.class Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;
.super Landroid/os/AsyncTask;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 2683
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    .line 2688
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 2689
    .local v1, "param":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iget-object v2, v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2690
    .local v2, "remoteIpAddress":Ljava/lang/String;
    iget-boolean v3, v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 2693
    .local v3, "enable":Z
    const/4 v4, 0x0

    .line 2695
    .local v4, "macAddress":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2698
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/net/arp"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 2701
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 2703
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_2

    .line 2704
    const-string v7, "[ ]+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2705
    .local v7, "tokens":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x6

    if-ge v8, v9, :cond_0

    .line 2706
    goto :goto_0

    .line 2711
    :cond_0
    aget-object v8, v7, v0

    .line 2712
    .local v8, "ip":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v7, v9

    .line 2714
    .local v9, "mac":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2715
    move-object v4, v9

    .line 2716
    goto :goto_1

    .line 2718
    .end local v7    # "tokens":[Ljava/lang/String;
    .end local v8    # "ip":Ljava/lang/String;
    .end local v9    # "mac":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2720
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 2721
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Did not find remoteAddress {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "} in /proc/net/arp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2724
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v7, v4, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2733
    .end local v6    # "line":Ljava/lang/String;
    :goto_2
    nop

    .line 2734
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2737
    :catch_0
    move-exception v6

    .line 2740
    goto :goto_4

    .line 2739
    :cond_4
    :goto_3
    goto :goto_4

    .line 2732
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2729
    :catch_1
    move-exception v6

    .line 2730
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "WifiService"

    const-string v8, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2733
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_4

    .line 2734
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 2727
    :catch_2
    move-exception v6

    .line 2728
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v7, "WifiService"

    const-string v8, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2733
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_4

    .line 2734
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 2742
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2732
    :goto_5
    nop

    .line 2733
    if-eqz v5, :cond_5

    .line 2734
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 2737
    :catch_3
    move-exception v6

    nop

    .line 2739
    :cond_5
    :goto_6
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2683
    check-cast p1, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->doInBackground([Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
