.class Landroid/view/ViewRootImpl$1;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->createRenderThread(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_RenderThreadInfoFile:Ljava/io/File;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .line 1205
    iput-object p2, p0, Landroid/view/ViewRootImpl$1;->val$_RenderThreadInfoFile:Ljava/io/File;

    iput-object p3, p0, Landroid/view/ViewRootImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1207
    invoke-static {}, Landroid/view/ViewRootImpl;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1208
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl$1;->val$_RenderThreadInfoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 1209
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Landroid/view/ViewRootImpl$1;->val$_RenderThreadInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1211
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "lineIn":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1212
    new-instance v3, Landroid/view/ViewRootImpl$RenderThreadRecord;

    invoke-direct {v3}, Landroid/view/ViewRootImpl$RenderThreadRecord;-><init>()V

    .line 1213
    .local v3, "record":Landroid/view/ViewRootImpl$RenderThreadRecord;
    iput-object v4, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    .line 1214
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    .line 1215
    sget-object v5, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    .line 1219
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1215
    return-void

    .line 1216
    :cond_0
    :try_start_5
    iget-object v5, p0, Landroid/view/ViewRootImpl$1;->val$context:Landroid/content/Context;

    iget-boolean v6, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    iget-object v7, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v5

    iput-object v5, v3, Landroid/view/ViewRootImpl$RenderThreadRecord;->renderThread:Landroid/view/ThreadedRenderer;

    .line 1217
    sget-object v5, Landroid/view/ViewRootImpl;->preCreatedRenderThreads:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1218
    .end local v3    # "record":Landroid/view/ViewRootImpl$RenderThreadRecord;
    goto :goto_0

    .line 1219
    .end local v4    # "lineIn":Ljava/lang/String;
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1209
    :catch_0
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1219
    :goto_1
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_9
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 1221
    :cond_3
    :goto_3
    :try_start_a
    monitor-exit v0

    .line 1222
    return-void

    .line 1221
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method
