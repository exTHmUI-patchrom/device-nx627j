.class Landroid/app/VrManager$CallbackEntry$2;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager$CallbackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VrManager$CallbackEntry;


# direct methods
.method constructor <init>(Landroid/app/VrManager$CallbackEntry;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/VrManager$CallbackEntry;

    .line 36
    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry$2;->this$0:Landroid/app/VrManager$CallbackEntry;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPersistentVrStateChanged$0(Landroid/app/VrManager$CallbackEntry$2;Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 39
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2;->this$0:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    invoke-virtual {v0, p1}, Landroid/app/VrStateCallback;->onPersistentVrStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 39
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2;->this$0:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;

    invoke-direct {v1, p0, p1}, Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;-><init>(Landroid/app/VrManager$CallbackEntry$2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
