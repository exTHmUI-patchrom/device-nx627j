.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 865
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 868
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 870
    const/4 v0, 0x0

    move-object v1, v0

    .line 872
    .local v1, "filename":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-static {v3, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 873
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$9;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-static {v0, v3, v4}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ShutdownThread"

    const-string v4, "Error uncrypting file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 878
    return-void
.end method
