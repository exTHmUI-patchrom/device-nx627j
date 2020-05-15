.class Lnubia/twolevel/RenderThreadAdjustor$1;
.super Landroid/os/Handler;
.source "RenderThreadAdjustor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/twolevel/RenderThreadAdjustor;->createRenderThread(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/twolevel/RenderThreadAdjustor;

.field final synthetic val$_RenderThreadInfoFile:Ljava/io/File;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnubia/twolevel/RenderThreadAdjustor;Landroid/os/Looper;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/twolevel/RenderThreadAdjustor;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 126
    iput-object p1, p0, Lnubia/twolevel/RenderThreadAdjustor$1;->this$0:Lnubia/twolevel/RenderThreadAdjustor;

    iput-object p3, p0, Lnubia/twolevel/RenderThreadAdjustor$1;->val$_RenderThreadInfoFile:Ljava/io/File;

    iput-object p4, p0, Lnubia/twolevel/RenderThreadAdjustor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 128
    sget-object v0, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnubia/twolevel/RenderThreadAdjustor$1;->val$_RenderThreadInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lnubia/twolevel/RenderThreadAdjustor$1;->val$_RenderThreadInfoFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 131
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "lineIn":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 132
    new-instance v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;

    invoke-direct {v2}, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;-><init>()V

    .line 133
    .local v2, "record":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    iput-object v3, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->isTranslucent:Z

    .line 135
    sget-object v4, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 139
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    return-void

    .line 136
    :cond_0
    :try_start_3
    iget-object v4, p0, Lnubia/twolevel/RenderThreadAdjustor$1;->val$context:Landroid/content/Context;

    iget-boolean v5, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->isTranslucent:Z

    iget-object v6, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v4

    iput-object v4, v2, Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;->renderThread:Landroid/view/ThreadedRenderer;

    .line 137
    sget-object v4, Lnubia/twolevel/RenderThreadAdjustor;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v2    # "record":Lnubia/twolevel/RenderThreadAdjustor$RenderThreadRecord;
    goto :goto_0

    .line 139
    .end local v3    # "lineIn":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 140
    .end local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 139
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :goto_1
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 142
    :cond_3
    :goto_3
    return-void
.end method
