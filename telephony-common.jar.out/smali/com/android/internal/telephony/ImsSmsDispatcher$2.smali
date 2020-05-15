.class Lcom/android/internal/telephony/ImsSmsDispatcher$2;
.super Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
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

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 3
    .param p1, "config"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$202(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
