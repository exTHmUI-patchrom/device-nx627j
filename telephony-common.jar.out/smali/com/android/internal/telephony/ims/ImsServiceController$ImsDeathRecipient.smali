.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsDeathRecipient"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ims/ImsServiceController;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    .line 72
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 76
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") died. Restarting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$002(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$102(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$200(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$300(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$400(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 84
    return-void

    .line 80
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
