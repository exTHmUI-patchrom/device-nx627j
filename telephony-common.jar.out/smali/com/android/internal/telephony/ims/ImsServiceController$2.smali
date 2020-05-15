.class Lcom/android/internal/telephony/ims/ImsServiceController$2;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 295
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$100(Lcom/android/internal/telephony/ims/ImsServiceController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    monitor-exit v0

    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$800(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/HashSet;)Z

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
