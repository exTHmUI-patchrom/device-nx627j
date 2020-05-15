.class Lcom/android/internal/telephony/ImsSmsDispatcher$1;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
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

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 100
    const-string v0, "ImsSmsDispacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "imsRadioTech"    # I

    .line 83
    const-string v0, "ImsSmsDispacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsConnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRegistering(I)V
    .locals 3
    .param p1, "imsRadioTech"    # I

    .line 92
    const-string v0, "ImsSmsDispacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
