.class Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PerfDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/PerfDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateConfigurationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cpuperf/PerfDataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/cpuperf/PerfDataManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->this$0:Lcom/android/server/cpuperf/PerfDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cpuperf/PerfDataManager;Lcom/android/server/cpuperf/PerfDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/cpuperf/PerfDataManager;
    .param p2, "x1"    # Lcom/android/server/cpuperf/PerfDataManager$1;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;-><init>(Lcom/android/server/cpuperf/PerfDataManager;)V

    return-void
.end method

.method private updateResult(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uriString"    # Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "updateResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "deleteFile"

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 130
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->this$0:Lcom/android/server/cpuperf/PerfDataManager;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerfDataManager;->access$100(Lcom/android/server/cpuperf/PerfDataManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->this$0:Lcom/android/server/cpuperf/PerfDataManager;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerfDataManager;->access$200(Lcom/android/server/cpuperf/PerfDataManager;)Lcom/android/server/BSPApplicationManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BSPApplicationManagerService;->reloadPreformanceConfiguration()V

    .line 87
    const-string v0, "PerfDataManager"

    const-string/jumbo v2, "we are going to upgrade the preformance configuration!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->this$0:Lcom/android/server/cpuperf/PerfDataManager;

    invoke-static {v0, v1}, Lcom/android/server/cpuperf/PerfDataManager;->access$102(Lcom/android/server/cpuperf/PerfDataManager;Z)Z

    .line 90
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 95
    .local v2, "inputData":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 96
    .local v3, "outputData":Ljava/io/BufferedOutputStream;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 97
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "uri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "uriString":Ljava/lang/String;
    :try_start_0
    const-string v6, "PerfDataManager"

    const-string/jumbo v7, "start to copy the configuration of performance XML!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    move-object v0, v6

    .line 101
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v6

    .line 102
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/android/server/cpuperf/PerfDataManager;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v6

    .line 104
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 105
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v2, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    move v8, v7

    .line 105
    .local v8, "readLen":I
    if-lez v7, :cond_2

    .line 106
    invoke-virtual {v3, v6, v1, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 109
    iget-object v1, p0, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->this$0:Lcom/android/server/cpuperf/PerfDataManager;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerfDataManager;->access$400(Lcom/android/server/cpuperf/PerfDataManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->this$0:Lcom/android/server/cpuperf/PerfDataManager;

    const/4 v7, 0x1

    invoke-static {v1, v7}, Lcom/android/server/cpuperf/PerfDataManager;->access$102(Lcom/android/server/cpuperf/PerfDataManager;Z)Z

    .line 112
    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;->updateResult(Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v6    # "buffer":[B
    .end local v8    # "readLen":I
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 113
    :catch_2
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v3}, Lcom/android/server/cpuperf/PerfDataManager;->access$500(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v2}, Lcom/android/server/cpuperf/PerfDataManager;->access$500(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v0}, Lcom/android/server/cpuperf/PerfDataManager;->access$500(Ljava/io/Closeable;)V

    .line 123
    nop

    .line 124
    return-void

    .line 120
    :goto_2
    invoke-static {v3}, Lcom/android/server/cpuperf/PerfDataManager;->access$500(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v2}, Lcom/android/server/cpuperf/PerfDataManager;->access$500(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v0}, Lcom/android/server/cpuperf/PerfDataManager;->access$500(Ljava/io/Closeable;)V

    throw v1
.end method
