.class Landroid/app/UiAutomationConnection$1;
.super Ljava/lang/Object;
.source "UiAutomationConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/UiAutomationConnection;

.field final synthetic val$process:Ljava/lang/Process;

.field final synthetic val$readFromProcess:Ljava/lang/Thread;

.field final synthetic val$sink:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$source:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$writeToProcess:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Landroid/app/UiAutomationConnection;Ljava/lang/Thread;Ljava/lang/Thread;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/Process;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/UiAutomationConnection;

    .line 347
    iput-object p1, p0, Landroid/app/UiAutomationConnection$1;->this$0:Landroid/app/UiAutomationConnection;

    iput-object p2, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    iput-object p3, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    iput-object p4, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Landroid/app/UiAutomationConnection$1;->val$source:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Landroid/app/UiAutomationConnection$1;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_1
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "exc":Ljava/lang/InterruptedException;
    const-string v1, "UiAutomationConnection"

    const-string v2, "At least one of the threads was interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "exc":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 361
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$source:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 362
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 363
    return-void
.end method
