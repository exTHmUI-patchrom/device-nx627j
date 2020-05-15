.class Lcom/android/internal/telephony/ImsSmsDispatcher$4;
.super Ljava/lang/Object;
.source "ImsSmsDispatcher.java"

# interfaces
.implements Lcom/android/ims/ImsManager$Connector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionReady(Lcom/android/ims/ImsManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/ims/ImsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 230
    const-string v0, "ImsSmsDispacher"

    const-string v1, "ImsManager: connection ready."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$500(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$602(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectionUnavailable()V
    .locals 3

    .line 239
    const-string v0, "ImsSmsDispacher"

    const-string v1, "ImsManager: connection unavailable."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$602(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
